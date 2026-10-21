// Execute the fixture's emitted WGSL verbatim in an owned browser tab.
import assert from 'node:assert/strict';
import fs from 'node:fs/promises';
import path from 'node:path';
const [directory, casesPath, receiptPath] = process.argv.slice(2);
assert.ok(casesPath && receiptPath, 'Usage: node gpu-eft.mjs BUNDLE EFT_CASES_JSON RECEIPT');
const casesBytes = await fs.readFile(casesPath);
const oracle = JSON.parse(casesBytes);
assert.equal(oracle.cases.length, 16);
const operandBits = oracle.cases.flatMap(c => c.inputBits);
assert.equal(operandBits.length, 32);
assert.ok(directory, 'Usage: node gpu.mjs FIXTURE_BUNDLE [RECEIPT]');
const manifest = JSON.parse(await fs.readFile(path.join(directory, 'manifest.json'), 'utf8'));
const passes = await Promise.all(manifest.passes.filter(pass => pass.shader_stages.includes('compute'))
  .map(async pass => ({...pass, code: await fs.readFile(path.join(directory, pass.shader), 'utf8')})));
assert.deepEqual(passes.map(pass => pass.source_entry), ['evaluate_primitives']);
for (const [name, length] of [['operands',32],['results',128]]) {
 const r=manifest.resources.find(r=>r.name===name);assert.ok(r);assert.equal(r.length,length);assert.equal(r.stride,4);
}
assert.deepEqual(passes[0].dispatch,[1,1,1]);
const {chromium} = await import(process.env.PLAYWRIGHT_MODULE || 'playwright-core');
const browser = await chromium.connectOverCDP(process.env.CDP_URL || 'http://127.0.0.1:9222');
const page = await browser.newPage();
try {
  const url = 'https://micahscopes.github.io/__eft-primitives-probe/';
  await page.route(url, route => route.fulfill({contentType: 'text/html', body: '<title>Fe EFT primitives probe</title>'}));
  await page.goto(url);
  const receipt = await page.evaluate(async ({resources, passes, operandBits}) => {
    const adapter = await navigator.gpu.requestAdapter();
    if (!adapter) throw Error('No GPU adapter');
    const device = await adapter.requestDevice();
    const buffers = new Map();
    const owned = [];
    const errors = [];
    device.addEventListener('uncapturederror', event => errors.push(event.error.message));
    const allocate = (size, usage) => {
      const buffer = device.createBuffer({size, usage});
      owned.push(buffer);
      return buffer;
    };
    const storageUsage = GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.COPY_DST;
    for (const resource of resources) buffers.set(resource.name, allocate(resource.length * resource.stride, storageUsage));
    device.queue.writeBuffer(buffers.get('operands'), 0, new Uint32Array(operandBits));
    device.pushErrorScope('validation');
    const diagnostics = [];
    const trapBuffers = [];
    try {
      for (const pass of passes) {
        const module = device.createShaderModule({code: pass.code});
        const info = await module.getCompilationInfo();
        diagnostics.push(...info.messages.filter(message => message.type === 'error').map(message => message.message));
        if (diagnostics.length) throw Error(JSON.stringify(diagnostics));
        // An explicit layout retains declared but unused input slots. Auto
        // layout may omit them even when their WGSL declarations remain.
        const declared = new Set([...pass.code.matchAll(/@group\(0\)\s*@binding\((\d+)\)/g)].map(match => Number(match[1])));
        const bindings = pass.layout.bindings.filter(binding => binding.group === 0 && declared.has(binding.binding));
        const groupLayout = device.createBindGroupLayout({entries: bindings.map(binding => ({
          binding: binding.binding,
          visibility: GPUShaderStage.COMPUTE,
          buffer: {type: binding.access === 'read' ? 'read-only-storage' : 'storage', minBindingSize: binding.span},
        }))});
        const pipeline = await device.createComputePipelineAsync({
          layout: device.createPipelineLayout({bindGroupLayouts: [groupLayout]}),
          compute: {module, entryPoint: pass.layout.entry_point},
        });
        const entries = bindings.map(binding => {
          let buffer;
          if (binding.role === 'resource') {
            buffer = buffers.get(binding.name);
            if (!buffer) throw Error(`Unknown resource ${binding.name}`);
          } else if (binding.role === 'input') {
            buffer = allocate(Math.max(16, binding.span), GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST | GPUBufferUsage.UNIFORM);
            device.queue.writeBuffer(buffer, 0, new Uint32Array([0]));
          } else if (binding.name === 'trap') {
            buffer = allocate(Math.max(4, binding.span), storageUsage);
            trapBuffers.push({buffer, size: Math.max(4, binding.span)});
          } else {
            throw Error(`Unexpected fixture binding ${binding.name}/${binding.role}`);
          }
          return {binding: binding.binding, resource: {buffer}};
        });
        if (entries.length !== declared.size) throw Error('Manifest/shader binding mismatch');
        const group = device.createBindGroup({layout: pipeline.getBindGroupLayout(0), entries});
        const encoder = device.createCommandEncoder();
        const compute = encoder.beginComputePass();
        compute.setPipeline(pipeline);
        compute.setBindGroup(0, group);
        compute.dispatchWorkgroups(...pass.dispatch);
        compute.end();
        device.queue.submit([encoder.finish()]);
      }
      const read = async (buffer, size) => {
        const target = allocate(size, GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ);
        const encoder = device.createCommandEncoder();
        encoder.copyBufferToBuffer(buffer, 0, target, 0, size);
        device.queue.submit([encoder.finish()]);
        await target.mapAsync(GPUMapMode.READ);
        const words = [...new Uint32Array(target.getMappedRange())];
        target.unmap();
        return words;
      };
      const results = await read(buffers.get('results'), 512);
      const traps = [];
      for (const trap of trapBuffers) traps.push(await read(trap.buffer, trap.size));
      const validation = await device.popErrorScope();
      if (validation) errors.push(validation.message);
      return {actualGpu: true, adapter: adapter.info, results, traps,
        shaderCompilationErrors: diagnostics, errors, passes: passes.map(pass => pass.source_entry)};
    } finally {
      for (const buffer of owned) buffer.destroy();
      device.destroy();
    }
  }, {resources: manifest.resources, passes, operandBits});
  const {createHash} = await import('node:crypto');
  const sha = data => createHash('sha256').update(data).digest('hex');
  receipt.casesSha256 = sha(casesBytes);
  receipt.shaderSha256 = sha(passes[0].code);
  receipt.cases = oracle.cases.map((test, index) => {
    const actual = receipt.results.slice(index*8,index*8+8);
    const differences = actual.flatMap((value,lane) => value === test.words[lane] ? [] : [{
      lane:oracle.laneNames[lane],expected:test.words[lane],actual:value,
      zeroSignOnly:(value & 0x7fffffff) === 0 && (test.words[lane] & 0x7fffffff) === 0,
    }]);
    return {...test,actual,differences};
  });
  receipt.numericMismatches = receipt.cases.flatMap((c,index)=>c.differences.filter(d=>!d.zeroSignOnly).map(d=>({index,label:c.label,...d})));
  receipt.pass = receipt.numericMismatches.length === 0 && receipt.errors.length === 0
    && receipt.shaderCompilationErrors.length === 0 && receipt.traps.every(ws=>ws.every(w=>w===0));
  await fs.writeFile(receiptPath,JSON.stringify(receipt,null,2)+'\n');
  console.log(JSON.stringify(receipt,null,2));
  assert.deepEqual(receipt.shaderCompilationErrors, []);
  assert.deepEqual(receipt.errors, []);
  assert.ok(receipt.traps.every(words => words.every(word => word === 0)), 'Shader traps');
  assert.deepEqual(receipt.numericMismatches, [], 'Actual GPU primitive differs from exact rational oracle');
} finally {
  await page.close();
  await browser.close();
}
