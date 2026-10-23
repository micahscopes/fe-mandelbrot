import assert from 'node:assert/strict';
import fs from 'node:fs/promises';
import path from 'node:path';
import {releaseTestPage} from '../browser-session.mjs';
const [directory,receiptPath]=process.argv.slice(2);
assert.ok(directory,'Usage: node gpu.mjs BUNDLE [RECEIPT]');
const manifest=JSON.parse(await fs.readFile(path.join(directory,'manifest.json'),'utf8'));
const pass=manifest.passes.find(p=>p.source_entry==='reference_case');
assert.ok(pass,'Missing reference_case');
const code=await fs.readFile(path.join(directory,pass.shader),'utf8');
const cases=JSON.parse(await fs.readFile(new URL('./corpus.json',import.meta.url),'utf8'));
const {chromium}=await import(process.env.PLAYWRIGHT_MODULE||'playwright-core');
const owned=process.env.OWNED_SOFTWARE_BROWSER==='1';
const browser=owned?await chromium.launch({executablePath:process.env.CHROMIUM_BINARY||'/run/current-system/sw/bin/chromium',headless:true,args:['--no-sandbox','--enable-unsafe-webgpu','--use-angle=swiftshader']}):await chromium.connectOverCDP(process.env.CDP_URL||'http://127.0.0.1:9222');
const page=await browser.newPage();
try {
 const url='https://micahscopes.github.io/__reference-kernel-probe/';
 await page.route(url,r=>r.fulfill({contentType:'text/html',body:'<!doctype html><title>Fe reference kernel probe</title>'}));await page.goto(url);
 const result=await page.evaluate(async({code,pass,cases})=>{
  const adapter=await navigator.gpu.requestAdapter();if(!adapter)throw Error('No GPU adapter');const device=await adapter.requestDevice();const errors=[];device.addEventListener('uncapturederror',e=>errors.push(e.error.message));device.pushErrorScope('validation');
  const started=performance.now();const module=device.createShaderModule({code});const messages=(await module.getCompilationInfo()).messages.filter(m=>m.type==='error').map(m=>m.message);if(messages.length)throw Error(JSON.stringify(messages));
  const declared=new Set([...code.matchAll(/@group\(0\)\s*@binding\((\d+)\)/g)].map(m=>Number(m[1])));const bindings=pass.layout.bindings.filter(b=>b.group===0&&declared.has(b.binding));
  const layout=device.createBindGroupLayout({entries:bindings.map(b=>({binding:b.binding,visibility:GPUShaderStage.COMPUTE,buffer:{type:b.access==='read'?'read-only-storage':'storage',minBindingSize:b.span}}))});
  const pipeline=await device.createComputePipelineAsync({layout:device.createPipelineLayout({bindGroupLayouts:[layout]}),compute:{module,entryPoint:pass.layout.entry_point}});const pipelineMs=performance.now()-started;
  const buffers=new Map();let trap=null;
  const entries=bindings.map(b=>{const size=b.name==='inputs'?144:b.name==='outputs'?112:Math.max(4,b.span);const buffer=device.createBuffer({size,usage:GPUBufferUsage.STORAGE|GPUBufferUsage.COPY_DST|GPUBufferUsage.COPY_SRC});buffers.set(b.name,buffer);if(b.name==='trap')trap=buffer;return{binding:b.binding,resource:{buffer}};});
  if(!trap)throw Error('Fixture must retain its trap output');const group=device.createBindGroup({layout,entries});const read=device.createBuffer({size:116,usage:GPUBufferUsage.COPY_DST|GPUBufferUsage.MAP_READ});const failures=[];
  for(let i=0;i<cases.length;i++){
   device.queue.writeBuffer(buffers.get('inputs'),0,new Uint32Array(cases[i].input));device.queue.writeBuffer(buffers.get('outputs'),0,new Uint32Array(28));device.queue.writeBuffer(trap,0,new Uint32Array([0]));const encoder=device.createCommandEncoder();const compute=encoder.beginComputePass();compute.setPipeline(pipeline);compute.setBindGroup(0,group);compute.dispatchWorkgroups(...pass.dispatch);compute.end();encoder.copyBufferToBuffer(buffers.get('outputs'),0,read,0,112);encoder.copyBufferToBuffer(trap,0,read,112,4);device.queue.submit([encoder.finish()]);await read.mapAsync(GPUMapMode.READ);const words=new Uint32Array(read.getMappedRange());const actual=Array.from(words.slice(0,28));actual[19]=words[28];read.unmap();if(actual.some((x,j)=>x!==cases[i].expected[j]))failures.push({case:i,actual,expected:cases[i].expected});
  }
  const validation=await device.popErrorScope();if(validation)errors.push(validation.message);return{cases:cases.length,failures,errors,shaderErrors:messages,pipelineMs,adapter:adapter.info,generatedArithmeticUnchanged:true,scope:'one exact reference step, all signs/limbs, strict escape and eight packed binary32 words'};
 },{code,pass,cases});
 if(receiptPath)await fs.writeFile(receiptPath,JSON.stringify(result,null,2)+'\n');console.log(JSON.stringify(result));assert.deepEqual(result.errors,[]);assert.deepEqual(result.failures,[]);
} finally {if(owned)await browser.close();else await releaseTestPage(browser,page);}
