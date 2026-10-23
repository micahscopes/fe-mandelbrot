import re,json,subprocess,os
from pathlib import Path
R=Path(os.environ.get('MB2_COMPILER_PROBE_ROOT', '/lab/argot/scratch/mb2-sonatina-upstream-rebase-20261022')); base=R/'renderer-upstream-4';s=(base/'passes/002-compute.wgsl').read_text();fs={}
for m in re.finditer(r'^fn (\w+)\([^\n]*\)(?: -> [^\n{]+)? \{',s,re.M):
 i=m.end();d=1
 while d:
  d+=(s[i]=='{')-(s[i]=='}');i+=1
 fs[m[1]]=s[m.start():i]
head=re.sub(r'@group\([^;]+;','',s[:s.index('fn input_age')])
real=re.search(r'fn multiply\(a0_\w*: (\w+)',s)[1]
complex_type=re.search(r'fn reference_step\(a0_\w*: (\w+)',s)[1]
def limb(i):return '.tail'*i+('.value' if i==7 else '.lead')
results=[]
for kind,root in [('multiply','multiply'),('recurrence','reference_step')]:
 seen=set()
 def visit(n):
  if n in seen:return
  seen.add(n)
  for c in re.findall(r'\b(\w+)\(',fs[n]):
   if c in fs:visit(c)
 visit(root)
 lines=['@group(0) @binding(0) var<storage,read> diagnostic_inputs: array<u32>;','@group(0) @binding(1) var<storage,read_write> diagnostic_outputs: array<u32>;','@compute @workgroup_size(1) fn main() {','var diagnostic_trap = false;']
 components=['a','b'] if kind=='multiply' else ['a.re','a.im','b.re','b.im']
 typ=real if kind=='multiply' else complex_type
 lines += [f'var a: {typ};',f'var b: {typ};']
 for j,c in enumerate(components):
  lines.append(f'{c}.sign = diagnostic_inputs[{j*9}u] & 1u;')
  for i in range(8):lines.append(f'{c}.magnitude{limb(i)} = diagnostic_inputs[{j*9+i+1}u] & 8191u;')
 lines.append(f'let result = {root}(a, b, &diagnostic_trap);')
 outputs=['result'] if kind=='multiply' else ['result.value.re','result.value.im']
 for j,c in enumerate(outputs):
  lines.append(f'diagnostic_outputs[{j*9}u] = {c}.sign;')
  for i in range(8):lines.append(f'diagnostic_outputs[{j*9+i+1}u] = {c}.magnitude{limb(i)};')
 lines.append(f'diagnostic_outputs[{len(outputs)*9}u] = select(0u,1u,diagnostic_trap);')
 if kind=='recurrence':lines.append('diagnostic_outputs[19u] = select(0u,1u,result.escaped);')
 lines.append('}')
 code=head+'\n'.join(v for k,v in fs.items() if k in seen)+'\n'+'\n'.join(lines)
 target=R/'arithmetic-reproducer-1'/kind;(target/'passes').mkdir(parents=True,exist_ok=True)
 (target/'passes/002-compute.wgsl').write_text(code)
 manifest=json.loads((base/'manifest.json').read_text());manifest['passes']=[p for p in manifest['passes'] if p['source_entry']=='build_reference'];manifest['passes'][0]['shader_bytes']=len(code.encode());(target/'manifest.json').write_text(json.dumps(manifest))
 log=R/('arithmetic-reproducer-1-'+kind+'.log')
 with log.open('w') as f:p=subprocess.run(['timeout','--kill-after=5s','30s','node','/lab/argot/scratch/fe-mandelbrot/mobile-freeze-20261021/pipeline-only-v2.mjs',str(target)],env=dict(os.environ,PASS='build_reference'),stdout=f,stderr=subprocess.STDOUT)
 results.append(dict(kind=kind,helper_count=len(seen),bytes=len(code.encode()),exit=p.returncode,log=str(log),unchanged_generated_arithmetic=True))
 (R/'ARITHMETIC-REPRODUCER-1.json').write_text(json.dumps(results,indent=2)+'\n')
