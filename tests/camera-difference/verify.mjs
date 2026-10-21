import fs from 'node:fs/promises';
import assert from 'node:assert/strict';
import path from 'node:path';
const bundle = process.argv[2];
assert.ok(bundle, 'Usage: node verify.mjs BUNDLE_DIRECTORY [RECEIPT.json]');
const {instance} = await WebAssembly.instantiate(await fs.readFile(path.join(bundle, 'module.wasm')), {});
const api = instance.exports;
api.fe_surface_initialize_v1();
const word = new DataView(new ArrayBuffer(4));
const bits = x => { word.setFloat32(0, x, true); return word.getUint32(0, true); };
function run(base, tail) {
  api.fe_surface_state_replace_v1(base, tail, 0, 0, 0, 0);
  api.fe_cabi_reset();
  const pointer = api.fe_cabi_alloc(52, 4);
  new Uint8Array(api.memory.buffer, pointer, 52).fill(0);
  const event = new DataView(api.memory.buffer, pointer, 52);
  event.setFloat32(28, 16, true);
  event.setFloat32(32, 64, true);
  event.setFloat32(36, 64, true);
  event.setUint32(40, 2, true);
  const out = api.fe_surface_transition_scheduled_v1(pointer, 1);
  return {base, tail, movement: [out[2] >>> 0, out[3] >>> 0], residual: [out[4] >>> 0, out[5] >>> 0]};
}
const cases = [];
for (const base of [0, 1, -1]) {
  const zero = run(base, 0);
  assert.deepEqual(zero.movement, [0, 0]);
  assert.deepEqual(zero.residual, [0, 0]);
  cases.push(zero);
  for (const exponent of [-90, -91, -92, -95, -100, -117]) {
    for (const sign of [-1, 1]) {
      const tail = sign * 2 ** exponent;
      const result = run(base, tail);
      assert.deepEqual(result.movement, [bits(tail), bits(-tail)], 'L10 camera movement must retain these subpixel displacements');
      const residual = exponent >= -91 ? [0, 0] : [bits(tail), bits(-tail)];
      assert.deepEqual(result.residual, residual, 'Packed L8 reference origin must expose its discarded coordinate tail');
      cases.push({...result, exponent});
    }
  }
}
const receipt = {actualWasm: true, count: cases.length, cases,
  scope: 'Actual renderer center_delta and PackedReference/ReferenceReal codecs; reference recurrence and reuse policy unchanged'};
if (process.argv[3]) await fs.writeFile(process.argv[3], JSON.stringify(receipt, null, 2) + '\n');
console.log(JSON.stringify(receipt, null, 2));
