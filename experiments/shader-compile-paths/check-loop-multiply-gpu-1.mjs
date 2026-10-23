import fs from 'node:fs/promises';
import {chromium} from '/lab/argot/scratch/browser/node_modules/playwright-core/index.mjs';
const root=process.env.MB2_COMPILER_PROBE_ROOT??'/lab/argot/scratch/mb2-sonatina-upstream-rebase-20261022';
const code=await fs.readFile(root+'/'+(process.argv[2]??'loop-multiply-diagnostic-1')+'/passes/002-compute.wgsl','utf8');
const cases=JSON.parse(await fs.readFile(root+'/LOOP-MULTIPLY-CORPUS-1.json','utf8'));
const browser=await chromium.launch({executablePath:'/run/current-system/sw/bin/chromium',headless:true,args:['--no-sandbox','--enable-unsafe-webgpu','--use-angle=swiftshader']});
try {
const page=await browser.newPage();await page.route('https://micahscopes.github.io/__multiply-diagnostic',r=>r.fulfill({contentType:'text/html',body:'<!doctype html>'}));await page.goto('https://micahscopes.github.io/__multiply-diagnostic');
const result=await page.evaluate(async({code,cases})=>{
const adapter=await navigator.gpu.requestAdapter();const device=await adapter.requestDevice();const module=device.createShaderModule({code});const messages=(await module.getCompilationInfo()).messages;if(messages.some(m=>m.type==='error'))throw Error(messages.map(m=>m.message).join('\n'));
const pipeline=await device.createComputePipelineAsync({layout:'auto',compute:{module,entryPoint:'main'}});
const input=device.createBuffer({size:72,usage:GPUBufferUsage.STORAGE|GPUBufferUsage.COPY_DST});const output=device.createBuffer({size:40,usage:GPUBufferUsage.STORAGE|GPUBufferUsage.COPY_SRC});const read=device.createBuffer({size:40,usage:GPUBufferUsage.MAP_READ|GPUBufferUsage.COPY_DST});
const group=device.createBindGroup({layout:pipeline.getBindGroupLayout(0),entries:[{binding:0,resource:{buffer:input}},{binding:1,resource:{buffer:output}}]});
let failures=[];
for(let i=0;i<cases.length;i++) {const c=cases[i];device.queue.writeBuffer(input,0,new Uint32Array(c.input));const encoder=device.createCommandEncoder();const pass=encoder.beginComputePass();pass.setPipeline(pipeline);pass.setBindGroup(0,group);pass.dispatchWorkgroups(1);pass.end();encoder.copyBufferToBuffer(output,0,read,0,40);device.queue.submit([encoder.finish()]);await read.mapAsync(GPUMapMode.READ);const actual=Array.from(new Uint32Array(read.getMappedRange()).slice());read.unmap();if(actual.some((x,j)=>x!==c.expected[j]))failures.push({i,actual,expected:c.expected});}
return {cases:cases.length,failures,device:adapter.info.description,diagnosticOnly:true,productionIntegrated:false};
},{code,cases});await fs.writeFile(root+'/'+(process.argv[3]??'LOOP-MULTIPLY-GPU-1.json'),JSON.stringify(result,null,2));console.log(JSON.stringify(result));
} finally {await browser.close();}
