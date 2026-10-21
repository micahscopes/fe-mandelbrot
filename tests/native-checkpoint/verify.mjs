// Runs emitted Wasm; it does not emulate the Fe floating arithmetic in JS.
import assert from 'node:assert/strict';
import fs from 'node:fs/promises';
import path from 'node:path';

const directory = process.argv[2];
assert.ok(directory, 'Usage: node verify.mjs FIXTURE_BUNDLE [RECEIPT]');
const manifest = JSON.parse(await fs.readFile(path.join(directory, 'manifest.json'), 'utf8'));
const {instance} = await WebAssembly.instantiate(await fs.readFile(path.join(directory, 'module.wasm')), {});
const returned = instance.exports.fe_surface_initialize_v1();
const values = new Float32Array(typeof returned === 'number' ? [returned] : returned);
const mask = new Uint32Array(values.buffer)[0];
const cases = [
  'seventeen batch splits with exact prepared delta bits',
  'immutable reference exhaustion at suspension',
  'cancellation rebase',
  'escaped orbit',
  'invalid reference glitch',
  'ambiguous escape glitch',
  'nonfinite perturbation glitch',
  '8192 iterations and index8192 with2048 and257 splits',
  'oracle flags, magnitude bits, fade bits and full epoch',
  'zero-work continuation identity',
];
for (const [name, stride, length] of [['compact', 16, 2], ['legacy', 32, 2], ['results', 4, 2]]) {
  const resource = manifest.resources.find(resource => resource.name === name);
  assert.ok(resource, `Missing ${name}`);
  assert.equal(resource.stride, stride, `${name} stride`);
  assert.equal(resource.length, length, `${name} capacity`);
}
const compact = manifest.resources.find(resource => resource.name === 'compact');
assert.deepEqual(compact.element.Record.fields.map(field => [field.name, field.offset, field.scalar || 'u32']), [
  ['control', 0, 'u32'], ['epoch', 4, 'u32'], ['payload.re', 8, 'f32'], ['payload.im', 12, 'f32'],
]);
const receipt = {actualWasm: true, mask, expectedMask: 1023,
  cases: Object.fromEntries(cases.map((name, index) => [name, Boolean(mask & (1 << index))])),
  recordLayout: {compactStride: 16, legacyStride: 32, elements: 2}};
if (process.argv[3]) await fs.writeFile(process.argv[3], JSON.stringify(receipt, null, 2) + '\n');
console.log(JSON.stringify(receipt, null, 2));
assert.equal(mask, 1023, 'Actual Fe continuation differential failed');
