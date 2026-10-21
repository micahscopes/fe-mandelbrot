// Exercise the actual compiled Fe contact lane without browser event timing.
// Usage: node tests/contact-state.mjs BUNDLE [RECEIPT]
import assert from 'node:assert/strict';
import fs from 'node:fs/promises';
import path from 'node:path';
const directory=process.argv[2];
assert.ok(directory,'A compiled renderer bundle is required');
const manifest=JSON.parse(await fs.readFile(path.join(directory,'manifest.json'),'utf8'));
const {instance}=await WebAssembly.instantiate(await fs.readFile(path.join(directory,'module.wasm')),{});
const api=instance.exports,resources=manifest.resources.map(()=>0n);
assert.equal(typeof api.fe_surface_contact_v1,'function');
const initial=[...api.fe_surface_initialize_v1()];
const viewport={left:0,top:0,width:512,height:512};
let state;
function reset(zoom=2){state=[...initial];state.fill(0,0,8);state[8]=zoom;api.fe_surface_state_replace_v1(...state);}
function contact(phase,id,x,y,bounds=viewport){
 const mark=api.fe_cabi_checkpoint?.();
 try{
  const result=api.fe_surface_contact_v1(phase,2,id,x,y,phase===2?0:1,1,0.5,100,...Object.values(bounds),...resources);
  state=Array.from(result);return state;
 }finally{if(mark!==undefined)api.fe_cabi_rewind(mark);}
}
const camera=()=>state.slice(0,10);
const center=()=>[state.slice(0,4).reduce((a,b)=>a+b,0),state.slice(4,8).reduce((a,b)=>a+b,0)];
const near=(actual,expected,message)=>assert.ok(Math.abs(actual-expected)<=2e-6,`${message}: ${actual} versus ${expected}`);
const groups=[];
reset();const original=camera();
contact(0,0xffffffff,160,200);assert.deepEqual(camera(),original);
contact(0,71,240,200);assert.deepEqual(camera(),original);
contact(1,0xffffffff,120,200);contact(1,71,280,200);
near(state[8],1,'Pinch halves the view span');
near(center()[0],-0.21875,'Pinch retains the centroid world x');
near(center()[1],0.21875,'Pinch retains the centroid world y');
groups.push('pinch-centroid-anchor-and-large-pointer-id');
let before=camera();contact(2,71,280,200);assert.deepEqual(camera(),before);
const c=center();contact(1,0xffffffff,136,208);
near(center()[0],c[0]-0.0625,'Remaining finger pans horizontally');
near(center()[1],c[1]+0.03125,'Remaining finger pans vertically');
before=camera();contact(2,0xffffffff,136,208);assert.deepEqual(camera(),before);assert.equal(state[13],0);
groups.push('membership-reanchors-and-one-finger-continuation');
reset();contact(0,1,200,200);before=camera();
contact(1,1,220,220,{left:0,top:0,width:640,height:640});assert.deepEqual(camera(),before);
contact(1,1,224,224,{left:0,top:0,width:640,height:640});
near(center()[0],-0.025,'Changed viewport reanchors before later horizontal motion');
near(center()[1],0.025,'Changed viewport reanchors before later vertical motion');
groups.push('resize-reanchor');
reset();contact(0,1,200,200);contact(3,1,200,200);assert.equal(state[13],0);
before=camera();contact(1,1,220,220);assert.deepEqual(camera(),before);
groups.push('cancel-clears-membership');
assert.deepEqual(state.slice(-2),initial.slice(-2),'Contact transitions preserve backing request');
const receipt={actualWasm:true,stateLeaves:initial.length,cameraPrefixLeaves:15,groups};
if(process.argv[3])await fs.writeFile(process.argv[3],JSON.stringify(receipt,null,2)+'\n');
console.log(JSON.stringify(receipt));
