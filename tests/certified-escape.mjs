// Actual Fe/Wasm execution; expected endpoints originate in an independent Python model.
import assert from 'node:assert/strict';
import {readFile} from 'node:fs/promises';
import {pathToFileURL} from 'node:url';
const bundle=process.env.FE_CERTIFIED_BUNDLE?pathToFileURL(process.env.FE_CERTIFIED_BUNDLE.replace(/\/?$/,'/')):new URL('../artifacts/proof/certified/',import.meta.url);
const {createInterfaceCaller}=await import(new URL('interface.js',bundle));
const {instance}=await WebAssembly.instantiate(await readFile(new URL('module.wasm',bundle)),{});
const caller=createInterfaceCaller(instance.exports);
function encode(words){const bytes=new Uint8Array(words.length*4),view=new DataView(bytes.buffer);words.forEach((word,i)=>view.setUint32(i*4,word,true));return bytes;}
function decode(bytes,e,negative){let m=0n;for(let i=bytes.length-4;i>=0;i-=4)m=(m<<13n)+BigInt(new DataView(bytes.buffer,bytes.byteOffset+i,4).getUint32(0,true));return {m:String(negative?-m:m),e:Number(e)};}
const fixtures=JSON.parse(await readFile(new URL('./fixtures/certified-arithmetic.json',import.meta.url),'utf8'));
for(const [index,item]of fixtures.entries()){
 const request={...item.request,left:encode(item.request.left),right:encode(item.request.right)};
 const result=await caller.call('arithmetic_words',request);assert.equal(result.code,0,'result '+index);
 assert.deepEqual(decode(result.lower,result.lower_exp,result.lower_negative),item.lower,'lower '+index);
 assert.deepEqual(decode(result.upper,result.upper_exp,result.upper_negative),item.upper,'upper '+index);
}
// Executed counterexample discovered by independent Astra source review:
// quantization beyond EXP_LIMIT must not turn an invalid operand into numeric zero.
const overflow=await caller.call('arithmetic',{left:7,left_exp:999999998,right:5,right_exp:1000000000,precision:4,operation:0});
assert.equal(overflow.code,2,'exponent-bound failure must propagate');
for(const bad of [new Uint8Array(3),encode([8192]),new Uint8Array(317*4)]){
 assert.equal((await caller.call('arithmetic_words',{left:bad,right:encode([1]),left_exp:0,right_exp:0,left_negative:false,right_negative:false,precision:128,operation:0})).code,2);
}
const results=[];
for(const [depth,precision,max_steps,code,step]of [[8,128,80,0,8],[128,128,288,0,104],[1024,256,2080,0,821],[1024,128,2080,1,null]]){
 const start=performance.now(),result=await caller.call('certify',{depth,precision,max_steps});
 assert.equal(result.code,code);if(step!==null)assert.equal(result.step,step);
 results.push({depth,precision,max_steps,result,ms:performance.now()-start});
}
for(const request of [{depth:0,precision:256,max_steps:100},{depth:20000,precision:256,max_steps:100},{depth:1024,precision:0,max_steps:100},{depth:1024,precision:4097,max_steps:100},{depth:1024,precision:256,max_steps:0},{depth:1024,precision:256,max_steps:10001}])assert.equal((await caller.call('certify',request)).code,2);
const stable=instance.exports.memory.buffer.byteLength;
for(let i=0;i<4;i++)assert.equal((await caller.call('certify',{depth:1024,precision:256,max_steps:2080})).code,0);
assert.equal(instance.exports.memory.buffer.byteLength,stable,'canonical call arena should be reused');
if(process.env.CERTIFIED_LARGE_CASE){for(const precision of [1024,4096]){const start=performance.now();const result=await caller.call('certify',{depth:4096,precision,max_steps:8224});assert.equal(result.code,0);assert.equal(result.step,3285);results.push({depth:4096,precision,result,ms:performance.now()-start,memory:instance.exports.memory.buffer.byteLength});}}
console.log(JSON.stringify({pass:true,endpointCases:fixtures.length,overflowRejected:true,malformedRejected:true,repeatedCalls:4,arenaBytes:stable,results},null,2));
