"""Package the compiler's existing SCIP JSON export for the Fe source viewer."""
import json,subprocess
from pathlib import Path
SOURCES={**{name:('app/renderer',f'src/{name}') for name in ['lib.fe','policy.fe','orbit.fe','image.fe','cache.fe','palette.fe','partition.fe']},
    'color_library.fe':('lib/perceptual_color','src/lib.fe'),
    'color_demo.fe':('app/color_demo','src/lib.fe'),
    'viewer.fe':('app/source_viewer','src/lib.fe'),
    'viewer_highlight.fe':('app/source_viewer','src/highlight.fe')}
def semantic_kind(symbol,info):
    kind=info.get('kind',0)
    if kind in {3,7,11,21,49,53,54,55,62,86} or symbol.endswith('#'):return 1
    if kind in {9,17,18,26,40,66,72,74}:return 2
    if kind in {8,12,15}:return 3
    return 4

def generate(fe,root,out):
    indexes=out/'indexes';indexes.mkdir()
    documents={};symbols={}
    for ingot in dict.fromkeys(ingot for ingot,_ in SOURCES.values()):
        dest=indexes/Path(ingot).name
        subprocess.run([str(fe),'doc',str(root/ingot),'--output',str(dest),'json'],cwd=root,check=True)
        data=json.loads((dest/'docs.json').read_text())['scip']
        documents[ingot]=data['files'];symbols.update(data['symbols'])
    packed=out/'highlighted';packed.mkdir();receipt={}
    for alias,(ingot,path) in SOURCES.items():
        source=(root/ingot/path).read_bytes();tags=bytearray(b'0'*len(source))
        lines=source.splitlines(keepends=True);offsets=[];offset=0
        for line in lines:offsets.append(offset);offset+=len(line)
        occurrences=documents[ingot].get(path,[]);applied=0
        for occurrence in occurrences:
            row,start,end=occurrence['line'],occurrence['cs'],occurrence['ce']
            if not (0<=row<len(lines) and 0<=start<end<=len(lines[row])):continue
            start+=offsets[row];end+=offsets[row]
            kind=semantic_kind(occurrence['sym'],symbols.get(occurrence['sym'],{}))
            tags[start:end]=bytes([48+kind])*(end-start);applied+=1
        assert applied>0,f'No compiler SCIP occurrences for {ingot}/{path}'
        (packed/(alias+'.view')).write_bytes(b'FEH1\n'+str(len(source)).encode()+b'\n'+tags+b'\n'+source)
        receipt[alias]={'bytes':len(source),'semanticOccurrences':applied}
    (out/'highlight-info.json').write_text(json.dumps({'source':'fe doc json SCIP export','files':receipt},indent=2)+'\n')
