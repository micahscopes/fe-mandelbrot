#!/usr/bin/env python3
"""Build a separately pinned GPU proof engine and standalone Rust/Wasm checker.

Does not rebuild or replace the viewer renderer. Use a fresh --out directory.
"""
import argparse,hashlib,json,os,shutil,subprocess
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
FE_REV='4b669c920'
def run(args,**kwargs):subprocess.run([str(x) for x in args],check=True,**kwargs)
def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()
if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('--fe-source',required=True);p.add_argument('--fe',required=True);p.add_argument('--out',required=True);p.add_argument('--target-dir',required=True);a=p.parse_args()
 fe=Path(a.fe_source).resolve();out=Path(a.out).resolve();out.mkdir(parents=True,exist_ok=False)
 rev=subprocess.check_output(['git','-C',str(fe),'rev-parse','HEAD'],text=True).strip()
 expected=subprocess.check_output(['git','-C',str(fe),'rev-parse',FE_REV],text=True).strip()
 if rev!=expected:raise SystemExit(f'Expected Fe source {expected}; found {rev}')
 if subprocess.check_output(['git','-C',str(fe),'status','--porcelain'],text=True).strip():raise SystemExit('Fe proof source must be clean')
 env={**os.environ,'CARGO_TARGET_DIR':str(Path(a.target_dir).resolve()),'CARGO_BUILD_JOBS':'2'}
 run(['cargo','build','--locked','--manifest-path',ROOT/'proof-checker/Cargo.toml','--target','wasm32-unknown-unknown','--release'],env=env)
 run([a.fe,'web','build',fe/'demos/sketches/mandelbrot_point_prover','--out',out/'engine'])
 manifest=out/'engine/manifest.json';m=json.loads(manifest.read_text())
 # Explicit host readback permission; shader/storage ABI is unchanged.
 resource=next(x for x in m['resources']if x['name']=='proof');resource['buffer_usage']=['storage','copy_src']
 manifest.write_text(json.dumps(m,indent=2)+'\n')
 shutil.copy2(Path(a.target_dir)/'wasm32-unknown-unknown/release/mandelbrot_viewer_proof_checker.wasm',out/'checker.wasm')
 info={'profile':'viewer-capacity-q12-v1','feSource':rev,'feBinarySha256':digest(Path(a.fe)),'bound':1023,'trace':1024,'lde':4096,'checkerSources':{str(x.relative_to(ROOT)):digest(x)for x in [ROOT/'proof-checker/src/lib.rs',ROOT/'proof-checker/Cargo.toml',ROOT/'proof-checker/Cargo.lock']},'files':{str(x.relative_to(out)):digest(x)for x in sorted(out.rglob('*'))if x.is_file()}}
 (out/'proof-build-info.json').write_text(json.dumps(info,indent=2)+'\n')
 print(out)
