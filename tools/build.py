#!/usr/bin/env python3
"""Compile Fe source, then optionally record the reviewed distribution assets."""
import argparse,hashlib,json,os,shutil,subprocess
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
def source_hash():
    files=[ROOT/'fe.toml',ROOT/'toolchain.lock.json',ROOT/'web/source.html',*sorted((ROOT/'toolchain/patches').glob('*.patch'))]
    files+=sorted(p for base in ['app','lib'] for p in (ROOT/base).rglob('*') if p.is_file() and p.suffix in ['.fe','.toml'])
    digest=hashlib.sha256()
    for p in files:digest.update(p.relative_to(ROOT).as_posix().encode()+b'\0'+p.read_bytes()+b'\0')
    return digest.hexdigest()
def artifact_hashes(directory):return{p.relative_to(directory).as_posix():hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(directory.rglob('*')) if p.is_file() and p.name!='build-info.json'}
if __name__=='__main__':
    parser=argparse.ArgumentParser();parser.add_argument('--fe',default=os.environ.get('FE_BINARY'));parser.add_argument('--out',required=True);parser.add_argument('--record',action='store_true');args=parser.parse_args()
    if not args.fe:raise SystemExit('Run tools/bootstrap.py, then pass --fe /path/to/fe')
    out=Path(args.out).resolve();out.mkdir(parents=True,exist_ok=False)
    subprocess.run([args.fe,'web','build',str(ROOT/'app/renderer'),'--out',str(out/'renderer')],cwd=ROOT,check=True)
    runtime=(out/'renderer/fe-render-runtime.js').read_text()
    assert 'control-${param.name}' in runtime,'Compiler lacks control-parts patch; rebuild the pinned toolchain'
    subprocess.run([args.fe,'web','precompile',str(ROOT/'web/source.html'),'--out',str(out/'viewer')],cwd=ROOT,check=True)
    manifest={'sourceHash':source_hash(),'toolchain':json.loads((ROOT/'toolchain.lock.json').read_text()),'files':artifact_hashes(out)}
    (out/'build-info.json').write_text(json.dumps(manifest,indent=2)+'\n')
    if args.record:
        dest=ROOT/'artifacts'
        if dest.exists():shutil.rmtree(dest)
        shutil.copytree(out,dest)
    print(out)
