// Exercise real Fe controls and lossless persistence through the resident ABI.
import assert from 'node:assert/strict';
import fs from 'node:fs/promises';
import path from 'node:path';
const [directory, receiptPath] = process.argv.slice(2);
assert.ok(directory, 'Provide a compiled renderer bundle');
const manifest = JSON.parse(await fs.readFile(path.join(directory, 'manifest.json'), 'utf8'));
const {instance} = await WebAssembly.instantiate(await fs.readFile(path.join(directory, 'module.wasm')), {});
const api = instance.exports, resources = manifest.resources.map(() => 0n);
const initial = [...api.fe_surface_initialize_v1()];
const words = values => [...new Uint32Array(new Float32Array(values).buffer)];
let state;
function reset() {
  state = [...initial];
  state[3] = -0; state[7] = -0;
  api.fe_surface_state_replace_v1(...state);
}
function scoped(run) {
  const mark = api.fe_cabi_checkpoint?.() ?? null;
  if (mark === null) api.fe_cabi_reset?.();
  try { return run(); } finally {
    if (mark !== null) api.fe_cabi_rewind(mark);
    else api.fe_cabi_reset?.();
  }
}
function edit(name, value) {
  const ordinal = manifest.surface.params.findIndex(parameter => (parameter.name === name || parameter.name.endsWith('.'+name)));
  assert.ok(ordinal >= 0, `Missing control ${name}`);
  return scoped(() => {
    const pointer = api.fe_cabi_alloc(52, 4), event = new DataView(api.memory.buffer, pointer, 52);
    event.setFloat32(28, 100, true);
    event.setFloat32(32, 512, true); event.setFloat32(36, 512, true);
    event.setUint32(40, 1, true); event.setUint32(44, ordinal, true);
    event.setFloat32(48, value, true);
    state = [...api.fe_surface_transition_scheduled_v1(pointer, 1, ...resources)];
  });
}
function location(hash, apply) {
  return scoped(() => {
    const bytes = new TextEncoder().encode('https://example.test/fractal' + hash);
    const input = api.fe_cabi_alloc(bytes.length, 4), output = api.fe_cabi_alloc(120, 4), length = api.fe_cabi_alloc(4, 4);
    new Uint8Array(api.memory.buffer, input, bytes.length).set(bytes);
    state = [...api.fe_surface_location_v1(apply ? 1 : 0, input, bytes.length, output, 120, length, ...resources)];
    const size = new DataView(api.memory.buffer).getUint32(length, true);
    return new TextDecoder().decode(new Uint8Array(api.memory.buffer, output, size));
  });
}
function roundtrip() {
  const expected = words([...state.slice(0, 10), state[14]]);
  const hash = location('', false);
  assert.equal(location(hash, true), hash, 'An ordinary control edit must produce an accepted canonical URL');
  assert.deepEqual(words([...state.slice(0, 10), state[14]]), expected);
}
reset(); const originalCenter = words(state.slice(0, 8));
edit('zoom', 0.5); assert.deepEqual(words(state.slice(0, 8)), originalCenter);
edit('antialias', 0); assert.deepEqual(words(state.slice(0, 8)), originalCenter);
roundtrip();
const cases = ['unrelated-controls-preserve-deep-coefficients-and-signed-zero'];
for (const [name, offset, values] of [
  ['re.value.lead', 0, [0, -2.5, 1]],
  ['im.value.lead', 4, [0, -1.5, 1.5]],
]) {
  for (const value of values) {
    reset(); const other = offset === 0 ? 4 : 0, untouched = words(state.slice(other, other + 4));
    edit(name, value);
    assert.deepEqual(words(state.slice(offset, offset + 4)), words([value, 0, 0, 0]), 'A changed scalar control sets the complete coordinate');
    assert.deepEqual(words(state.slice(other, other + 4)), untouched, 'Coordinate siblings are preserved');
    roundtrip();
  }
  cases.push(`${name}-zero-and-bounds-roundtrip`);
}
const receipt = {actualWasm: true, cases, editedValues: 6};
if (receiptPath) await fs.writeFile(receiptPath, JSON.stringify(receipt, null, 2) + '\n');
console.log(JSON.stringify(receipt));
