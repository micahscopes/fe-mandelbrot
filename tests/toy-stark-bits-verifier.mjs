// Independent oracle fixtures enter only through the public verifier boundary.
import assert from 'node:assert/strict';
import {readFile} from 'node:fs/promises';
import {pathToFileURL} from 'node:url';
import {createHash} from 'node:crypto';
import {gunzipSync} from 'node:zlib';
const fixturePath=process.env.FE_BITS_FIXTURES ?? new URL('./fixtures/toy-stark-bits/fixtures.json.gz',import.meta.url).pathname;
const compressedBytes=await readFile(fixturePath);
const fixtureBytes=fixturePath.endsWith('.gz')?gunzipSync(compressedBytes):compressedBytes;
const fixtures=JSON.parse(fixtureBytes);
if (!process.env.FE_BITS_VERIFIER_BUNDLE) throw Error('Set FE_BITS_VERIFIER_BUNDLE to the compiled tests/toy-stark-bits bundle');
const bundle=pathToFileURL(process.env.FE_BITS_VERIFIER_BUNDLE.replace(/\/?$/,'/'));
const setupStart=performance.now();
const {createInterfaceCaller}=await import(new URL('interface.js',bundle));
const {instance}=await WebAssembly.instantiate(await readFile(new URL('module.wasm',bundle)),{});
const caller=createInterfaceCaller(instance.exports);
const setupMilliseconds=performance.now()-setupStart;
const initialMemoryBytes=instance.exports.memory.buffer.byteLength;
function bytes(words) { const output=new Uint8Array(words.length*4), view=new DataView(output.buffer); words.forEach((x,i)=>view.setUint32(i*4,x,true)); return output; }
const results=[];
async function check(name,S,proof,status) { const start=performance.now(); const actual=await caller.call('verify',{statement:{weight:S},proof}); assert.equal(actual.status,status,name); results.push({name,status,milliseconds:performance.now()-start}); }
for(const item of fixtures.cases) await check(item.name,item.statement,bytes(item.proof),item.expectedStatus);
const honest=fixtures.cases.find(c=>c.expectedStatus===0), honestBytes=bytes(honest.proof);
await check('empty bytes',honest.statement,new Uint8Array(),1);
await check('one byte short',honest.statement,honestBytes.slice(0,-1),1);
const longer=new Uint8Array(honestBytes.length+1); longer.set(honestBytes);
await check('one byte long',honest.statement,longer,1);
const mutate=(words,index)=>{const copy=[...words];copy[index]=(copy[index]+1)%2013265921;return copy;};
let mixed=mutate(honest.proof,16);mixed[mixed.length-1]=2013265921;
await check('canonical scan before OOD',honest.statement,bytes(mixed),1);
mixed=mutate(mutate(honest.proof,16),58);
await check('OOD before trace path',honest.statement,bytes(mixed),6);
mixed=mutate(mutate(honest.proof,58),144);
await check('trace before composition path',honest.statement,bytes(mixed),3);
const late=fixtures.cases.find(c=>c.name==='adaptive-zero');
if(late) await check('paths before final constant fold',late.statement,bytes(mutate(late.proof,58)),3);
const samplerResults=[];
const P=2013265921, qBase=()=>Array.from({length:10},()=>[2,0,0,0]), queryBase=()=>Array(18).fill(0);
async function sampler(name,request,expected) {
 const actual=await caller.call('sampler_control',request);
 for(const [field,value] of Object.entries(expected)) assert.deepEqual(actual[field],value,name+' '+field);
 samplerResults.push({name,...expected}); return actual;
}
await sampler('valid base2 and first accepted',{q_candidates:qBase(),query_candidates:queryBase()},
 {status:0,q_found:true,q_attempts:1,q_value:[2,0,0,0],query_found:true,query_attempts:1,query_index:0});
