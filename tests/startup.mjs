// A live explorer must build its GPU graph once and keep its buffers across frames.
import assert from 'node:assert/strict';
import fs from 'node:fs/promises';
import path from 'node:path';
import {releaseTestPage} from './browser-session.mjs';
const {chromium}=await import(process.env.PLAYWRIGHT_MODULE||'playwright-core');
const browser=await chromium.connectOverCDP(process.env.CDP_URL||'http://127.0.0.1:9222');
const page=await browser.newPage({viewport:{width:390,height:844},deviceScaleFactor:3,isMobile:true,hasTouch:true});
const base=process.env.BASE_URL||'https://micahscopes.github.io/fe-mandelbrot/';
const errors=[];page.on('pageerror',e=>errors.push(String(e)));
if(process.env.STAGED_SITE){
 const root=path.resolve(process.env.STAGED_SITE),prefix=new URL(base);
 await page.route(url=>url.origin===prefix.origin&&url.pathname.startsWith(prefix.pathname),async route=>{
  let relative=decodeURIComponent(new URL(route.request().url()).pathname.slice(prefix.pathname.length));if(!relative||relative.endsWith('/'))relative+='index.html';
  const file=path.resolve(root,relative);if(!file.startsWith(root+'/'))return route.fulfill({status:403,body:''});
  const type={'.html':'text/html','.js':'text/javascript','.json':'application/json','.wasm':'application/wasm','.css':'text/css','.wgsl':'text/plain'}[path.extname(file)]||'application/octet-stream';
  try{await route.fulfill({contentType:type,body:await fs.readFile(file)});}catch{await route.fulfill({status:404,body:'Missing staged asset'});}
 });
}
try{
 if(process.env.HOLD_GPU_PIPELINE)await page.addInitScript(()=>{GPUDevice.prototype.createComputePipelineAsync=function(){return new Promise(()=>{});};});
 if(process.env.FAIL_GPU_PIPELINE)await page.addInitScript(()=>{GPUDevice.prototype.createComputePipelineAsync=function(descriptor){return Promise.reject(new Error('Injected driver failure for '+descriptor.label));};});
 if(process.env.BLOCK_GPU)await page.addInitScript(()=>Object.defineProperty(navigator,'gpu',{value:undefined,configurable:true}));
 await page.addInitScript(()=>{
  window.startupAllocations=[];window.startupPipelines=0;window.startupInFlight=0;window.startupPeak=0;
  if(typeof GPUDevice==='undefined')return;
  const create=GPUDevice.prototype.createBuffer;
  GPUDevice.prototype.createBuffer=function(options){startupAllocations.push(options.size);return create.call(this,options);};
  for(const method of ['createComputePipelineAsync','createRenderPipelineAsync']){
   const original=GPUDevice.prototype[method];GPUDevice.prototype[method]=function(...args){
    startupPipelines++;startupInFlight++;startupPeak=Math.max(startupPeak,startupInFlight);
    try{return original.apply(this,args).finally(()=>{startupInFlight--;});}
    catch(error){startupInFlight--;throw error;}
   };
  }
 });
 await page.goto(new URL('index.html',base).href);
 if(process.env.HOLD_GPU_PIPELINE){await page.waitForFunction(()=>document.querySelector('#status')?.textContent.includes('Preparing GPU pipeline 1/18: initialize_order'),null,{timeout:60000});await page.waitForFunction(()=>startupPipelines===1);}
 else await page.waitForFunction(()=>['live','error'].includes(document.querySelector('fe-surface')?.state),null,{timeout:60000});
 let receipt;
 if(process.env.HOLD_GPU_PIPELINE){
  receipt=await page.evaluate(()=>({state:document.querySelector('fe-surface').state,message:document.querySelector('#status').textContent,hidden:document.querySelector('#status').hidden,pipelines:startupPipelines}));
  assert.equal(receipt.hidden,false);assert.equal(receipt.pipelines,1);assert.match(receipt.message,/Preparing GPU pipeline 1\/18: initialize_order/);
 }else if(process.env.FAIL_GPU_PIPELINE){
  receipt=await page.evaluate(()=>({state:document.querySelector('fe-surface').state,message:document.querySelector('#status').textContent,hidden:document.querySelector('#status').hidden,pipelines:startupPipelines}));
  assert.equal(receipt.state,'error');assert.equal(receipt.hidden,false);assert.match(receipt.message,/Fe pass: .+: pipeline creation failed: Injected driver failure for Fe pass:/);assert.equal(receipt.pipelines,1);
 }else if(process.env.BLOCK_GPU){
  receipt=await page.evaluate(()=>({state:document.querySelector('fe-surface').state,message:document.querySelector('#status').textContent,hidden:document.querySelector('#status').hidden,pipelines:startupPipelines}));
  assert.equal(receipt.state,'error');assert.equal(receipt.hidden,false);assert.match(receipt.message,/WebGPU/);assert.equal(receipt.pipelines,0);
 }else{
  const before=await page.evaluate(()=>{
   const s=document.querySelector('fe-surface');window.startupResources=new Map(s._gpu.resourceBuffers);
   return{state:s.state,pipelines:startupPipelines,maximumPipelineCallsInFlight:startupPeak,passes:s._manifest.passes.length,allocatedBytes:startupAllocations.reduce((a,b)=>a+b,0),largeBuffers:startupAllocations.filter(n=>n>=1048576).length};
  });
  assert.equal(before.state,'live');assert.equal(before.maximumPipelineCallsInFlight,1,'Bound startup compiler pressure');assert.equal(before.pipelines,before.passes,'One pipeline realization per pass');
  await page.waitForTimeout(1200);
  const after=await page.evaluate(()=>{const s=document.querySelector('fe-surface');return{state:s.state,pipelines:startupPipelines,largeBuffers:startupAllocations.filter(n=>n>=1048576).length,reused:[...startupResources].every(([name,buffer])=>s._gpu.resourceBuffers.get(name)===buffer)};});
  assert.equal(after.state,'live');assert.equal(after.pipelines,before.pipelines);assert.equal(after.largeBuffers,before.largeBuffers);assert.equal(after.reused,true);
  receipt={responsiveDesktop:true,physicalPhone:false,oneGraph:true,buffersReused:true,...before};
 }
 assert.deepEqual(errors,[]);receipt.errors=errors;
 if(process.env.OUT)await fs.writeFile(process.env.OUT,JSON.stringify(receipt,null,2)+'\n');console.log(JSON.stringify(receipt));
}finally{await releaseTestPage(browser,page);}
