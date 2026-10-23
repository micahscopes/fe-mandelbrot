from pathlib import Path
import json,subprocess,os
R=Path(os.environ.get('MB2_COMPILER_PROBE_ROOT', '/lab/argot/scratch/mb2-sonatina-upstream-rebase-20261022'));base=R/'arithmetic-reproducer-1/multiply';src=(base/'passes/002-compute.wgsl').read_text();results=[]
for count in [2,3]:
 lines=['let repeated_0 = multiply(a, b, &diagnostic_trap);']
 for i in range(1,count):lines.append(f'let repeated_{i} = multiply(repeated_{i-1}, b, &diagnostic_trap);')
 lines.append(f'let result = repeated_{count-1};')
 code=src.replace('let result = multiply(a, b, &diagnostic_trap);','\n'.join(lines));target=R/'repeated-multiply-probe-1'/str(count);(target/'passes').mkdir(parents=True,exist_ok=True)
 (target/'passes/002-compute.wgsl').write_text(code);d=json.loads((base/'manifest.json').read_text());d['passes'][0]['shader_bytes']=len(code.encode());(target/'manifest.json').write_text(json.dumps(d));log=R/f'repeated-multiply-probe-1-{count}.log'
 with log.open('w') as f:p=subprocess.run(['timeout','--kill-after=5s','30s','node','/lab/argot/scratch/fe-mandelbrot/mobile-freeze-20261021/pipeline-only-v2.mjs',str(target)],env=dict(os.environ,PASS='build_reference'),stdout=f,stderr=subprocess.STDOUT)
 results.append(dict(calls=count,exit=p.returncode,bytes=len(code.encode()),log=str(log)));(R/'REPEATED-MULTIPLY-PROBE-1.json').write_text(json.dumps(results,indent=2)+'\n')
