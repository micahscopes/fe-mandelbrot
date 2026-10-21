#!/usr/bin/env python3
"""Regression: a changed shader must also change its manifest/Wasm/runtime URLs."""
import json,re,shutil,subprocess,sys,tempfile
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'tools'))
from build import artifact_hashes


def assemble(artifacts,out):
    subprocess.run([sys.executable,str(ROOT/'tools/site.py'),'--artifacts',str(artifacts),'--out',str(out)],check=True,capture_output=True)
    html=(out/'index.html').read_text()
    manifest=re.search(r'manifest="([^"]+)"',html)[1]
    runtime=re.search(r"import '([^']+)'",html)[1]
    assert Path(manifest).parent==Path(runtime).parent
    data=json.loads((out/manifest).read_text())
    dependencies=[runtime,str(Path(manifest).parent/data['artifacts']['wasm'])]
    dependencies += [str(Path(manifest).parent/p['shader']) for p in data['passes']]
    assert all((out/p).is_file() for p in dependencies)
    return manifest,dependencies


def viewer_source_urls(out):
    html=(out/'viewer/index.html').read_text()
    links=re.findall(r'href="([^"]+/source/[^"]+\.view)"',html)
    assert links,'Source links must include their release namespace'
    urls=[str(Path('viewer')/p) for p in links]
    urls += [p.removesuffix('.view') for p in urls]
    assert all((out/p).is_file() for p in urls)
    return urls


with tempfile.TemporaryDirectory(prefix='site-cache-',dir='/lab/argot/scratch') as temporary:
    scratch=Path(temporary)
    original=ROOT/'artifacts'
    first,first_deps=assemble(original,scratch/'first')
    repeated,_=assemble(original,scratch/'repeated')
    assert first==repeated,'Identical bundles should retain stable URLs'
    first_sources=viewer_source_urls(scratch/'first')
    assert first_sources==viewer_source_urls(scratch/'repeated')
    altered=scratch/'altered';shutil.copytree(original,altered)
    manifest_path=altered/'renderer/manifest.json'
    manifest=json.loads(manifest_path.read_text())
    shader=manifest['passes'][0]
    shader_path=altered/'renderer'/shader['shader']
    # A harmless source change stands in for a new compiler-produced bundle.
    shader_path.write_bytes(shader_path.read_bytes()+b'\n')
    shader['shader_bytes']+=1
    manifest_path.write_text(json.dumps(manifest,indent=2)+'\n')
    # A changed semantic class must invalidate the complete source bundle,
    # even when the raw source bytes and their lengths remain unchanged.
    semantic=altered/'highlighted/lib.fe.view'
    data=bytearray(semantic.read_bytes())
    kinds_start=data.index(10,data.index(10)+1)+1
    data[kinds_start]=49 if data[kinds_start]!=49 else 48
    semantic.write_bytes(data)
    info_path=altered/'build-info.json';info=json.loads(info_path.read_text())
    info['files']=artifact_hashes(altered)
    info_path.write_text(json.dumps(info,indent=2)+'\n')
    second,second_deps=assemble(altered,scratch/'second')
    assert first!=second,'Changed shader must change the bundle URL'
    assert not set(first_deps)&set(second_deps),'No render dependency may reuse a URL across differing bundles'
    second_sources=viewer_source_urls(scratch/'second')
    assert not set(first_sources)&set(second_sources),'Source and semantic ranges must not reuse stale URLs'
    for relative in second_deps:
        source=Path('renderer')/Path(relative).relative_to(Path(second).parent)
        assert (scratch/'second'/relative).read_bytes()==(altered/source).read_bytes()
    print(json.dumps({'stableIdenticalBuild':True,'disjointChangedBundleUrls':True,'disjointSourceUrls':True,'exactAssets':True,'dependencies':len(second_deps),'sourceFiles':len(second_sources)}))
