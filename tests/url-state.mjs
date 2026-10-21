// Exact URL roundtrips through the compiled nominal Fe location lane.
// Usage: node tests/url-state.mjs BUNDLE [RECEIPT]
import assert from 'node:assert/strict';
import fs from 'node:fs/promises';
import path from 'node:path';
const directory=process.argv[2];
assert.ok(directory,'A compiled renderer bundle is required');
const manifest=JSON.parse(await fs.readFile(path.join(directory,'manifest.json'),'utf8'));
const {instance}=await WebAssembly.instantiate(await fs.readFile(path.join(directory,'module.wasm')),{});
const api=instance.exports,resources=manifest.resources.map(()=>0n),initial=Array.from(api.fe_surface_initialize_v1());
const encoder=new TextEncoder(),decoder=new TextDecoder();
function reset(){api.fe_surface_state_replace_v1(...initial);}
function words(values){const b=new ArrayBuffer(values.length*4),v=new DataView(b);values.forEach((x,i)=>v.setFloat32(i*4,x,true));return [...new Uint32Array(b)];}
function encode(values){const raw=words([...values.slice(0,10),values[12]]).map(v=>v.toString(16).padStart(8,'0'));return '#v1:'+raw.slice(0,4).join('.')+':'+raw.slice(4,8).join('.')+':'+raw.slice(8).join(':');}
function sync(hash,apply=true){
 const mark=api.fe_cabi_checkpoint?.();
 try{
  const input=encoder.encode('https://example.test/fractal?keep=1'+hash),ptr=api.fe_cabi_alloc(input.length,4),out=api.fe_cabi_alloc(102,4),len=api.fe_cabi_alloc(4,4);
  new Uint8Array(api.memory.buffer,ptr,input.length).set(input);
  const state=Array.from(api.fe_surface_location_v1(apply?1:0,ptr,input.length,out,102,len,...resources));
  const size=new DataView(api.memory.buffer).getUint32(len,true);
  assert.equal(size,102,'Canonical version1 fragment length');
  const written=decoder.decode(new Uint8Array(api.memory.buffer,out,size));
  return {state,hash:written};
 }finally{if(mark!==undefined)api.fe_cabi_rewind(mark);}
}
reset();const deep=[...initial];deep[3]=-0;deep[7]=-0;deep[8]=Math.fround(2.325737538549943e-16);deep[9]=1024;deep[12]=-0;
const hash=encode(deep),restored=sync(hash);
assert.deepEqual(words(restored.state.slice(0,10)),words(deep.slice(0,10)));
assert.deepEqual(words([restored.state[12]]),words([-0]));assert.equal(restored.hash,hash);
assert.deepEqual(restored.state.slice(-2),[1,1024],'A valid restored extent is explicit');
assert.equal(sync('',false).hash,hash,'Writing must preserve the exact restored view');
const groups=['deep-coefficients-and-signed-zero','canonical-fragment','explicit-restored-backing'];
for(const [label,bad] of [
 ['version',hash.replace('#v1:','#v2:')],
 ['truncated',hash.slice(0,-1)],
 ['nonfinite',encode(Object.assign([...deep],{8:Infinity}))],
 ['fractional-resolution',encode(Object.assign([...deep],{9:1.5}))],
 ['out-of-range-resolution',encode(Object.assign([...deep],{9:4096}))],
]){
 reset();const result=sync(bad);
 assert.deepEqual(words(result.state.slice(0,10)),words(initial.slice(0,10)),`${label} falls back atomically`);
 assert.deepEqual(words([result.state[12]]),words([initial[12]]),`${label} restores AA atomically`);
 assert.deepEqual(result.state.slice(-2),[0,512],`${label} restores automatic backing`);
 groups.push(`reject-${label}`);
}
const receipt={actualWasm:true,stateLeaves:initial.length,fragmentBytes:hash.length,groups};
if(process.argv[3])await fs.writeFile(process.argv[3],JSON.stringify(receipt,null,2)+'\n');
console.log(JSON.stringify(receipt));
