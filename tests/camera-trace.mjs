// Observe the real typed GPU readback and URL lanes without fabricating a GPU.
import assert from 'node:assert/strict';
import fs from 'node:fs/promises';
import path from 'node:path';
const [bundle,receiptPath]=process.argv.slice(2);
const manifest=JSON.parse(await fs.readFile(path.join(bundle,'manifest.json'),'utf8'));
const {instance}=await WebAssembly.instantiate(await fs.readFile(path.join(bundle,'module.wasm')),{});
const api=instance.exports,resources=manifest.resources.map(()=>0n);
const initial=Array.from(api.fe_surface_initialize_v1());
api.fe_surface_state_replace_v1(...initial);
const bits=values=>Array.from(new Uint32Array(new Float32Array(values).buffer));
const camera=()=>initial.slice(0,12);
function location(query,hash,apply=true,capacity=256){
 const mark=api.fe_cabi_checkpoint?.();
 try{
  const input=new TextEncoder().encode('https://example.test/fractal'+query+hash);
  const ptr=api.fe_cabi_alloc(input.length,4),out=api.fe_cabi_alloc(capacity,4),len=api.fe_cabi_alloc(4,4);
  new Uint8Array(api.memory.buffer,ptr,input.length).set(input);
  const state=Array.from(api.fe_surface_location_v1(apply?1:0,ptr,input.length,out,capacity,len,...resources));
  const size=new DataView(api.memory.buffer).getUint32(len,true);
  return {state,hash:new TextDecoder().decode(new Uint8Array(api.memory.buffer,out,size))};
 }finally{if(mark!==undefined)api.fe_cabi_rewind(mark);}
}
const baseline=location('','');assert.equal(baseline.hash.length,120);
const trace=location('?trace=1',baseline.hash);assert.equal(trace.hash.length,248);
assert.deepEqual(bits(trace.state.slice(0,12)),bits(camera()));
assert.equal(typeof api.fe_gpu_readback_transition_v1,'function');
const packet=[0x47000001,0xbf960edd,0xb214a970,0x3e97762f,0xb1928121,
 0x31abcdef,0xb17abcde,0x32345678,0xdeadbeef,0x00030003,0xffffffff,0x4454a000,0x4454a001,0x47000001];
{
 const mark=api.fe_cabi_checkpoint?.();
 try{
  const ptr=api.fe_cabi_alloc(packet.length*4,4);
  new Uint32Array(api.memory.buffer,ptr,packet.length).set(packet);
  const state=Array.from(api.fe_gpu_readback_transition_v1(ptr,packet.length*4,...resources));
  assert.deepEqual(bits(state.slice(0,12)),bits(camera()),'GPU observations preserve the authored camera');
 }finally{if(mark!==undefined)api.fe_cabi_rewind(mark);}
}
const observed=location('?trace=1',baseline.hash,false);
assert.equal(observed.hash,baseline.hash+'~g:'+packet.map(w=>w.toString(16).padStart(8,'0')).join('.'));
assert.equal(location('?trace=1',baseline.hash,false,120).hash,baseline.hash,'Bounded callers retain canonical view URLs');
api.fe_surface_state_replace_v1(...initial);
const restored=location('?trace=1',observed.hash);
assert.deepEqual(bits(restored.state.slice(0,12)),bits(camera()));
assert.equal(restored.hash,baseline.hash+'~g:'+Array(14).fill('00000000').join('.'),'Incoming reports are observations, never restored GPU state');
assert.equal(location('',observed.hash).hash,baseline.hash,'Normal URLs remain concise after opening a diagnostic view');
// A non-default phone view must survive the asynchronous readback transition too.
const movedHash='#v2:bf960ede.b3122f13.2697c6c6.198a3a81:3e977634.b1877771.a57b5246.9891c941:33271301:44d4a000:3f800000:3f800000:00000000';
const moved=location('?trace=1',movedHash);
assert.equal(moved.hash.slice(0,120),movedHash);
{
 const mark=api.fe_cabi_checkpoint?.();
 try{
  const ptr=api.fe_cabi_alloc(packet.length*4,4);
  new Uint32Array(api.memory.buffer,ptr,packet.length).set(packet);
  const state=Array.from(api.fe_gpu_readback_transition_v1(ptr,packet.length*4,...resources));
  assert.deepEqual(bits(state.slice(0,15)),bits(moved.state.slice(0,15)),'GPU observations preserve the latest non-default camera');
 }finally{if(mark!==undefined)api.fe_cabi_rewind(mark);}
}
assert.equal(location('?trace=1','',false).hash.slice(0,120),movedHash);
const receipt={actualFeWasm:true,typedReadback:true,exactU32Packet:true,cameraPreserved:true,movedCameraPreserved:true,traceBytes:248,ordinaryBytes:120,legacyCapacity:true,untrustedObservationsNotRestored:true,physicalPhone:false};
if(receiptPath)await fs.writeFile(receiptPath,JSON.stringify(receipt,null,2)+'\n');console.log(JSON.stringify(receipt));
