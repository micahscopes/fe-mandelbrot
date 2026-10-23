// Real browser touch transport plus compiled Fe recognition/camera operations.
// GPU submission and render scheduling are covered separately by the app tests.
import assert from 'node:assert/strict';
import fs from 'node:fs/promises';
import path from 'node:path';
import {releaseTestPage} from './browser-session.mjs';
const [directory,receiptPath]=process.argv.slice(2);
assert.ok(directory,'Provide a compiled renderer bundle');
const {chromium}=await import(process.env.PLAYWRIGHT_MODULE||'playwright-core');
const owned=process.env.OWNED_SOFTWARE_BROWSER==='1';
const browser=owned
 ?await chromium.launch({executablePath:'/run/current-system/sw/bin/chromium',headless:true,args:['--no-sandbox']})
 :await chromium.connectOverCDP(process.env.CDP_URL||'http://127.0.0.1:9222');
const page=await browser.newPage({viewport:{width:390,height:844},isMobile:true,hasTouch:true});
const errors=[];page.on('pageerror',e=>errors.push(String(e)));
try{
 await page.route('https://fe-gesture.test/**',async route=>{
  const file=new URL(route.request().url()).pathname.slice(1);
  if(!file)return route.fulfill({contentType:'text/html',body:'<!doctype html><meta name="viewport" content="width=device-width,initial-scale=1"><style>body{margin:0}canvas{position:fixed;left:-227px;top:0;width:844px;height:844px}</style><canvas></canvas>'});
  assert.ok(['manifest.json','module.wasm','fe-render-runtime.js'].includes(file));
  const type=file.endsWith('.js')?'text/javascript':file.endsWith('.json')?'application/json':'application/wasm';
  await route.fulfill({contentType:type,body:await fs.readFile(path.join(directory,file))});
 });
 await page.goto('https://fe-gesture.test/');
 await page.evaluate(async()=>{
  const {wireSurfaceContactTransport}=await import('./fe-render-runtime.js');
  const manifest=await(await fetch('manifest.json')).json();
  const {instance}=await WebAssembly.instantiate(await(await fetch('module.wasm')).arrayBuffer(),{});
  const api=instance.exports,resources=manifest.resources.map(()=>0n);
  window.initial=[...api.fe_surface_initialize_v1()];window.state=[...initial];window.observed=[];
  window.resetCamera=zoom=>{state=[...initial];if(zoom!==undefined){state.fill(0,0,8);state[8]=zoom;}api.fe_surface_state_replace_v1(...state);};
  resetCamera();
  window.disposeContacts=wireSurfaceContactTransport(document.querySelector('canvas'),raw=>{
   const mark=api.fe_cabi_checkpoint?.();
   try{
    state=Array.from(api.fe_surface_contact_v1(raw.phase,raw.device,raw.pointerId,raw.clientX,raw.clientY,raw.buttons,raw.primary?1:0,raw.pressure,raw.timestamp,...Object.values(raw.bounds),...resources));
    observed.push({phase:raw.phase,camera:state.slice(0,12)});
   }finally{if(mark!==undefined)api.fe_cabi_rewind(mark);}
  });
 });
 const cdp=await page.context().newCDPSession(page);
 await cdp.send('Emulation.setTouchEmulationEnabled',{enabled:true,maxTouchPoints:10});
 const touch=async(type,points)=>{await cdp.send('Input.dispatchTouchEvent',{type,touchPoints:points});await page.waitForTimeout(100);};
 const snapshot=()=>page.evaluate(()=>({camera:state.slice(0,12),events:observed.length}));
 const initial=await snapshot();
 await touch('touchStart',[{x:150,y:300,id:7}]);
 await touch('touchMove',[{x:190,y:330,id:7}]);
 const dragged=await snapshot();
 await touch('touchEnd',[]);
 assert.notDeepEqual(dragged.camera.slice(0,8),initial.camera.slice(0,8),'Fresh one-finger drag changes the precise center');
 assert.equal(dragged.camera[8],initial.camera[8]);
 assert.deepEqual((await snapshot()).camera,dragged.camera,'Release introduces no camera motion');
 await page.evaluate(()=>resetCamera(3));
 await touch('touchStart',[{x:140,y:400,id:7},{x:240,y:400,id:90}]);
 await touch('touchMove',[{x:190,y:350,id:7},{x:190,y:450,id:90}]);
 const rotated=await snapshot();
 await touch('touchEnd',[]);
 const near=(a,b,label)=>assert.ok(Math.abs(a-b)<2e-5,`${label}: ${a} versus ${b}`);
 near(rotated.camera[8],3,'Rotation preserves span at its upper bound');
 near(rotated.camera[10],0,'Quarter-turn real basis');near(rotated.camera[11],1,'Quarter-turn imaginary basis');
 const q=[(190+227)*2/844-1,1-400*2/844];
 const center=[rotated.camera.slice(0,4).reduce((a,b)=>a+b),rotated.camera.slice(4,8).reduce((a,b)=>a+b)];
 near(center[0]-q[1]*3,q[0]*3,'Rotated centroid retains world real coordinate');
 near(center[1]+q[0]*3,q[1]*3,'Rotated centroid retains world imaginary coordinate');
 assert.deepEqual(errors,[]);
 const receipt={actualCompiledFe:true,actualBrowserTouchTransport:true,physicalPhone:false,renderSchedulingCovered:false,freshDeepPan:true,releaseStable:true,quarterTurnAtZoomLimit:true,centroidAnchor:true,errors};
 if(receiptPath)await fs.writeFile(receiptPath,JSON.stringify(receipt,null,2)+'\n');console.log(JSON.stringify(receipt));
}finally{if(owned)await browser.close();else await releaseTestPage(browser,page);}
