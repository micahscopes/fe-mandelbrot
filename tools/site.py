#!/usr/bin/env python3
"""Validate compiled assets and assemble a path-independent static Pages site."""
import argparse,hashlib,json,shutil
from pathlib import Path
from build import ROOT,source_hash,artifact_hashes


def render_assets(artifacts, name, out, hashes):
    # A render bundle's buffers, shaders, Wasm and adapter form one ABI.
    # Namespace the entire set, so independently cached files from different
    # releases can never occupy the same URL.
    files={path:digest for path,digest in hashes.items() if path.startswith(name+'/')}
    identity=hashlib.sha256(json.dumps(files,sort_keys=True).encode()).hexdigest()[:24]
    relative=Path(name)/identity
    shutil.copytree(artifacts/name,out/relative,dirs_exist_ok=True)
    return relative.as_posix()


def viewer_sources(artifacts, out, info):
    # The displayed source and its semantic ranges must identify the same
    # release, just as the render bundle does. Stable source URLs can otherwise
    # keep showing a cached previous revision after the demo has changed.
    highlighted={path:digest for path,digest in info['files'].items() if path.startswith('highlighted/')}
    identity=hashlib.sha256(json.dumps({'source':info['sourceHash'],'highlighted':highlighted},sort_keys=True).encode()).hexdigest()[:24]
    source=out/'viewer'/identity/'source'
    source.mkdir(parents=True,exist_ok=True)
    from source_catalog import SOURCES
    for alias,(ingot,path) in SOURCES.items():shutil.copy2(ROOT/ingot/path,source/alias)
    shutil.copytree(artifacts/'highlighted',source,dirs_exist_ok=True)
    index=out/'viewer/index.html'
    index.write_text(index.read_text().replace('href="source/',f'href="{identity}/source/'))


if __name__=='__main__':
    parser=argparse.ArgumentParser();parser.add_argument('--out',required=True);parser.add_argument('--artifacts',default=str(ROOT/'artifacts'));parser.add_argument('--proof-artifacts',help='output of tools/proof-build.py');args=parser.parse_args()
    artifacts=Path(args.artifacts).resolve();info=json.loads((artifacts/'build-info.json').read_text())
    assert info['sourceHash']==source_hash(),'Fe sources changed; regenerate the compiled assets with tools/build.py --record'
    assert info['files']==artifact_hashes(artifacts),'Compiled assets do not match their recorded hashes'
    out=Path(args.out).resolve();out.mkdir(parents=True,exist_ok=True)
    renderer=render_assets(artifacts,'renderer',out,info['files'])
    colors=render_assets(artifacts,'colors',out,info['files'])
    shutil.copytree(artifacts/'viewer',out/'viewer',dirs_exist_ok=True)
    style=ROOT/'web/style.css'
    style_version=hashlib.sha256(style.read_bytes()).hexdigest()[:16]
    index=(ROOT/'web/index.html').read_text().replace('renderer/',renderer+'/')
    index=index.replace('href="style.css"',f'href="style.css?v={style_version}"')
    (out/'index.html').write_text(index)
    shutil.copy2(style,out/'style.css')
    if args.proof_artifacts:
        proof=Path(args.proof_artifacts).resolve();metadata=json.loads((proof/'proof-build-info.json').read_text())
        assert metadata['profile']=='viewer-capacity-q12-v1','Unsupported proof profile'
        for name,expected in metadata['files'].items():
            assert hashlib.sha256((proof/name).read_bytes()).hexdigest()==expected,f'Proof artifact changed: {name}'
        for name,expected in metadata['checkerSources'].items():
            assert hashlib.sha256((ROOT/name).read_bytes()).hexdigest()==expected,f'Checker source changed: {name}'
        host={str(p.relative_to(ROOT/'web/proof')):hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted((ROOT/'web/proof').rglob('*')) if p.is_file()}
        identity=hashlib.sha256(json.dumps({'host':host,'artifacts':metadata['files']},sort_keys=True).encode()).hexdigest()[:24]
        dest=out/'proof'/identity
        shutil.copytree(ROOT/'web/proof',dest,dirs_exist_ok=True)
        shutil.copytree(proof,dest,dirs_exist_ok=True)
        index=out/'index.html'
        index.write_text(index.read_text().replace('src="proof/integration.mjs"',f'src="proof/{identity}/integration.mjs"'))
    else:
        index=out/'index.html'
        index.write_text(index.read_text().replace('<button id="proof-open"','<button hidden id="proof-open"').replace('<script type="module" src="proof/integration.mjs"></script>',''))
    viewer_sources(artifacts,out,info)
    color_index=(ROOT/'web/colors.html').read_text()
    color_index=color_index.replace('manifest="manifest.json"',f'manifest="{Path(colors).name}/manifest.json"')
    color_index=color_index.replace("import './fe-render-runtime.js'",f"import './{Path(colors).name}/fe-render-runtime.js'")
    (out/'colors/index.html').write_text(color_index)
    color_source=out/'colors/source';color_source.mkdir(exist_ok=True)
    shutil.copy2(ROOT/'lib/perceptual_color/src/lib.fe',color_source/'lib.fe')
    shutil.copy2(ROOT/'app/color_demo/src/lib.fe',color_source/'demo.fe')
    shutil.copy2(artifacts/'build-info.json',out/'build-info.json');(out/'.nojekyll').touch()
    print(out)
