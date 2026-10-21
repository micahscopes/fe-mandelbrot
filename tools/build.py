#!/usr/bin/env python3
"""Compile Fe source, then optionally record the reviewed distribution assets."""
import argparse,hashlib,json,os,shutil,subprocess
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
def source_hash():
    files=[ROOT/'tools/build.py',ROOT/'tools/bootstrap.py',ROOT/'tools/source_catalog.py',ROOT/'fe.toml',ROOT/'toolchain.lock.json',ROOT/'web/source.html',*sorted((ROOT/'toolchain/patches').glob('*.patch'))]
    files+=sorted(p for base in ['app','lib'] for p in (ROOT/base).rglob('*') if p.is_file() and p.suffix in ['.fe','.toml'])
    digest=hashlib.sha256()
    for p in files:digest.update(p.relative_to(ROOT).as_posix().encode()+b'\0'+p.read_bytes()+b'\0')
    return digest.hexdigest()
def artifact_hashes(directory):return{p.relative_to(directory).as_posix():hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(directory.rglob('*')) if p.is_file() and p.name!='build-info.json'}
def patch_runtime(directory):
    # Mirror generic runtime-only source patches for an older compatible
    # compiler. Preserve the compiler-injected host-runtime prelude.
    for name in ['wasm-rgba.patch', 'active-pipeline-preparation.patch']:
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
    runtime=(out/'renderer/fe-render-runtime.js').read_text()
    assert 'control-${param.name}' in runtime,'Compiler lacks control-parts patch; rebuild the pinned toolchain'
    subprocess.run([args.fe,'web','build',str(ROOT/'app/color_demo'),'--out',str(out/'colors')],cwd=ROOT,check=True)
    subprocess.run([args.fe,'web','precompile',str(ROOT/'web/source.html'),'--out',str(out/'viewer')],cwd=ROOT,check=True)
    from source_catalog import generate
    generate(Path(args.fe).resolve(),ROOT,out)
    for name in ['renderer','colors']:patch_runtime(out/name)
    manifest={'sourceHash':source_hash(),'toolchain':json.loads((ROOT/'toolchain.lock.json').read_text()),'files':artifact_hashes(out)}
    (out/'build-info.json').write_text(json.dumps(manifest,indent=2)+'\n')
    if args.record:
        dest=ROOT/'artifacts'
        if dest.exists():shutil.rmtree(dest)
        shutil.copytree(out,dest)
    print(out)