let qs=Array.from({length:10},()=>[0,0,0,0]), es=Array(18).fill(P-1);
qs[7]=[2,0,0,0]; es[15]=P-2;
await sampler('accept at last permitted counters',{q_candidates:qs,query_candidates:es},
 {status:0,q_found:true,q_attempts:8,q_value:[2,0,0,0],query_found:true,query_attempts:16,query_index:15});
qs=Array.from({length:10},()=>[0,0,0,0]);es=Array(18).fill(P-1); qs[8]=[2,0,0,0];qs[9]=[0,1,0,0];es[16]=0;es[17]=1;
await sampler('exhaustion ignores candidates after both caps',{q_candidates:qs,query_candidates:es},
 {status:2,q_found:false,q_attempts:8,q_value:[0,0,0,0],query_found:false,query_attempts:16,query_index:0});
qs=qBase();qs[0]=[0,0,0,0];qs[1]=[1,0,0,0];qs[2]=[31,0,0,0];qs[3]=[0,1,0,0];
es=queryBase();es[0]=P-1;es[1]=33;
const extensionSampler=await sampler('reject then accept genuine nonbase candidate',{q_candidates:qs,query_candidates:es},
 {status:0,q_found:true,q_attempts:4,q_value:[0,1,0,0],query_found:true,query_attempts:2,query_index:1});
assert.deepEqual(extensionSampler.q_allowed.slice(0,4),[false,false,false,true]);
const modulus=2013265921n;
function fieldPow(x,n) { let r=1n;for(;n;n>>=1n,x=x*x%modulus) if(n&1n)r=r*x%modulus;return r; }
const root8=fieldPow(31n,(modulus-1n)/8n),root32=fieldPow(31n,(modulus-1n)/32n);
const forbidden=[0,...Array.from({length:8},(_,i)=>Number(fieldPow(root8,BigInt(i)))),...Array.from({length:32},(_,i)=>Number(31n*fieldPow(root32,BigInt(i))%modulus))];
for(const point of forbidden) {
 qs=qBase();qs[0]=[point,0,0,0];
 const result=await sampler('forbidden q '+point,{q_candidates:qs,query_candidates:queryBase()},
  {status:0,q_attempts:2,q_value:[2,0,0,0]});
 assert.equal(result.q_allowed[0],false);
}
for(let i=0;i<16;i++) { es=queryBase();es[0]=i; await sampler('query residue '+i,{q_candidates:qBase(),query_candidates:es},{status:0,query_index:i,query_attempts:1}); }
qs=qBase();qs[9][3]=P;
await sampler('canonicality of all injected q coordinates',{q_candidates:qs,query_candidates:queryBase()},{status:1});
es=queryBase();es[17]=P;
await sampler('canonicality of all injected query words',{q_candidates:qBase(),query_candidates:es},{status:1});
const beforeRepeatsMemoryBytes=instance.exports.memory.buffer.byteLength;
const repeatMemoryBytes=[];
const honestCases=fixtures.cases.filter(item=>item.expectedStatus===0);
for(let i=0;i<8;i++) { const item=honestCases[i%honestCases.length]; await check('repeat '+i+' '+item.name,item.statement,bytes(item.proof),0); repeatMemoryBytes.push(instance.exports.memory.buffer.byteLength); }
assert(repeatMemoryBytes.every(value=>value===beforeRepeatsMemoryBytes),'memory stable across eight repeated honest verifications');
console.log(JSON.stringify({pass:true,fixturePath,fixtureSha256:createHash('sha256').update(fixtureBytes).digest('hex'),oracleCases:fixtures.cases.length,boundaryCases:7,repeatCases:8,samplerCases:samplerResults.length,samplerResults,setupMilliseconds,initialMemoryBytes,beforeRepeatsMemoryBytes,repeatMemoryBytes,timingScope:"Node/Wasm module loading, instantiation and caller setup; verification calls only. Not browser/GPU startup or proof generation.",results,limitations:'Public verifier differential execution against independent Rust fixtures; no replay inputs, security-bit estimate, protocol acceptance or hiding claim.'},null,2));
