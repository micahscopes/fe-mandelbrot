// Runtime batches on one unchanged16-case Fe kernel; no shader rewriting.
import assert from 'node:assert/strict';
import fs from 'node:fs/promises';
import path from 'node:path';
import {createHash} from 'node:crypto';
const [bundleDir, corpusPath, outDir] = process.argv.slice(2);
assert.ok(outDir,'Usage: node gpu-integer-sum-corpus.mjs BUNDLE CORPUS_JSON OUTPUT_DIRECTORY');
const sha=data=>createHash('sha256').update(data).digest('hex');
const corpusBytes=await fs.readFile(corpusPath), corpus=JSON.parse(corpusBytes);
assert.equal(corpus.batchSize,16);assert.equal(corpus.count,corpus.cases.length);assert.equal(corpus.count%16,0);
const manifestBytes=await fs.readFile(path.join(bundleDir,'manifest.json')),manifest=JSON.parse(manifestBytes);
const passes=manifest.passes.filter(p=>p.shader_stages.includes('compute'));
assert.deepEqual(passes.map(p=>p.source_entry),['evaluate_primitives']);
const pass={...passes[0],code:await fs.readFile(path.join(bundleDir,passes[0].shader),'utf8')};
assert.deepEqual(pass.dispatch,[1,1,1]);
for(const [name,length] of [['operands',32],['results',128]]){
 const r=manifest.resources.find(r=>r.name===name);assert.ok(r);assert.equal(r.length,length);assert.equal(r.stride,4);
}
const inputWords=corpus.cases.flatMap(c=>c.inputBits),inputBytes=Buffer.alloc(inputWords.length*4);
inputWords.forEach((w,i)=>inputBytes.writeUInt32LE(w,i*4));
assert.equal(sha(inputBytes),corpus.inputsSha256);
await fs.mkdir(outDir,{recursive:true});
await fs.writeFile(path.join(outDir,'CASES.json'),corpusBytes);
await fs.writeFile(path.join(outDir,'INPUTS.bin'),inputBytes);
const {chromium}=await import(process.env.PLAYWRIGHT_MODULE||'playwright-core');
const browser=await chromium.connectOverCDP(process.env.CDP_URL||'http://127.0.0.1:9222');
const page=await browser.newPage();
try{
 const url='https://micahscopes.github.io/__integer-sum-corpus/';
 await page.route(url,r=>r.fulfill({contentType:'text/html',body:'<title>Fe integer sum corpus</title>'}));
 await page.goto(url);
 const gpu=await page.evaluate(async({resources,pass,inputWords})=>{
  const adapter=await navigator.gpu.requestAdapter();if(!adapter)throw Error('No GPU adapter');
  const device=await adapter.requestDevice(),owned=[],buffers=new Map(),errors=[],traps=[];
  device.addEventListener('uncapturederror',e=>errors.push(e.error.message));
  const alloc=(size,usage)=>{const b=device.createBuffer({size,usage});owned.push(b);return b;};
  const usage=GPUBufferUsage.STORAGE|GPUBufferUsage.COPY_SRC|GPUBufferUsage.COPY_DST;
  device.pushErrorScope('validation');
  try{
   for(const r of resources)buffers.set(r.name,alloc(r.length*r.stride,usage));
   const module=device.createShaderModule({code:pass.code});
   const info=await module.getCompilationInfo();const shaderErrors=info.messages.filter(m=>m.type==='error').map(m=>m.message);
   if(shaderErrors.length)throw Error(JSON.stringify(shaderErrors));
   const declared=new Set([...pass.code.matchAll(/@group\(0\)\s*@binding\((\d+)\)/g)].map(m=>Number(m[1])));
   const bindings=pass.layout.bindings.filter(b=>b.group===0&&declared.has(b.binding));
   if(bindings.length!==declared.size)throw Error('Manifest/shader binding mismatch');
   const layout=device.createBindGroupLayout({entries:bindings.map(b=>({binding:b.binding,visibility:GPUShaderStage.COMPUTE,
    buffer:{type:b.access==='read'?'read-only-storage':'storage',minBindingSize:b.span}}))});
   const pipeline=await device.createComputePipelineAsync({layout:device.createPipelineLayout({bindGroupLayouts:[layout]}),compute:{module,entryPoint:pass.layout.entry_point}});
   const entries=bindings.map(b=>{
    let buffer;
    if(b.role==='resource')buffer=buffers.get(b.name);
    else if(b.role==='input')buffer=alloc(Math.max(16,b.span),usage);
    else if(b.name==='trap'){buffer=alloc(Math.max(4,b.span),usage);traps.push({buffer,size:Math.max(4,b.span)});}
    else throw Error(`Unexpected binding ${b.name}/${b.role}`);
    if(!buffer)throw Error(`Missing buffer ${b.name}`);
    return {binding:b.binding,resource:{buffer}};
   });
   const group=device.createBindGroup({layout,entries});
   // Reuse this pipeline, bind group, every GPU buffer, and one readback mapping.
   const resultSize=512,trapSize=traps.reduce((n,t)=>n+t.size,0);
   const readback=alloc(resultSize+trapSize,GPUBufferUsage.COPY_DST|GPUBufferUsage.MAP_READ);
   const results=[],trapFailures=[];let batches=0;
   for(let start=0;start<inputWords.length;start+=32){
    device.queue.writeBuffer(buffers.get('operands'),0,Uint32Array.from(inputWords.slice(start,start+32)));
    for(const trap of traps)device.queue.writeBuffer(trap.buffer,0,new Uint8Array(trap.size));
    const encoder=device.createCommandEncoder(),compute=encoder.beginComputePass();
    compute.setPipeline(pipeline);compute.setBindGroup(0,group);compute.dispatchWorkgroups(...pass.dispatch);compute.end();
    encoder.copyBufferToBuffer(buffers.get('results'),0,readback,0,resultSize);
    let offset=resultSize;for(const trap of traps){encoder.copyBufferToBuffer(trap.buffer,0,readback,offset,trap.size);offset+=trap.size;}
    device.queue.submit([encoder.finish()]);await readback.mapAsync(GPUMapMode.READ);
    const words=new Uint32Array(readback.getMappedRange());
    results.push(...words.slice(0,128));
    const trapWords=[...words.slice(128)];if(trapWords.some(w=>w!==0))trapFailures.push({batch:batches,words:trapWords});
    readback.unmap();batches++;
   }
   const validation=await device.popErrorScope();if(validation)errors.push(validation.message);
   return {adapter:adapter.info,results,trapFailures,shaderErrors,errors,batches,
    allocations:owned.length,pipelinesCreated:1,bindGroupsCreated:1,readbackBuffersCreated:1};
  }finally{for(const b of owned)b.destroy();device.destroy();}
 },{resources:manifest.resources,pass,inputWords});
 assert.equal(gpu.results.length,corpus.count*8);
 const resultBytes=Buffer.alloc(gpu.results.length*4);gpu.results.forEach((w,i)=>resultBytes.writeUInt32LE(w,i*4));
 await fs.writeFile(path.join(outDir,'RESULTS.bin'),resultBytes);
 const rows=[],sumMismatches=[],splitMismatches=[];
 for(let index=0;index<corpus.count;index++){
  const test=corpus.cases[index],actual=gpu.results.slice(index*8,index*8+8),differences=[];
  for(let lane=0;lane<2;lane++)if(actual[lane]!==test.expected[lane]){
   const d={index,kind:test.kind,lane:lane===0?'head':'tail',expected:test.expected[lane],actual:actual[lane],
    zeroSignOnly:(actual[lane]&0x7fffffff)===0&&(test.expected[lane]&0x7fffffff)===0};
   differences.push(d);sumMismatches.push(d);
  }
  const splitDifferences=[];
  for(let operand=0;operand<2;operand++)if(test.splitExpected?.[operand])for(let lane=0;lane<2;lane++){
   const expected=test.splitExpected[operand][lane],value=actual[2+operand*2+lane];
   if(expected!==value){const d={index,operand,lane:lane===0?'high':'low',expected,actual:value,
    zeroSignOnly:(value&0x7fffffff)===0&&(expected&0x7fffffff)===0};splitDifferences.push(d);splitMismatches.push(d);}
  }
  rows.push({index,inputBits:test.inputBits,expected:test.expected,actual,differences,splitDifferences});
 }
 const rowsBytes=Buffer.from(JSON.stringify(rows,null,2)+'\n');await fs.writeFile(path.join(outDir,'RESULTS.json'),rowsBytes);
 const clean=gpu.errors.length===0&&gpu.shaderErrors.length===0&&gpu.trapFailures.length===0;
 const receipt={actualGpu:true,count:corpus.count,batches:gpu.batches,zeroPolicy:corpus.zeroPolicy,nonfinitePolicy:corpus.nonfinitePolicy,
  clean,twoSumPass:clean&&sumMismatches.length===0,
  sumMismatchCount:sumMismatches.length,sumZeroSignOnlyCount:sumMismatches.filter(m=>m.zeroSignOnly).length,
  sumFirstMismatches:sumMismatches.slice(0,32),
  oldSplitMismatchCount:splitMismatches.length,oldSplitNonzeroMismatchCount:splitMismatches.filter(m=>!m.zeroSignOnly).length,
  oldSplitFirstMismatches:splitMismatches.slice(0,16),
  productStatus:'All raw product outputs saved; this corpus gates TwoSum only, no product oracle or correctness claim.',
  shaderErrors:gpu.shaderErrors,errors:gpu.errors,trapFailures:gpu.trapFailures,adapter:gpu.adapter,
  reuse:{pipelines:gpu.pipelinesCreated,bindGroups:gpu.bindGroupsCreated,readbackBuffers:gpu.readbackBuffersCreated,totalBuffers:gpu.allocations},
  hashes:{manifest:sha(manifestBytes),shader:sha(pass.code),cases:sha(corpusBytes),inputs:sha(inputBytes),resultsBinary:sha(resultBytes),resultsJson:sha(rowsBytes)}};
 await fs.writeFile(path.join(outDir,'RECEIPT.json'),JSON.stringify(receipt,null,2)+'\n');
 console.log(JSON.stringify(receipt,null,2));
 assert.ok(clean,'GPU compilation/validation/trap failure');
 assert.deepEqual(sumMismatches,[],'Integer TwoSum head/tail bits differ, including declared signed-zero policy');
}finally{
 await page.close();await browser.close();
}
