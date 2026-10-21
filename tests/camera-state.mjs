// Compare actual resident Fe camera transitions across representation changes.
// Usage: node tests/camera-state.mjs BASELINE_BUNDLE CANDIDATE_BUNDLE [RECEIPT]
import assert from 'node:assert/strict';
import fs from 'node:fs/promises';
import path from 'node:path';

const stride = 52;
const gestures = [
  {kind: 2, timestamp: 16},
  {kind: 8, x: 128, y: 384, buttons: 1, timestamp: 32},
  {kind: 9, x: 160, y: 368, dx: 32, dy: -16, buttons: 1, timestamp: 48},
  {kind: 10, x: 160, y: 368, timestamp: 64},
  {kind: 9, x: 200, y: 300, dx: 40, dy: -68, timestamp: 80},
  {kind: 0, x: 200, y: 300, wheel: -120, timestamp: 96},
  {kind: 0, x: 200, y: 300, wheel: 120, timestamp: 112},
  {kind: 1, parameter: 'zoom', value: 0.5, timestamp: 128},
];

function words(values) {
  const bytes = new ArrayBuffer(values.length * 4);
  const view = new DataView(bytes);
  values.forEach((value, index) => view.setFloat32(index * 4, value, true));
  return [...new Uint32Array(bytes)];
}

async function trace(directory, signedZero) {
  const manifest = JSON.parse(await fs.readFile(path.join(directory, 'manifest.json'), 'utf8'));
  const binding = manifest.layout.bindings.find(binding => binding.role === 'input');
  assert.equal(binding.span, 60);
  assert.equal(binding.members.length, 15);
  assert.deepEqual(binding.members.map(member => [member.offset, member.width, member.scalar]),
    Array.from({length: 15}, (_, index) => [index * 4, 4, 'f32']));
  let wasm;
  try { wasm = await fs.readFile(path.join(directory, 'module.wasm')); }
  catch (error) {
    if (error.code !== 'ENOENT') throw error;
    wasm = await fs.readFile(path.join(directory, 'bundle.wasm'));
  }
  const {instance} = await WebAssembly.instantiate(wasm, {});
  const api = instance.exports;
  const resources = manifest.resources.map(() => 0n);
  const initial = api.fe_surface_initialize_v1();
  assert.equal(initial.length, 15);
  if (signedZero) {
    // Hidden low coefficients must survive whole-camera updates bit for bit.
    initial[3] = -0;
    initial[7] = -0;
  }
  api.fe_surface_state_replace_v1(...initial);
  const samples = [words(initial)];
  for (const event of gestures) {
    const cursor = api.fe_cabi_checkpoint?.() ?? null;
    if (cursor === null) api.fe_cabi_reset?.();
    try {
      const pointer = api.fe_cabi_alloc(stride, 4);
      const view = new DataView(api.memory.buffer, pointer, stride);
      for (const [offset, value] of [
        [0, event.x ?? 0], [4, event.y ?? 0], [8, event.dx ?? 0],
        [12, event.dy ?? 0], [16, event.wheel ?? 0],
        [28, event.timestamp], [32, 512], [36, 512], [48, event.value ?? 0],
      ]) view.setFloat32(offset, value, true);
      view.setUint32(20, 0, true);
      view.setUint32(24, event.buttons ?? 0, true);
      view.setUint32(40, event.kind, true);
      const ordinal = event.parameter
        ? manifest.surface.params.findIndex(parameter => parameter.name === event.parameter)
        : 0;
      assert.ok(ordinal >= 0, 'Missing semantic control: ' + event.parameter);
      view.setUint32(44, ordinal, true);
      const next = api.fe_surface_transition_scheduled_v1(pointer, 1, ...resources);
      assert.equal(next.length, 15);
      samples.push(words(next));
    } finally {
      if (cursor !== null && api.fe_cabi_rewind) api.fe_cabi_rewind(cursor);
      else api.fe_cabi_reset?.();
    }
  }
  return samples;
}

const [baseline, candidate, receipt] = process.argv.slice(2);
assert.ok(baseline && candidate, 'Provide baseline and candidate bundle directories');
for (const signedZero of [false, true]) {
  assert.deepEqual(await trace(candidate, signedZero), await trace(baseline, signedZero),
    'Camera state differs at the actual Wasm ABI, signed-zero case: ' + signedZero);
}
const result = {exactCameraWords: true, statesPerCase: 9, cases: 2, scalarLeaves: 15, span: 60,
  semanticControlOrdinals: true, hiddenSignedZero: true};
if (receipt) await fs.writeFile(receipt, JSON.stringify(result, null, 2) + '\n');
console.log(JSON.stringify(result));
