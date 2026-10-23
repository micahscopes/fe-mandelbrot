// Runs the compiled camera-delta compute pass on this device's GPU and compares
// every output word with the exact-arithmetic corpus. Used unchanged by the
// published phone page and by the Node/Chromium runner (../gpu.mjs).
const STAGES = [
  ['final difference', [0]],
  ['target digits', [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]],
  ['target sign', [11]],
  ['origin to f32', [12]],
  ['target to f32', [13]],
  ['difference sign', [14]],
  ['difference digits', [15]],
  ['canary constant', [16]],
  ['raw echo from', [17]],
  ['raw echo to', [18]],
  ['sign bit from input', [19]],
  ['single conversion digits', [20]],
  ['single conversion sign', [21]],
  ['single conversion to f32', [22]],
  ['micro: array in struct loop', [23]],
  ['micro: straight-line', [24]],
  ['micro: struct bool', [25]],
  ['single conversion digits (to)', [26]],
];
const hex = value => (value >>> 0).toString(16).padStart(8, '0');
const asFloat = bits => new Float32Array(new Uint32Array([bits]).buffer)[0];

export async function runProbe(base = '.') {
  const result = {pass: false, errors: [], adapter: null, stages: {}, examples: [], phone: []};
  const manifest = await (await fetch(`${base}/manifest.json`)).json();
  const pass = manifest.passes.find(p => p.source_entry === 'delta_case');
  if (!pass) throw Error('manifest has no delta_case pass');
  const code = await (await fetch(`${base}/${pass.shader}`)).text();
  const corpus = await (await fetch(`${base}/corpus.json`)).json();
  const per = corpus.wordsPerCase, count = corpus.cases.length;
  result.cases = count;
  result.shaderBytes = code.length;
  if (!navigator.gpu) throw Error('WebGPU is not available in this browser');
  const adapter = await navigator.gpu.requestAdapter();
  if (!adapter) throw Error('No GPU adapter');
  const info = adapter.info || {};
  result.adapter = {vendor: info.vendor, architecture: info.architecture, device: info.device, description: info.description};
  const device = await adapter.requestDevice();
  device.lost.then(info => { result.lost = `${info.reason}: ${info.message}`; });
  device.addEventListener('uncapturederror', e => result.errors.push(e.error.message));
  device.pushErrorScope('validation');
  const module = device.createShaderModule({code});
  const compile = (await module.getCompilationInfo()).messages.filter(m => m.type === 'error').map(m => m.message);
  if (compile.length) throw Error('shader: ' + compile.join('; '));
  const declared = new Set([...code.matchAll(/@group\(0\)\s*@binding\((\d+)\)/g)].map(m => Number(m[1])));
  const bindings = pass.layout.bindings.filter(b => b.group === 0 && declared.has(b.binding));
  const layout = device.createBindGroupLayout({entries: bindings.map(b => ({
    binding: b.binding, visibility: GPUShaderStage.COMPUTE,
    buffer: {type: b.access === 'read' ? 'read-only-storage' : 'storage', minBindingSize: b.span}}))});
  const started = performance.now();
  const pipeline = await device.createComputePipelineAsync({
    layout: device.createPipelineLayout({bindGroupLayouts: [layout]}),
    compute: {module, entryPoint: pass.layout.entry_point}});
  result.pipelineMs = Math.round(performance.now() - started);
  const buffers = new Map();
  const entries = bindings.map(b => {
    // Runtime-sized arrays: the manifest span is a stride, so size them from the corpus.
    const size = b.name === 'inputs' ? corpus.capacity * 8 * 4
      : b.name === 'outputs' ? corpus.capacity * per * 4 : Math.max(4, b.span);
    const buffer = device.createBuffer({size,
      usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST | GPUBufferUsage.COPY_SRC});
    buffers.set(b.name, buffer);
    return {binding: b.binding, resource: {buffer}};
  });
  const inputs = new Uint32Array(buffers.get('inputs').size / 4);
  corpus.cases.forEach((c, i) => inputs.set(c.input, i * 8));
  device.queue.writeBuffer(buffers.get('inputs'), 0, inputs);
  const outputBytes = buffers.get('outputs').size;
  const trapBuffer = buffers.get('trap');
  const trapBytes = trapBuffer ? trapBuffer.size : 0;
  const read = device.createBuffer({size: outputBytes + trapBytes, usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ});
  const encoder = device.createCommandEncoder();
  const compute = encoder.beginComputePass();
  compute.setPipeline(pipeline);
  compute.setBindGroup(0, device.createBindGroup({layout, entries}));
  compute.dispatchWorkgroups(...pass.dispatch);
  compute.end();
  encoder.copyBufferToBuffer(buffers.get('outputs'), 0, read, 0, outputBytes);
  if (trapBuffer) encoder.copyBufferToBuffer(trapBuffer, 0, read, outputBytes, trapBytes);
  device.queue.submit([encoder.finish()]);
  await read.mapAsync(GPUMapMode.READ);
  const mapped = new Uint32Array(read.getMappedRange().slice(0));
  const actual = mapped.subarray(0, outputBytes / 4);
  const trapWords = trapBuffer ? mapped.subarray(outputBytes / 4) : [];
  result.trappedCases = Array.from(trapWords).slice(0, count).filter(Boolean).length;
  result.nonzeroWords = {};
  read.unmap();
  const validation = await device.popErrorScope();
  if (validation) result.errors.push(validation.message);
  for (const [name] of STAGES) result.stages[name] = 0;
  let failedCases = 0;
  corpus.cases.forEach((c, i) => {
    let bad = false;
    for (const [name, offsets] of STAGES) {
      for (const o of offsets) if (actual[i * per + o] !== 0) result.nonzeroWords[name] = (result.nonzeroWords[name] || 0) + 1;
      const differs = offsets.filter(o => actual[i * per + o] !== c.expected[o]);
      if (differs.length) {
        result.stages[name] += 1; bad = true;
        if (result.examples.filter(e => e.stage === name).length < 2) {
          const o = differs[0];
          result.examples.push({case: i, name: c.name, stage: name, word: o,
            expected: hex(c.expected[o]), actual: hex(actual[i * per + o])});
        }
      }
    }
    if (bad) failedCases += 1;
    if (c.name.startsWith('phone-') && result.phone.length < 6 && c.expected[0] !== 0) {
      const a = actual[i * per];
      result.phone.push({name: c.name, expected: asFloat(c.expected[0]), actual: asFloat(a), ok: a === c.expected[0]});
    }
  });
  result.failedCases = failedCases;
  result.pass = failedCases === 0 && result.errors.length === 0 && !result.trappedCases > 0;
  return result;
}

export function summarize(result) {
  if (result.fatal) return `ERROR ${result.fatal}`;
  const stages = Object.entries(result.stages).filter(([, n]) => n).map(([k, n]) => `${k}=${n}`).join(',');
  const wrote = Object.values(result.nonzeroWords || {}).reduce((a, b) => a + b, 0);
  const extra = (result.lost ? ' LOST' : '') + (result.trappedCases ? ` trapped=${result.trappedCases}` : '') + ` nonzero=${wrote}`;
  return `${result.pass ? 'PASS' : 'FAIL'} ${result.cases - result.failedCases}/${result.cases}${stages ? ' bad:' + stages : ''}${extra}`;
}
