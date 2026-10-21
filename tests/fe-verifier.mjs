// Runs the actual Fe/Wasm canonical interface without a browser or GPU.
import assert from 'node:assert/strict';
import {readFile} from 'node:fs/promises';
import {gunzipSync} from 'node:zlib';
import {createHash} from 'node:crypto';
import {pathToFileURL} from 'node:url';
const bundle=process.env.FE_CHECKER_BUNDLE?pathToFileURL(process.env.FE_CHECKER_BUNDLE.replace(/\/?$/,'/')):new URL('../artifacts/proof/checker/',import.meta.url);
const {createInterfaceCaller}=await import(new URL('interface.js',bundle));
const {instance}=await WebAssembly.instantiate(await readFile(new URL('module.wasm',bundle)),{});
const caller=createInterfaceCaller(instance.exports);
const fixtures=new URL('./fixtures/point-proofs/',import.meta.url);
const metadata=JSON.parse(await readFile(new URL('manifest.json',fixtures),'utf8'));
assert.equal(metadata.profile,'viewer-capacity-q12-v1');
const valid=[];
for(const item of metadata.cases){
 const proof=gunzipSync(await readFile(new URL(item.name+'.bin.gz',fixtures)));
 assert.equal(proof.byteLength,item.bytes);assert.equal(createHash('sha256').update(proof).digest('hex'),item.sha256);
 const preflight=await caller.call('preflight',{point:item.point});
 assert.equal(preflight.code,0);assert.equal(preflight.terminal_step,item.terminal_step);
 const result=await caller.call('check',{point:item.point,proof});assert.equal(result.code,0,item.name);assert.equal(result.terminal_step,item.terminal_step);
 valid.push({...item,proof});
}
assert.equal((await caller.call('preflight',{point:{re:0,im:0}})).terminal_step,0xfffffffe);
assert.equal((await caller.call('preflight',{point:{re:-8193,im:0}})).terminal_step,0xffffffff);
assert.equal((await caller.call('preflight',{point:{re:-6000,im:3000}})).terminal_step,3);
const sample=valid[0];
for(const proof of [sample.proof.subarray(0,sample.proof.length-4),Buffer.concat([sample.proof,Buffer.alloc(4)])])assert.equal((await caller.call('check',{point:sample.point,proof})).code,2);
assert.notEqual((await caller.call('check',{point:{re:3501,im:3000},proof:sample.proof})).code,0);
assert.notEqual((await caller.call('check',{point:{re:0,im:0},proof:sample.proof})).code,0);
// Independent fixed-v1 fixture geometry, intentionally separate from Fe layout.
const canonicalPublic=1024*(428+7+14)+4;
const mainLdeRoot=canonicalPublic+8+1+428+8+8+8+3;
const auxLdeRoot=mainLdeRoot+8;
// Known serialized query-opening offset in the fixed-v1 receipt.
const words=sample.bytes/4,queryEvaluations=words-7-3-2-2-2*110*8-2*23*4;
for(const [name,offset,delta]of[
 ['witness',0,1],['public',canonicalPublic,1],['bound',canonicalPublic+4,1],
 ['opening',queryEvaluations,1],['main-LDE alias',mainLdeRoot,2013265921],['aux-LDE alias',auxLdeRoot,2013265921],
]){
 const copy=Buffer.from(sample.proof),old=copy.readUInt32LE(offset*4);copy.writeUInt32LE(delta===1?old^1:old+delta,offset*4);
 assert.notEqual((await caller.call('check',{point:sample.point,proof:copy})).code,0,name);
}
const stableBytes=instance.exports.memory.buffer.byteLength;
for(let i=0;i<8;i++){const item=valid[i%valid.length];assert.equal((await caller.call('check',{point:item.point,proof:item.proof})).code,0);}
assert.equal(instance.exports.memory.buffer.byteLength,stableBytes,'canonical arena must remain bounded across repeated checks');
console.log(JSON.stringify({pass:true,verifier:'Fe/Wasm',validFixtures:valid.length,mutations:6,wrongPoint:true,malformedLengths:true,repeatedCalls:8,arenaBytes:stableBytes}));
