import { releaseTestPage } from './browser-session.mjs';
import assert from 'node:assert/strict';
import fs from 'node:fs/promises';
const {chromium}=await import(process.env.PLAYWRIGHT_MODULE||'playwright-core');
const browser=await chromium.connectOverCDP(process.env.CDP_URL||'http://127.0.0.1:9222');
const page=await browser.newPage();
try{
 const runtime=await fs.readFile(process.env.RUNTIME_FILE||new URL('../artifacts/renderer/fe-render-runtime.js',import.meta.url),'utf8');
 await page.route('https://micahscopes.github.io/__pipeline-unit/**',async route=>{
  const js=route.request().url().endsWith('runtime.mjs');
  await route.fulfill({status:200,contentType:js?'text/javascript':'text/html',body:js?runtime:'<!doctype html><title>Pipeline test</title>'});
 });
 await page.goto('https://micahscopes.github.io/__pipeline-unit/index.html');
 const receipt=await page.evaluate(async()=>{
  const {realizePassPipelines}=await import('./runtime.mjs');
  const records=Array.from({length:10},(_,index)=>({pass:{source_entry:'test_pass_'+index,layout:{mode:'compute'}},shaderSource:'shader',pipelineDescriptor:{compute:{entryPoint:'p'+index}}}));
  let active=0,maximum=0,calls=0;const progress=[];
  const shaderLabels=[],pipelineLabels=[];
  const device={createShaderModule:descriptor=>{shaderLabels.push(descriptor.label);return {};},createComputePipelineAsync:async descriptor=>{
   pipelineLabels.push(descriptor.label);calls++;active++;maximum=Math.max(maximum,active);
   await new Promise(resolve=>setTimeout(resolve,5));active--;
   return {name:descriptor.compute.entryPoint};
  }};
  await Promise.all([realizePassPipelines(device,records,detail=>progress.push(detail)),realizePassPipelines(device,records)]);
  const once=calls,limit=maximum,ordered=records.every((record,index)=>record.pipeline.name==='p'+index);
  const beforeReuse=progress.length;await realizePassPipelines(device,records,detail=>progress.push(detail));
  const reused=calls===once;
  const failing=records.map((record,index)=>({...record,pipeline:null,pipelinePromise:null,pipelineDescriptor:{compute:{entryPoint:'f'+index}}}));
  let started=0,completed=0,inFlight=0,failed=false;
  const broken={createShaderModule:()=>({}),createComputePipelineAsync:async descriptor=>{
   started++;inFlight++;
   await new Promise(resolve=>setTimeout(resolve,descriptor.compute.entryPoint==='f0'?1:20));
   inFlight--;completed++;
   if(descriptor.compute.entryPoint==='f0')throw new Error('expected pipeline failure');
   return {};
  }};
  try{await realizePassPipelines(broken,failing);}catch(error){failed=error.message==='Fe pass: test_pass_0: pipeline creation failed: expected pipeline failure' && error.cause?.message==='expected pipeline failure';}
  return {progressComplete:beforeReuse===10&&progress.length===10&&progress.every((detail,index)=>detail.stage==='pipeline'&&detail.pass==='test_pass_'+index&&detail.index===index+1&&detail.total===10),labels:shaderLabels.every((label,index)=>label===`Fe pass: test_pass_${index}`)&&pipelineLabels.every((label,index)=>label===`Fe pass: test_pass_${index}`),calls:once,maximum:limit,ordered,reused,failurePropagated:failed,failureStarts:started,failureCompletions:completed,inFlightAtRejection:inFlight};
 });
 assert.equal(receipt.progressComplete,true);assert.equal(receipt.labels,true);assert.equal(receipt.calls,10);assert.equal(receipt.maximum,1);assert.equal(receipt.ordered,true);assert.equal(receipt.reused,true);
 assert.equal(receipt.failurePropagated,true);assert.equal(receipt.failureStarts,1);assert.equal(receipt.failureCompletions,1);assert.equal(receipt.inFlightAtRejection,0);
 if(process.env.RECEIPT)await fs.writeFile(process.env.RECEIPT,JSON.stringify(receipt,null,2)+'\n');
 console.log(JSON.stringify(receipt));
}finally{await releaseTestPage(browser,page);}
