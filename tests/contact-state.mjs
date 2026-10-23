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
const camera=()=>state.slice(0,12);
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
before=camera();contact(2,0xffffffff,136,208);assert.deepEqual(camera(),before);assert.equal(state[15],0);
groups.push('membership-reanchors-and-one-finger-continuation');
reset();contact(0,1,200,200);
contact(1,1,220,220,{left:0,top:0,width:640,height:640});
near(center()[0],-0.15625,'Resize preserves horizontal motion in the gesture frame');
near(center()[1],0.15625,'Resize preserves vertical motion in the gesture frame');
contact(1,1,224,224,{left:0,top:0,width:640,height:640});
near(center()[0],-0.1875,'Continued motion retains its original frame');
near(center()[1],0.1875,'Continued vertical motion retains its original frame');
contact(2,1,224,224);
const resizedCenter=center();
contact(0,1,200,200,{left:0,top:0,width:640,height:640});
contact(1,1,204,204,{left:0,top:0,width:640,height:640});
near(center()[0],resizedCenter[0]-0.025,'The next gesture uses the new viewport');
near(center()[1],resizedCenter[1]+0.025,'The next gesture uses the new vertical viewport');
groups.push('resize-retains-frame-until-release');
for(const fingers of [1,2]){
 reset();contact(0,7,160,200);if(fingers===2)contact(0,90,240,200);
 for(let step=1;step<=20;step++){
  const bounds={left:step*0.001,top:step*0.002,width:512+step*0.003,height:512+step*0.003};
  contact(1,7,160+step*2,200+step,bounds);
  if(fingers===2)contact(1,90,240+step*2,200+step,{...bounds,left:bounds.left+0.0001});
 }
 near(center()[0],-0.3125,'Changing bounds do not erase horizontal finger motion');
 near(center()[1],0.15625,'Changing bounds do not erase vertical finger motion');
 near(state[8],2,'Changing bounds do not introduce a false pinch');
 near(state[10],1,'Changing bounds do not introduce a false rotation');
 near(state[11],0,'Changing bounds preserve the orientation');
 groups.push(`${fingers}-finger-pan-with-changing-bounds`);
}
reset();contact(0,7,200,200);state[9]=1024;api.fe_surface_state_replace_v1(...state);
contact(1,7,220,220);assert.equal(state[9],1024,'A gesture preserves the current backing extent');
groups.push('gesture-preserves-new-backing-extent');
reset();contact(0,7,200,200);before=camera();
contact(1,7,220,220,{left:0,top:0,width:0,height:0});assert.deepEqual(camera(),before);
contact(3,7,220,220,{left:0,top:0,width:0,height:0});assert.equal(state[15],0);
groups.push('hidden-canvas-suppresses-motion-and-allows-cleanup');
reset();contact(0,1,200,200);contact(3,1,200,200);assert.equal(state[15],0);
before=camera();contact(1,1,220,220);assert.deepEqual(camera(),before);
groups.push('cancel-clears-membership');
reset(2**-20);state[0]=1;state[1]=-(2**-26);api.fe_surface_state_replace_v1(...state);
contact(0,1,128,256);contact(1,1,120,256);
assert.deepEqual(state.slice(0,4),[1,0,0,0],'Upper bound includes the low coordinate terms');
reset(2**-20);state[0]=-2.5;state[1]=2**-26;state[4]=1.5;state[5]=-(2**-26);api.fe_surface_state_replace_v1(...state);
contact(0,1,128,256);contact(1,1,136,264);
assert.deepEqual(state.slice(0,4),[-2.5,0,0,0],'Lower bound includes the low coordinate terms');
assert.deepEqual(state.slice(4,8),[1.5,0,0,0],'Imaginary upper bound includes the low coordinate terms');
groups.push('whole-expansion-domain-bounds');
reset();contact(0,7,128,256);contact(1,7,160,272);
near(center()[0],-0.25,'Fresh one-finger drag pans horizontally');
near(center()[1],0.125,'Fresh one-finger drag pans vertically');
assert.equal(state[8],2);assert.deepEqual(state.slice(10,12),[1,0]);
groups.push('fresh-one-finger-pan');
// Turn a horizontal pair through a quarter-turn, at fixed centroid/span.
reset();contact(0,7,192,256);contact(0,90,320,256);
contact(1,7,256,192);contact(1,90,256,320);
near(state[8],2,'Rotation keeps span');
near(state[10],0,'Quarter-turn basis real');near(state[11],1,'Quarter-turn basis imaginary');
near(center()[0],0,'Rotation preserves centered anchor x');near(center()[1],0,'Rotation preserves centered anchor y');
contact(2,90,256,320);const rotatedCenter=center();contact(1,7,272,192);
near(center()[0],rotatedCenter[0],'Rotated horizontal drag keeps world x');
near(center()[1],rotatedCenter[1]-0.125,'Rotated horizontal drag follows world basis');
groups.push('rotation-anchor-and-rotated-one-finger-pan');
reset(3);contact(0,7,192,256);contact(0,90,320,256);
contact(1,7,256,192);contact(1,90,256,320);
near(state[8],3,'Fixed-span rotation at the maximum zoom must not retain intermediate clamping');
near(state[10],0,'Zoom-clamped quarter-turn basis real');near(state[11],1,'Zoom-clamped quarter-turn basis imaginary');
groups.push('rotation-at-zoom-bound');
// The latest intermediate constrained center must not replace the gesture anchor.
reset();state[0]=1;api.fe_surface_state_replace_v1(...state);
contact(0,7,256,256);contact(1,7,200,256);contact(1,7,256,256);
near(center()[0],1,'Returning a constrained pan to its anchor restores the original center');
groups.push('constrained-pan-returns-to-anchor');
reset();contact(0,7,256,256);contact(1,7,280,256);
const editedCenter=center();
{
 const mark=api.fe_cabi_checkpoint?.();
 try{
  const ptr=api.fe_cabi_alloc(52,4),event=new DataView(api.memory.buffer,ptr,52);
  event.setFloat32(28,200,true);event.setFloat32(32,512,true);event.setFloat32(36,512,true);
  event.setUint32(40,1,true);
  const ordinal=manifest.surface.params.findIndex(p=>p.name==='zoom'||p.name.endsWith('.zoom'));
  assert.ok(ordinal>=0);event.setUint32(44,ordinal,true);event.setFloat32(48,1,true);
  state=Array.from(api.fe_surface_transition_scheduled_v1(ptr,1,...resources));
 }finally{if(mark!==undefined)api.fe_cabi_rewind(mark);}
}
contact(1,7,300,256);
near(state[8],1,'An external zoom edit survives the next contact motion');
near(center()[0],editedCenter[0]-0.078125,'An external camera edit reanchors active contacts');
groups.push('external-edit-reanchors-active-contact');



assert.deepEqual(state.slice(-2),initial.slice(-2),'Contact transitions preserve backing request');
const receipt={actualWasm:true,stateLeaves:initial.length,cameraPrefixLeaves:17,groups};
if(process.argv[3])await fs.writeFile(process.argv[3],JSON.stringify(receipt,null,2)+'\n');
console.log(JSON.stringify(receipt));
