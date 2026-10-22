#!/usr/bin/env python3
"""Small controls for the producer/facet boundary, through the real catalog."""
import json, subprocess, sys, tempfile
from pathlib import Path
from catalog import units, declaration

cases = {
    'base': 'fn f(a: f32) -> f32 { return sin(a) + 1.0; }',
    'rename': 'fn f(b: f32) -> f32 { return sin(b) + 1.0; }',
    'constant': 'fn f(a: f32) -> f32 { return sin(a) + 2.0; }',
    'operator': 'fn f(a: f32) -> f32 { return sin(a) * 1.0; }',
    'callee': 'fn f(a: f32) -> f32 { return cos(a) + 1.0; }',
}
with tempfile.TemporaryDirectory(prefix='wgsl-catalog-controls-') as temporary:
    root=Path(temporary);decl=root/'declaration.json';decl.write_text(json.dumps(declaration()))
    command=[sys.argv[1], '--corpus',str(root/'corpus'),'--json']
    for name,source in cases.items():
        bundle=root/name;bundle.mkdir();(bundle/'shader.wgsl').write_text(source)
        (bundle/'manifest.json').write_text(json.dumps({'passes':[{'source_entry':'control','shader':'shader.wgsl'}]}))
        records=bundle/'units.jsonl';records.write_text('\n'.join(json.dumps(x) for x in units(bundle))+'\n')
        subprocess.run(command+['add','--declaration',str(decl),'--world',name,str(records)],check=True,stdout=subprocess.DEVNULL)
    observations={}
    for name in ['rename','constant','operator','callee']:
        rows=json.loads(subprocess.check_output(command+['overlap','--unit','wgsl-function','--mode','shape','--facet','names-blind','base',name],text=True))
        observations[name]=bool(rows)
    assert observations=={'rename':True,'constant':False,'operator':False,'callee':False},observations
    strict=json.loads(subprocess.check_output(command+['overlap','--unit','wgsl-function','--mode','shape','--facet','all','base','rename'],text=True))
    assert not strict
    print(json.dumps({'namesBlindControls':observations,'strictDetectsRename':True,'semanticEquivalenceClaimed':False}))
