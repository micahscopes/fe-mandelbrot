// Independent BigInt extension-field oracle, not application arithmetic.
import assert from 'node:assert/strict';
import {readFile} from 'node:fs/promises';
import {pathToFileURL} from 'node:url';
const P=2013265921n, zero=()=>[0n,0n,0n,0n];
const mod=x=>((x%P)+P)%P;
const add=(a,b)=>a.map((x,i)=>mod(x+b[i]));
const sub=(a,b)=>a.map((x,i)=>mod(x-b[i]));
function mul(a,b) { const out=zero(); for(let i=0;i<4;i++) for(let j=0;j<4;j++) out[(i+j)%4]=mod(out[(i+j)%4]+a[i]*b[j]*(i+j>=4?11n:1n)); return out; }
const evaluate=(cs,z)=>cs.reduceRight((r,c)=>add(mul(r,z),c),zero());
function divide(cs,z) { const q=cs.map(zero); let r=zero(); for(let i=cs.length-1;i>=0;i--) { r=add(mul(r,z),cs[i]); if(i>0) q[i-1]=r; } return {q,r}; }
const words=a=>a.map(Number);
const pad=cs=>[...cs.map(words),...Array.from({length:4-cs.length},()=>[0,0,0,0])];
if(!process.env.FE_POLYNOMIAL_BUNDLE) throw Error('Set FE_POLYNOMIAL_BUNDLE to tests/polynomial-primitives bundle');
const url=pathToFileURL(process.env.FE_POLYNOMIAL_BUNDLE.replace(/\/?$/,'/'));
const {createInterfaceCaller}=await import(new URL('interface.js',url));
const {instance}=await WebAssembly.instantiate(await readFile(new URL('module.wasm',url)),{});
const caller=createInterfaceCaller(instance.exports), results=[];
const cases=[
 ['zero',[zero()]], ['constant',[[7n,8n,9n,10n]]],
 ['zero padded',[zero(),zero(),zero(),zero()]],
 ['degree three',[[1n,2n,3n,4n],[5n,6n,7n,8n],[9n,10n,11n,12n],[13n,14n,15n,16n]]],
 ['leading zeros',[[1n,2n,3n,4n],[5n,6n,7n,8n],zero(),zero()]],
 ['near modulus',[[P-1n,P-2n,P-3n,P-4n],[P-5n,1n,0n,4n],zero(),[1n,0n,0n,0n]]],
];
for(const [name,cs] of cases) for(const point of [zero(),[1n,0n,0n,0n],[2n,3n,5n,7n],[P-1n,P-2n,P-3n,P-4n]]) {
 const value=evaluate(cs,point), divided=divide(cs,point);
 // Independently reconstruct every source coefficient from (X-z)Q+remainder.
 const reconstructed=cs.map(zero);
 for(let i=0;i<divided.q.length;i++) {
  reconstructed[i]=sub(reconstructed[i],mul(point,divided.q[i]));
  if(i+1<cs.length) reconstructed[i+1]=add(reconstructed[i+1],divided.q[i]);
 }
 if(cs.length) reconstructed[0]=add(reconstructed[0],divided.r);
 assert.deepEqual(reconstructed,cs);
 const request={coefficients:pad(cs),point:words(point),claimed:words(value),count:cs.length};
 const actual=await caller.call('inspect_ext4',request);
 assert.equal(actual.valid_input,true,name); assert.equal(actual.claimed_valid,true,name);
 assert.deepEqual(actual.evaluation,words(value),name); assert.deepEqual(actual.remainder,words(divided.r),name);
 assert.deepEqual(actual.quotient,pad(divided.q),name);
 const falseClaim=words(value); falseClaim[2]=(falseClaim[2]+1)%Number(P);
 const rejected=await caller.call('inspect_ext4',{...request,claimed:falseClaim});
 assert.equal(rejected.claimed_valid,false,`${name} false opening`);
 results.push({name,point:words(point),falseOpeningRejected:true});
}
for(const coefficients of [[0,0,0,0],[7,0,0,0],[1,2,3,4],[2013265920,5,0,1]]) for(const point of [0,1,11,2013265920]) {
 const cs=coefficients.map(x=>[BigInt(x),0n,0n,0n]), z=[BigInt(point),0n,0n,0n];
 const d=divide(cs,z), actual=await caller.call('inspect_base',{coefficients,point});
 assert.equal(actual.evaluation,Number(evaluate(cs,z)[0])); assert.equal(actual.remainder,Number(d.r[0]));
 assert.deepEqual(actual.quotient,d.q.map(c=>Number(c[0])));
}
const canonical={coefficients:pad([]),point:[0,0,0,0],claimed:[0,0,0,0],count:1};
for(const field of ['point','claimed']) { const r=structuredClone(canonical); r[field][3]=Number(P); assert.equal((await caller.call('inspect_ext4',r)).valid_input,false); }
const bad=structuredClone(canonical); bad.coefficients[3][2]=Number(P); assert.equal((await caller.call('inspect_ext4',bad)).valid_input,false);
assert.equal((await caller.call('inspect_ext4',{...canonical,count:2})).valid_input,false);
console.log(JSON.stringify({pass:true,ext4Cases:results.length,falseOpeningCases:results.length,baseCases:16,invalidInputs:4,relation:'P(X)=(X-z)Q(X)+r; Ext4 U^4=11',results,limitations:'Arithmetic primitives only; no commitments, transcript, PCS, or proof claim.'},null,2));
