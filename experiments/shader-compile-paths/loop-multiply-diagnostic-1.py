from pathlib import Path
import re,json,subprocess,os
R=Path(os.environ.get('MB2_COMPILER_PROBE_ROOT', '/lab/argot/scratch/mb2-sonatina-upstream-rebase-20261022'));base=R/'repeated-multiply-probe-1/2';s=(base/'passes/002-compute.wgsl').read_text()
m=re.search(r'fn precision_lib_fixed_mul_gc7cf_648e\(([^\n]+)\) -> (\w+) \{',s);params=[x.split(':')[0] for x in m[1].split(', ')[:4]];a0,a,a2,b=params
# The first four parameters contain no pointer type, so splitting is unambiguous here.
def limb(i):return '.tail'*i+('.value' if i==7 else '.lead')
body=['var aa: array<u32,8>;','var bb: array<u32,8>;','var acc: array<u32,8>;','var guard = 0u;']
for i in range(8):body += [f'aa[{i}] = {a}{limb(i)};',f'bb[{i}] = {b}{limb(i)};']
body += ['for (var j=0u; j<8u; j=j+1u) {','var carry=0u;','for (var k=0u; k<8u; k=k+1u) {','let sum=acc[k]+aa[k]*bb[j]+carry;','acc[k]=sum & 8191u;','carry=sum >> 13u;','}','if (j<7u) {','guard=acc[0];','for (var k=0u; k<7u; k=k+1u) { acc[k]=acc[k+1u]; }','acc[7]=carry;','} else {','var round_carry=guard >> 12u;','for (var k=0u; k<8u; k=k+1u) { let sum=acc[k]+round_carry; acc[k]=sum & 8191u; round_carry=sum >> 13u; }','}','}',f'var result: {m[2]};',f'result.f0_={a0} ^ {a2};']
for i in range(8):body.append(f'result.f1_{limb(i)}=acc[{i}];')
body.append('return result;')
i=m.end();d=1
while d:d+=(s[i]=='{')-(s[i]=='}');i+=1
code=s[:m.end()]+'\n'+'\n'.join(body)+'\n'+s[i-1:]
target=R/'loop-multiply-diagnostic-1';(target/'passes').mkdir(parents=True,exist_ok=True);(target/'passes/002-compute.wgsl').write_text(code);manifest=json.loads((base/'manifest.json').read_text());manifest['passes'][0]['shader_bytes']=len(code.encode());(target/'manifest.json').write_text(json.dumps(manifest))
log=R/'loop-multiply-diagnostic-1.log'
with log.open('w') as f:p=subprocess.run(['timeout','--kill-after=5s','30s','node','/lab/argot/scratch/fe-mandelbrot/mobile-freeze-20261021/pipeline-only-v2.mjs',str(target)],env=dict(os.environ,PASS='build_reference'),stdout=f,stderr=subprocess.STDOUT)
(R/'LOOP-MULTIPLY-DIAGNOSTIC-1.json').write_text(json.dumps(dict(diagnostic_only=True,canonical_13bit_limbs_only=True,not_deployed=True,numerical_equivalence_pending=True,exit=p.returncode,log=str(log)),indent=2))
