#!/usr/bin/env python3
"""Export WGSL function token sequences to riff-catalog, not a semantic proof.

Formatting/comments are ignored. Names-blind comparison erases identifier
spellings, including local binding relationships; a match is a review candidate,
not alpha-equivalence or behavior equivalence. Call spellings are retained as
structure and mapped back through optimizer name maps when available.
"""
import argparse, hashlib, json, re
from pathlib import Path

RECIPE = 'wgsl-function-tokens/1'
KEYWORDS = set('fn var let const if else switch case default loop continuing break continue for while return discard enable requires diagnostic struct alias override true false'.split())
TYPES = set('bool i32 u32 f16 f32 f64 abstract_int abstract_float vec2 vec3 vec4 mat2x2 mat2x3 mat2x4 mat3x2 mat3x3 mat3x4 mat4x2 mat4x3 mat4x4 array atomic ptr sampler sampler_comparison'.split())
TOKEN = re.compile(r'(?P<space>\s+)|(?P<comment>//[^\n]*|/\*[\s\S]*?\*/)|(?P<number>(?:0[xX][0-9a-fA-F]+(?:\.[0-9a-fA-F]*)?(?:[pP][+-]?\d+)?|(?:\d+\.\d*|\.\d+|\d+)(?:[eE][+-]?\d+)?)[uihf]?)|(?P<id>[A-Za-z_]\w*)|(?P<op>->|<<=|>>=|&&|\|\||==|!=|<=|>=|<<|>>|\+\+|--|\+=|-=|\*=|/=|%=|&=|\|=|\^=|[{}()\[\]<>:;,.@=+*/%&|^!~?-])')

def lex(source):
    tokens=[];offset=0
    while offset<len(source):
        match=TOKEN.match(source,offset)
        if not match:raise ValueError(f'Unrecognized WGSL at byte {offset}: {source[offset:offset+20]!r}')
        if match.lastgroup not in ('space','comment'):tokens.append((match.lastgroup,match[0]))
        offset=match.end()
    return tokens

def declaration():
    def field(name,dimension):return {'name':name,'dimensions':[dimension],'value':'text','occurs':'one'}
    kinds=[{'kind':'wgsl.function','fields':[field('name','names')]}]
    for dimension in ['structure','names','constants','types']:
        kinds.append({'kind':'wgsl.'+dimension,'fields':[field('value',dimension)]})
    return {'recipe':RECIPE,'roots':['wgsl.function'],'single_root':True,'kinds':kinds,
        'children':[{'parents':['wgsl.function'],'label':'tokens','children':[k['kind'] for k in kinds[1:]],'shape':'seq'}],
        'edges':[],'acyclic':'children','keys':'owner=pass:function, local=token ordinal; lexical sequence only'}

def units(bundle, receipts=None):
    manifest=json.loads((bundle/'manifest.json').read_text());report={};provenance=[]
    if receipts:
        data=json.loads(receipts.read_text());report={x['entry']:x for x in data['reports']}
    for shader in manifest['passes']:
        raw=(bundle/shader['shader']).read_bytes();source=raw.decode();tokens=lex(source)
        names=(report.get(shader['source_entry'],{}).get('nameMap') or {}).get('functions',{})
        reverse={v:k for k,v in names.items()};i=0;count=0
        while i<len(tokens):
            if tokens[i][1]!='fn':i+=1;continue
            start=i;name=tokens[i+1][1];i+=2
            while tokens[i][1]!='{':i+=1
            depth=1;i+=1
            while depth:
                if tokens[i][1]=='{':depth+=1
                if tokens[i][1]=='}':depth-=1
                i+=1
            function=reverse.get(name,name);owner=shader['source_entry']+':'+function
            def key(local):return {'entity':{'kind':'wgsl.node','owner':owner,'local':local}}
            root=key('root');nodes=[[root,{'key':root,'kind':'wgsl.function','fields':[{'dimension':'names','name':'name','value':{'kind':'text','value':function}}]}]];children=[]
            for ordinal,(kind,text) in enumerate(tokens[start:i]):
                next_token=tokens[start+ordinal+1][1] if start+ordinal+1<i else ''
                if kind=='number' or text in ('true','false'):dimension='constants'
                elif text in TYPES:dimension='types'
                elif kind=='id' and text not in KEYWORDS and next_token=='(' and ordinal!=1:
                    dimension='structure';text='call:'+reverse.get(text,text)
                elif kind=='id' and text not in KEYWORDS:dimension='names'
                else:dimension='structure'
                child=key(str(ordinal));nodes.append([child,{'key':child,'kind':'wgsl.'+dimension,'fields':[{'dimension':dimension,'name':'value','value':{'kind':'text','value':text}}]}]);children.append({'parent':root,'label':'tokens','ordinal':ordinal,'child':child})
            yield {'recipe':RECIPE,'population':'wgsl-function','name':owner,'graph':{'graph_key':{'owner':{'kind':'wgsl.function','owner':owner,'local':'function'},'local':'function'},'nodes':nodes,'children':children,'edges':[]}}
            count+=1
        provenance.append({'entry':shader['source_entry'],'sha256':hashlib.sha256(raw).hexdigest(),'bytes':len(raw),'functions':count})
    return provenance

def main():
    parser=argparse.ArgumentParser(description=__doc__);parser.add_argument('bundle',type=Path);parser.add_argument('out',type=Path);parser.add_argument('--optimizer-report',type=Path);args=parser.parse_args();args.out.mkdir()
    (args.out/'declaration.json').write_text(json.dumps(declaration(),indent=2)+'\n')
    generator=units(args.bundle,args.optimizer_report);count=0
    with (args.out/'units.jsonl').open('w') as output:
        while True:
            try:unit=next(generator)
            except StopIteration as done:provenance=done.value;break
            output.write(json.dumps(unit,separators=(',',':'))+'\n');count+=1
    (args.out/'provenance.json').write_text(json.dumps({'recipe':RECIPE,'bundle':str(args.bundle.resolve()),'units':count,'passes':provenance,'limitation':__doc__},indent=2)+'\n');print(json.dumps({'units':count,'output':str(args.out)}))
if __name__=='__main__':main()
