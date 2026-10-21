#!/usr/bin/env python3
"""Compile Fe source, then optionally record the reviewed distribution assets."""
import argparse,hashlib,json,os,shutil,subprocess
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
def source_hash():
    files=[ROOT/'tools/build.py',ROOT/'tools/bootstrap.py',ROOT/'tools/source_catalog.py',ROOT/'fe.toml',ROOT/'toolchain.lock.json',ROOT/'web/source.html',*sorted((ROOT/'toolchain/patches').glob('*.patch'))]
    files+=sorted(p for p in (ROOT/'web/proof').rglob('*') if p.is_file())
    files+=sorted(p for base in ['app','lib'] for p in (ROOT/base).rglob('*') if p.is_file() and p.suffix in ['.fe','.toml'])
    digest=hashlib.sha256()
    for p in files:digest.update(p.relative_to(ROOT).as_posix().encode()+b'\0'+p.read_bytes()+b'\0')
    return digest.hexdigest()
def artifact_hashes(directory):return{p.relative_to(directory).as_posix():hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(directory.rglob('*')) if p.is_file() and p.name!='build-info.json'}
def patch_runtime(directory):
    # Mirror generic runtime-only source patches for an older compatible
    # compiler. Preserve the compiler-injected host-runtime prelude.
    for name in ['control-parts.patch', 'wasm-rgba.patch', 'active-pipeline-preparation.patch', 'live-startup.patch']:
        patch=ROOT/'toolchain/patches'/name
        command=['patch','--batch','--no-backup-if-mismatch','-p5','-d',str(directory),'-i',str(patch)]
        reverse=subprocess.run([*command,'--force','--reverse','--dry-run'],capture_output=True)
        if reverse.returncode:
            subprocess.run([*command,'--forward'],check=True)
if __name__=='__main__':
    parser=argparse.ArgumentParser();parser.add_argument('--fe',default=os.environ.get('FE_BINARY'));parser.add_argument('--out',required=True);parser.add_argument('--record',action='store_true');args=parser.parse_args()
    if not args.fe:raise SystemExit('Run tools/bootstrap.py, then pass --fe /path/to/fe')
    out=Path(args.out).resolve();out.mkdir(parents=True,exist_ok=False)
    subprocess.run([args.fe,'web','build',str(ROOT/'app/renderer'),'--out',str(out/'renderer')],cwd=ROOT,check=True)
    subprocess.run([args.fe,'web','build',str(ROOT/'app/color_demo'),'--out',str(out/'colors')],cwd=ROOT,check=True)
    subprocess.run([args.fe,'web','precompile',str(ROOT/'web/source.html'),'--out',str(out/'viewer')],cwd=ROOT,check=True)
    proof=out/'proof'
    shutil.copytree(ROOT/'web/proof',proof)
    subprocess.run([args.fe,'web','build',str(ROOT/'app/point_prover'),'--out',str(proof/'engine')],cwd=ROOT,check=True)
    subprocess.run([args.fe,'web','build',str(ROOT/'app/proof_checker'),'--entry','wasm_anchor','--mode','render','--canonical','required','--canonical-entry','preflight','--canonical-entry','check','--out',str(proof/'checker')],cwd=ROOT,check=True)
    proof_manifest=proof/'engine/manifest.json'
    manifest=json.loads(proof_manifest.read_text())
    next(resource for resource in manifest['resources'] if resource['name']=='proof')['buffer_usage']=['storage','copy_src']
    proof_manifest.write_text(json.dumps(manifest,indent=2)+'\n')
    from source_catalog import generate
    generate(Path(args.fe).resolve(),ROOT,out)
    for name in ['renderer','colors','proof/engine']:patch_runtime(out/name)
    runtime=(out/'renderer/fe-render-runtime.js').read_text()
    assert 'control-${param.name}' in runtime,'Runtime lacks generic control styling parts'
    manifest={'sourceHash':source_hash(),'toolchain':json.loads((ROOT/'toolchain.lock.json').read_text()),'files':artifact_hashes(out)}
    (out/'build-info.json').write_text(json.dumps(manifest,indent=2)+'\n')
    if args.record:
        dest=ROOT/'artifacts'
        if dest.exists():shutil.rmtree(dest)
        shutil.copytree(out,dest)
    print(out)
