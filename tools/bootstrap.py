#!/usr/bin/env python3
"""Fetch the exact MB2 toolchain and apply the generic control-parts patch."""
import argparse,json,os,subprocess,tomllib
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
def run(*args,**kwargs):return subprocess.run(args,check=True,**kwargs)
def output(*args):return subprocess.check_output(args,text=True).strip()
def prepare():
    lock=json.loads((ROOT/'toolchain.lock.json').read_text());source=ROOT/'.cache/fe'
    source.parent.mkdir(exist_ok=True)
    if not (source/'.git').exists():
        run('git','init',str(source));run('git','-C',str(source),'remote','add','origin',lock['fe']['repository'])
        run('git','-C',str(source),'fetch','--depth=1','origin',lock['fe']['revision'])
        run('git','-C',str(source),'checkout','--detach','FETCH_HEAD')
    assert output('git','-C',str(source),'rev-parse','HEAD')==lock['fe']['revision'],'Toolchain checkout differs from the lock; preserve it and inspect before changing it'
    cargo=tomllib.loads((source/'Cargo.toml').read_text())
    for name in ['sonatina-ir','sonatina-triple','sonatina-codegen','sonatina-verifier']:
        assert cargo['workspace']['dependencies'][name]['rev']==lock['sonatina']['revision'],f'{name} revision mismatch'
    patch=ROOT/'toolchain/patches/control-parts.patch'
    reverse=subprocess.run(['git','-C',str(source),'apply','--reverse','--check',str(patch)],capture_output=True)
    if reverse.returncode:
        run('git','-C',str(source),'apply','--check',str(patch));run('git','-C',str(source),'apply',str(patch))
    changed=output('git','-C',str(source),'diff','--name-only').splitlines()
    assert changed==['crates/codegen/assets/render-runtime/fe-render-runtime.js'],'Unexpected toolchain edits'
    return source,lock
if __name__=='__main__':
    parser=argparse.ArgumentParser();parser.add_argument('--prepare-only',action='store_true');args=parser.parse_args()
    source,lock=prepare()
    if not args.prepare_only:
        target=Path(os.environ.get('CARGO_TARGET_DIR',ROOT/'.cache/target')).resolve()
        env={**os.environ,'CARGO_TARGET_DIR':str(target),'CARGO_NET_GIT_FETCH_WITH_CLI':'true','CARGO_PROFILE_RELEASE_DEBUG':'0','CARGO_BUILD_JOBS':os.environ.get('CARGO_BUILD_JOBS','4'),'CARGO_INCREMENTAL':'0'}
        run('cargo','build','--locked','--release','-p','fe','--no-default-features',cwd=source,env=env)
        print(target/'release/fe')
