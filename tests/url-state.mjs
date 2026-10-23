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
function encode(values){const raw=words([...values.slice(0,10),values[14],...values.slice(10,12)]).map(v=>v.toString(16).padStart(8,'0'));return '#v2:'+raw.slice(0,4).join('.')+':'+raw.slice(4,8).join('.')+':'+raw.slice(8).join(':');}
function sync(hash,apply=true){
 const mark=api.fe_cabi_checkpoint?.();
 try{
  const input=encoder.encode('https://example.test/fractal?keep=1'+hash),ptr=api.fe_cabi_alloc(input.length,4),out=api.fe_cabi_alloc(120,4),len=api.fe_cabi_alloc(4,4);
  new Uint8Array(api.memory.buffer,ptr,input.length).set(input);
  const state=Array.from(api.fe_surface_location_v1(apply?1:0,ptr,input.length,out,120,len,...resources));
  const size=new DataView(api.memory.buffer).getUint32(len,true);
  assert.equal(size,120,'Canonical version2 fragment length');
  const written=decoder.decode(new Uint8Array(api.memory.buffer,out,size));
  return {state,hash:written};
 }finally{if(mark!==undefined)api.fe_cabi_rewind(mark);}
}
reset();const deep=[...initial];deep[3]=-0;deep[7]=-0;deep[8]=Math.fround(2.325737538549943e-16);deep[9]=1024;deep[14]=-0;
deep[10]=0;deep[11]=1;
const hash=encode(deep),restored=sync(hash);
assert.deepEqual(words(restored.state.slice(0,10)),words(deep.slice(0,10)));
assert.deepEqual(words([restored.state[14]]),words([-0]));assert.equal(restored.hash,hash);
assert.deepEqual(restored.state.slice(-2),[1,1024],'A valid restored extent is explicit');
assert.equal(sync('',false).hash,hash,'Writing must preserve the exact restored view');
assert.deepEqual(words(restored.state.slice(10,12)),words([0,1]),'Restore preserves exact rotation');
const legacy=hash.slice(0,102).replace('#v2:','#v1:');
const legacyRestored=sync(legacy);assert.deepEqual(words(legacyRestored.state.slice(10,12)),words([1,0]),'v1 clears prior rotation');
const groups=['v1-clears-prior-rotation','exact-v2-rotation','deep-coefficients-and-signed-zero','canonical-fragment','explicit-restored-backing'];
for(const [label,bad] of [
 ['version',hash.replace('#v2:','#v3:')],
 ['truncated',hash.slice(0,-1)],
 ['nonfinite',encode(Object.assign([...deep],{8:Infinity}))],
 ['zero-orientation',encode(Object.assign([...deep],{10:0,11:0}))],
 ['nonunit-orientation',encode(Object.assign([...deep],{10:2,11:0}))],
 ['fractional-resolution',encode(Object.assign([...deep],{9:1.5}))],
 ['out-of-range-resolution',encode(Object.assign([...deep],{9:4096}))],
]){
 reset();const result=sync(bad);
 assert.deepEqual(words(result.state.slice(0,10)),words(initial.slice(0,10)),`${label} falls back atomically`);
 assert.deepEqual(words([result.state[14]]),words([initial[14]]),`${label} restores AA atomically`);
 assert.deepEqual(result.state.slice(-2),[0,512],`${label} restores automatic backing`);
 groups.push(`reject-${label}`);
}
const receipt={actualWasm:true,stateLeaves:initial.length,fragmentBytes:hash.length,groups};
if(process.argv[3])await fs.writeFile(process.argv[3],JSON.stringify(receipt,null,2)+'\n');
console.log(JSON.stringify(receipt));
