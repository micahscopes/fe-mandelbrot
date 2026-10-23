// Real compiled Fe location/contact lanes, with responsive desktop Chrome input.
import assert from 'node:assert/strict';
import fs from 'node:fs/promises';
import path from 'node:path';
import {releaseTestPage} from './browser-session.mjs';
const {chromium}=await import(process.env.PLAYWRIGHT_MODULE||'playwright-core');
const browser=await chromium.connectOverCDP(process.env.CDP_URL||'http://127.0.0.1:9222');
const page=await browser.newPage({viewport:{width:512,height:512},deviceScaleFactor:1,isMobile:true,hasTouch:true});
const base=process.env.BASE_URL||'https://micahscopes.github.io/fe-mandelbrot/';
const errors=[];page.on('pageerror',e=>errors.push(String(e)));
if(process.env.STAGED_SITE){
 const root=path.resolve(process.env.STAGED_SITE),prefix=new URL(base);
 await page.route(url=>url.origin===prefix.origin&&url.pathname.startsWith(prefix.pathname),async route=>{
  let relative=decodeURIComponent(new URL(route.request().url()).pathname.slice(prefix.pathname.length));
  if(!relative||relative.endsWith('/'))relative+='index.html';
  const file=path.resolve(root,relative);if(!file.startsWith(root+'/'))return route.fulfill({status:403,body:''});
  const type={'.html':'text/html','.js':'text/javascript','.json':'application/json','.wasm':'application/wasm','.css':'text/css','.wgsl':'text/plain','.view':'application/octet-stream','.fe':'text/plain'}[path.extname(file)]||'application/octet-stream';
  try{await route.fulfill({contentType:type,body:await fs.readFile(file)});}catch{await route.fulfill({status:404,body:'Missing staged asset'});}
 });
}
function bits(value){const b=new ArrayBuffer(4),v=new DataView(b);v.setFloat32(0,value,true);return v.getUint32(0,true);}
function fragment(camera,aa=1){const raw=[...camera,aa].map(x=>bits(x).toString(16).padStart(8,'0'));return '#v1:'+raw.slice(0,4).join('.')+':'+raw.slice(4,8).join('.')+':'+raw.slice(8).join(':');}
const snapshot=()=>page.evaluate(()=>{const s=document.querySelector('fe-surface'),r=s._liveCanvas.getBoundingClientRect();return{state:[...s._uniforms],canvas:[s._liveCanvas.width,s._liveCanvas.height],bounds:{left:r.left,top:r.top,width:r.width,height:r.height},url:location.href,history:history.length,first:window.firstFePresentation};});
let cdp;
try{
 await page.addInitScript(()=>{
  const define=customElements.define.bind(customElements);
  customElements.define=function(name,constructor,options){
   if(name==='fe-surface'){
    const present=constructor.prototype._presentOn;
    constructor.prototype._presentOn=function(context,uniforms,...rest){window.firstFePresentation??=[...uniforms];return present.call(this,context,uniforms,...rest);};
   }
   return define(name,constructor,options);
  };
 });
 const restoredCamera=[-0.5,0,0,-0,0,0,0,-0,0.5,1024];
 const restoredHash=fragment(restoredCamera,-0);
 await page.goto(new URL('index.html?keep=this'+restoredHash,base).href);
 await page.waitForFunction(()=>document.querySelector('fe-surface')?.state==='live',null,{timeout:90000});
 let actual=await snapshot();
 assert.deepEqual(actual.state.slice(0,10).map(bits),restoredCamera.map(bits));
 assert.equal(bits(actual.state[14]),bits(-0));
 assert.deepEqual(actual.canvas,[1024,1024]);
 assert.ok(actual.first,'Actual presentation was observed');
 assert.deepEqual(actual.first.slice(0,10).map(bits),restoredCamera.map(bits),'Restore precedes the first presentation');
 await page.setViewportSize({width:640,height:640});await page.waitForTimeout(350);
 actual=await snapshot();assert.deepEqual(actual.canvas,[1024,1024]);assert.equal(actual.state[9],1024);
 const historyLength=actual.history;
 const broadCamera=[0,0,0,0,0,0,0,0,2,512],broadHash=fragment(broadCamera);
 await page.evaluate(hash=>{location.hash=hash;},broadHash);
 await page.waitForFunction(()=>document.querySelector('fe-surface')._uniforms[8]===2);
 assert.equal(new URL((await snapshot()).url).searchParams.get('keep'),'this');
 await page.goBack();await page.waitForFunction(()=>document.querySelector('fe-surface')._uniforms[8]===0.5);
 await page.goForward();await page.waitForFunction(()=>document.querySelector('fe-surface')._uniforms[8]===2);
 assert.equal((await snapshot()).history,historyLength+1,'Updates use replaceState');
 await page.setViewportSize({width:390,height:844});await page.waitForTimeout(350);
 const before=await snapshot();
 cdp=await page.context().newCDPSession(page);
 const points=[{x:150,y:300,id:7},{x:230,y:300,id:90}];
 await cdp.send('Input.dispatchTouchEvent',{type:'touchStart',touchPoints:points});
 await page.waitForTimeout(100);
 await cdp.send('Input.dispatchTouchEvent',{type:'touchMove',touchPoints:[{x:110,y:300,id:7},{x:270,y:300,id:90}]});
 await page.waitForFunction(()=>document.querySelector('fe-surface')._uniforms[8]<1.5);
 const pinched=await snapshot(),zoom=pinched.state[8];
 assert.ok(Math.abs(zoom-1)<2e-5,'Pinch ratio controls span');
 const normalized=[(190-before.bounds.left)*2/before.bounds.width-1,1-(300-before.bounds.top)*2/before.bounds.height];
 const center=[pinched.state.slice(0,4).reduce((a,b)=>a+b,0),pinched.state.slice(4,8).reduce((a,b)=>a+b,0)];
 for(let i=0;i<2;i++)assert.ok(Math.abs(center[i]-normalized[i]*(2-zoom))<2e-5,'Centroid world anchor is preserved');
 await cdp.send('Input.dispatchTouchEvent',{type:'touchMove',touchPoints:[{x:126,y:308,id:7},{x:286,y:308,id:90}]});
 await page.waitForTimeout(200);const panned=await snapshot();
 assert.ok(Math.abs(panned.state[8]-zoom)<2e-5,'Two-finger pan keeps the span');
 const expected=[center[0]-32*zoom/before.bounds.width,center[1]+16*zoom/before.bounds.height];
 const pannedCenter=[panned.state.slice(0,4).reduce((a,b)=>a+b,0),panned.state.slice(4,8).reduce((a,b)=>a+b,0)];
 for(let i=0;i<2;i++)assert.ok(Math.abs(pannedCenter[i]-expected[i])<2e-5,'Two-finger pan uses CSS viewport geometry');
 await cdp.send('Input.dispatchTouchEvent',{type:'touchEnd',touchPoints:[]});
 await page.waitForFunction(()=>document.querySelector('fe-surface')._uniforms[15]===0);
 const released=await snapshot();await page.waitForTimeout(300);
 assert.deepEqual((await snapshot()).state.slice(0,12).map(bits),released.state.slice(0,12).map(bits),'Release and delayed rendering do not shift the camera');
 assert.equal(new URL(released.url).searchParams.get('keep'),'this');
 assert.deepEqual(errors,[]);
 const receipt={actualCompiledBrowser:true,responsiveDesktop:true,physicalPhone:false,restoredBeforeFirstFrame:true,backForward:true,queryPreserved:true,restoredBackingAcrossResize:true,pinchWorldAnchor:true,twoFingerPan:true,releaseStable:true,errors};
 if(process.env.OUT)await fs.writeFile(process.env.OUT,JSON.stringify(receipt,null,2)+'\n');console.log(JSON.stringify(receipt));
}finally{
 if(cdp){await cdp.send('Input.dispatchTouchEvent',{type:'touchCancel',touchPoints:[]}).catch(()=>{});await cdp.detach();}
 await releaseTestPage(browser,page);
}
