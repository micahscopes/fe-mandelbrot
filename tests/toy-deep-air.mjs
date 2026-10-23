// Independent BigInt fixture/oracle only. Arithmetic acceptance runs in Fe.
import assert from 'node:assert/strict';
import { readFile } from 'node:fs/promises';
import { pathToFileURL } from 'node:url';
const P = 2013265921n;
const mod = x => ((x % P) + P) % P;
function pow(x, n) { let r = 1n; for (; n; n >>= 1n, x = mod(x*x)) if (n & 1n) r = mod(r*x); return r; }
const inv = x => { assert.notEqual(mod(x), 0n); return pow(mod(x), P-2n); };
const g = pow(31n, (P-1n)/4n);
assert.equal(g, 1728404513n);
const H = [1n, g, mod(g*g), mod(g*g*g)];
assert.equal(pow(g, 4n), 1n); assert.notEqual(pow(g, 2n), 1n);
function multiply(a,b) { const c = Array(a.length+b.length-1).fill(0n); a.forEach((x,i)=>b.forEach((y,j)=>c[i+j]=mod(c[i+j]+x*y))); return c; }
function interpolate(values) {
 const out = Array(4).fill(0n);
 for (let i=0;i<4;i++) {
  let basis=[1n], denominator=1n;
  for(let j=0;j<4;j++) if(i!==j) { basis=multiply(basis,[mod(-H[j]),1n]); denominator=mod(denominator*(H[i]-H[j])); }
  basis.forEach((x,k)=>out[k]=mod(out[k]+x*values[i]*inv(denominator)));
 }
 return out;
}
function divide(a,b) {
 const r=[...a], q=Array(Math.max(1,a.length-b.length+1)).fill(0n);
 for(let i=a.length-b.length;i>=0;i--) { q[i]=mod(r[i+b.length-1]*inv(b.at(-1))); for(let j=0;j<b.length;j++) r[i+j]=mod(r[i+j]-q[i]*b[j]); }
 return {q,r};
}
const evaluate=(a,x)=>a.reduceRight((r,c)=>mod(r*x+c),0n);
const transitionDivisor=H.slice(0,3).reduce((a,h)=>multiply(a,[mod(-h),1n]),[1n]);
function fixture(values,z=11n) {
 const trace=interpolate(values);
 const numerator=trace.map((c,i)=>mod(c*(pow(g,BigInt(i))-1n))); numerator[0]=mod(numerator[0]-1n);
 const tq=divide(numerator,transitionDivisor), bq=divide(trace,[P-1n,1n]);
 return {request:{trace:trace.map(Number),transition:Number(tq.q[0]),boundary:bq.q.map(Number),z:Number(z),trace_z:Number(evaluate(trace,z)),trace_gz:Number(evaluate(trace,mod(g*z))),transition_z:Number(evaluate(tq.q,z)),boundary_z:Number(evaluate(bq.q,z))}, tq,bq};
}
if(!process.env.FE_TOY_OOD_BUNDLE) throw Error('Set FE_TOY_OOD_BUNDLE to the compiled tests/toy-deep-air bundle');
const bundle=pathToFileURL(process.env.FE_TOY_OOD_BUNDLE.replace(/\/?$/, '/'));
const {createInterfaceCaller}=await import(new URL('interface.js',bundle));
const {instance}=await WebAssembly.instantiate(await readFile(new URL('module.wasm',bundle)),{});
const caller=createInterfaceCaller(instance.exports);
const honest=fixture([0n,1n,2n,3n]);
assert(honest.tq.r.every(x=>x===0n)); assert(honest.bq.r.every(x=>x===0n));
const cases=[];
async function check(name,request,status) { const actual=await caller.call('check',request); assert.equal(actual.status,status,name); cases.push({name,status}); }
for(const z of [0n,2n,11n,19n,123456n,P-1n]) {
 if(H.includes(z)) continue;
 await check(`honest z=${z}`,fixture([0n,1n,2n,3n],z).request,0);
}
// Expected acceptance demonstrates missing commit-before-challenge binding.
// An adaptive quotient can fit this one OOD relation despite every row being false.
const adaptiveZ=11n;
const adaptiveQuotient=mod(-inv(evaluate(transitionDivisor,adaptiveZ)));
await check('EXPECTED ACCEPT: adaptive quotient without commit-before-challenge binding',{
 trace:[0,0,0,0], transition:Number(adaptiveQuotient), boundary:[0,0,0],
 z:Number(adaptiveZ), trace_z:0, trace_gz:0,
 transition_z:Number(adaptiveQuotient), boundary_z:0,
},0);
const badTrace=fixture([0n,1n,2n,4n]);
assert(badTrace.tq.r.some(x=>x!==0n));
await check('false trace with polynomial division quotient',badTrace.request,4);
await check('unrelated zero quotient, source-linked opening',{...honest.request,transition:0,transition_z:0},4);
await check('wrong shifted opening',{...honest.request,trace_gz:honest.request.trace_z},3);
await check('unrelated boundary source',{...honest.request,boundary:[0,0,0],boundary_z:0},5);
await check('wrong boundary opening',{...honest.request,boundary_z:(honest.request.boundary_z+1)%Number(P)},3);
const shiftedBoundary=fixture([1n,2n,3n,4n]);
assert(shiftedBoundary.bq.r.some(x=>x!==0n));
await check('invalid initial row, linked quotient',shiftedBoundary.request,5);
for(const z of H) await check(`forbidden H point ${z}`,fixture([0n,1n,2n,3n],z).request,2);
for(const z of H.map(h=>mod(7n*h))) await check(`forbidden D point ${z}`,fixture([0n,1n,2n,3n],z).request,2);
for(const field of ['z','transition','trace_z','trace_gz','transition_z','boundary_z']) await check(`noncanonical ${field}`,{...honest.request,[field]:Number(P)},1);
for(const field of ['trace','boundary']) for(let i=0;i<honest.request[field].length;i++) { const request=structuredClone(honest.request); request[field][i]=Number(P); await check(`noncanonical ${field}[${i}]`,request,1); }
console.log(JSON.stringify({pass:true,field:Number(P),generator:Number(g),fixture:honest.request,cases,limitations:'Coefficient-backed source linkage exposes the source; deterministic OOD checks are not a PCS, proof of low degree, soundness claim, or zero knowledge.'},null,2));
