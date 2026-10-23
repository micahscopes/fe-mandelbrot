// Actual Fe GPU cache reprojection, touch transport, and presented-pixel regression.
// Use STAGED_SITE for a locally assembled site; pass an optional receipt path.
import { releaseTestPage, stageSite } from './browser-session.mjs';
import assert from 'node:assert/strict';
const {chromium}=await import(process.env.PLAYWRIGHT_MODULE||'playwright-core');
const browser=process.env.OWNED_SOFTWARE_BROWSER==='1'?await chromium.launch({executablePath:'/run/current-system/sw/bin/chromium',headless:true,args:['--no-sandbox','--enable-unsafe-webgpu','--use-angle=vulkan','--use-vulkan=swiftshader','--enable-features=Vulkan','--disable-vulkan-surface']}):await chromium.connectOverCDP(process.env.CDP_URL||'http://127.0.0.1:9222');
const page=await browser.newPage({viewport:{width:393,height:648},deviceScaleFactor:2.625,isMobile:true,hasTouch:true});
const errors=[];page.on('pageerror',e=>errors.push(String(e)));page.on('console',m=>console.log(m.type()+': '+m.text()));
const base=process.env.BASE_URL||'https://micahscopes.github.io/fe-mandelbrot/';
await stageSite(page, base);
try {
 await page.addInitScript(()=>{const create=GPUDevice.prototype.createBuffer;GPUDevice.prototype.createBuffer=function(o){return create.call(this,{...o,usage:o.usage&GPUBufferUsage.STORAGE?o.usage|GPUBufferUsage.COPY_SRC:o.usage});};});
 await page.addInitScript(()=>{
 const configure=GPUCanvasContext.prototype.configure,get=GPUCanvasContext.prototype.getCurrentTexture,submit=GPUQueue.prototype.submit;
 GPUCanvasContext.prototype.configure=function(o){return configure.call(this,{...o,usage:(o.usage??GPUTextureUsage.RENDER_ATTACHMENT)|GPUTextureUsage.COPY_SRC});};
 GPUCanvasContext.prototype.getCurrentTexture=function(){const t=get.call(this);window.__lastTexture=t;window.__freshTexture=true;return t;};
 GPUQueue.prototype.submit=function(commands){
 if(window.__captureNext && window.__freshTexture && window.__lastTexture){window.__freshTexture=false;window.__captureNext=false;const t=window.__lastTexture,d=document.querySelector('fe-surface')._gpu.device;
 const stride=Math.ceil(t.width*4/256)*256,b=d.createBuffer({size:stride*t.height,usage:GPUBufferUsage.COPY_DST|GPUBufferUsage.MAP_READ}),e=d.createCommandEncoder();
 e.copyTextureToBuffer({texture:t},{buffer:b,bytesPerRow:stride},{width:t.width,height:t.height});window.__capture={b,stride,w:t.width,h:t.height};return submit.call(this,[...commands,e.finish()]);}
 window.__freshTexture=false;return submit.call(this,commands);};
 });
 const word=x=>new Uint32Array(new Float32Array([x]).buffer)[0].toString(16).padStart(8,'0');
 const camera=[-1.1723285913467407,-8.653259442326089e-9,1.6498233784400384e-16,1.0576053052462748e-24,.29582354426383972,-4.263839503693134e-9,-2.1798654948407476e-16,-3.7684836019798525e-24,3.89e-8,512,0],raw=camera.map(word);
 const hash='#v1:'+raw.slice(0,4).join('.')+':'+raw.slice(4,8).join('.')+':'+raw.slice(8).join(':');
 await page.goto(new URL('index.html?trace=1#v2:bf960edd.32e929c0.253e3631.17a3a810:3e977631.311a4ce5.2295b737.9564a000:33271301:44e22000:3f800000:3f800000:00000000',base).href);
 await page.waitForFunction(()=>document.querySelector('fe-surface')?.state==='live',null,{timeout:180000});
 async function snapshot(){return page.evaluate(async()=>{
  const s=document.querySelector('fe-surface'),g=s._gpu,d=g.device;
  const resources=['cache','reference','orbit'];
  const b=d.createBuffer({size:456,usage:GPUBufferUsage.COPY_DST|GPUBufferUsage.MAP_READ}),e=d.createCommandEncoder();
  e.copyBufferToBuffer(g.resourceBuffers.get('cache'),0,b,0,240);
  e.copyBufferToBuffer(g.resourceBuffers.get('reference'),0,b,240,28);
  for(let bank=0;bank<2;bank++)e.copyBufferToBuffer(g.resourceBuffers.get('orbit'),(bank*8195+8194)*32,b,272+bank*32,32);
  const points=[[0,0],[128,256],[256,256],[384,256],[511,511]];
  points.forEach(([x,y],i)=>e.copyBufferToBuffer(g.resourceBuffers.get('snapshot_oracle'),(y*2048+x)*12,b,336+i*12,12));
  e.copyBufferToBuffer(g.resourceBuffers.get('camera_trace'),0,b,400,56);d.queue.submit([e.finish()]);await b.mapAsync(GPUMapMode.READ);const mapped=b.getMappedRange(),words=Array.from(new Uint32Array(mapped)),floats=Array.from(new Float32Array(mapped));b.unmap();b.destroy();
  return {url:location.href,params:s._paramsSnapshot(),camera:s._uniforms.slice(0,12),cacheCamera:floats.slice(0,12),initialCamera:floats.slice(40,52),trace:words.slice(100,114),epoch:words[18],completed:words[19],snapshotEpoch:words[38],initialCompleted:words[59],reference:words.slice(60,67),meta:[floats.slice(68,76),floats.slice(76,84)],points,oracle:points.map((_,i)=>words.slice(84+i*3,87+i*3))};
 });}
 async function frame(){
 await page.evaluate(()=>{window.__capture=null;window.__captureNext=true;});await page.waitForFunction(()=>window.__capture);
 return page.evaluate(async()=>{const {b,stride,w,h}=window.__capture;await b.mapAsync(GPUMapMode.READ);const v=new Uint8Array(b.getMappedRange());let nonzero=0,hash=2166136261;const colors=new Set();for(let y=0;y<h;y++)for(let x=0;x<w;x++){const i=y*stride+x*4;colors.add(v[i]+256*v[i+1]+65536*v[i+2]);if(v[i]||v[i+1]||v[i+2])nonzero++;for(let k=0;k<4;k++)hash=Math.imul(hash^v[i+k],16777619)>>>0;}const points=[[0,0],[w>>2,h>>1],[w>>1,h>>1],[3*w>>2,h>>1],[w-1,h-1]],rgba=points.map(([x,y])=>Array.from(v.slice(y*stride+x*4,y*stride+x*4+4)));b.unmap();b.destroy();return{w,h,nonzero,colors:colors.size,hash,rgba};});}
 async function initialReady(){let last;for(let i=0;i<300;i++){last=await snapshot();if(last.initialCompleted===1)return last;await page.waitForTimeout(100);}throw Error('Initial preview never published '+JSON.stringify(last));}
 async function settled(){let last;for(let i=0;i<350;i++){last=await snapshot();if(last.completed===1&&last.epoch===last.snapshotEpoch)return last;await page.waitForTimeout(100);}throw Error('Not settled '+JSON.stringify(last));}
 const before=await initialReady();assert.ok(before.url.includes('v2:bf960edd.32e929c0.253e3631.17a3a810:3e977631.311a4ce5.2295b737.9564a000:33271301:44e22000:3f800000:3f800000:00000000'),'Replay must retain the actual user camera');console.log('BEFORE '+JSON.stringify(before));const beforeFrame=await frame();console.log('FRAME_BEFORE '+JSON.stringify(beforeFrame));
 const cdp=await page.context().newCDPSession(page);await cdp.send('Emulation.setTouchEmulationEnabled',{enabled:true,maxTouchPoints:10});
 let layoutStep=0;const touch=async(type,points)=>{if(type==='touchMove')await page.evaluate(step=>{document.querySelector('fe-surface').style.left=`calc(50% + ${step*0.125}px)`;},++layoutStep);await cdp.send('Input.dispatchTouchEvent',{type,touchPoints:points});await page.waitForTimeout(300);};
 await touch('touchStart',[{x:150,y:350,id:7}]);await touch('touchMove',[{x:190,y:380,id:7}]);
 const duringOne=await snapshot();assert.deepEqual(duringOne.initialCamera,before.initialCamera,'Initial cache camera must remain stable during drag');assert.notEqual(duringOne.trace[7],0,'GPU must retain horizontal cache translation');assert.notEqual(duringOne.trace[8],0,'GPU must retain vertical cache translation');console.log('ONE_DURING '+JSON.stringify(duringOne));const oneFrame=await frame();assert.notEqual(oneFrame.hash,beforeFrame.hash,'One-finger drag must change presented pixels');console.log('FRAME_ONE_DURING '+JSON.stringify(oneFrame));await touch('touchEnd',[]);
 const one=await snapshot();console.log('ONE_AFTER '+JSON.stringify(one));assert.equal(one.camera[8],before.camera[8]);assert.deepEqual(one.camera.slice(10,12),[1,0]);assert.ok(Math.abs(one.meta[1][2]+80*before.camera[8]/648)<1e-14,'Actual GPU one-finger translation survives layout change');console.log('FRAME_ONE '+JSON.stringify(await frame()));
 await touch('touchStart',[{x:120,y:350,id:7},{x:220,y:350,id:90}]);
 await touch('touchMove',[{x:160,y:370,id:7},{x:260,y:370,id:90}]);
 console.log('TWO_DURING '+JSON.stringify(await snapshot()));const twoFrame=await frame();assert.notEqual(twoFrame.hash,oneFrame.hash,'Two-finger drag must change presented pixels');console.log('FRAME_TWO_DURING '+JSON.stringify(twoFrame));await touch('touchEnd',[]);
 const two=await snapshot();console.log('TWO_AFTER '+JSON.stringify(two));assert.equal(two.camera[8],before.camera[8]);assert.deepEqual(two.camera.slice(10,12),[1,0]);assert.ok(Math.abs(two.meta[1][2]+160*before.camera[8]/648)<1e-14,'Actual GPU two-finger translation survives layout change');assert.deepEqual(errors,[]);console.log('FRAME_TWO '+JSON.stringify(await frame()));
 const fs=await import('node:fs/promises');if(process.argv[2])await fs.writeFile(process.argv[2],JSON.stringify({before,one,two,errors},null,2));
}finally{await releaseTestPage(browser,page);}
