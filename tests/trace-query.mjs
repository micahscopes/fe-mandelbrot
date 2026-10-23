// The ?trace=1 diagnostic must not depend on other query parameters.
// Actual compiled Fe/Wasm: node tests/trace-query.mjs BUNDLE   (e.g. artifacts/renderer)
import assert from 'node:assert/strict';
import fs from 'node:fs/promises';
import path from 'node:path';
const [bundle] = process.argv.slice(2);
assert.ok(bundle, 'Usage: node trace-query.mjs BUNDLE');
const manifest = JSON.parse(await fs.readFile(path.join(bundle, 'manifest.json'), 'utf8'));
const {instance} = await WebAssembly.instantiate(await fs.readFile(path.join(bundle, 'module.wasm')), {});
const api = instance.exports, resources = manifest.resources.map(() => 0n);
api.fe_surface_state_replace_v1(...Array.from(api.fe_surface_initialize_v1()));
function hashFor(query, hash, capacity = 256) {
  const mark = api.fe_cabi_checkpoint?.();
  try {
    const input = new TextEncoder().encode('https://example.test/fractal' + query + hash);
    const ptr = api.fe_cabi_alloc(input.length, 4), out = api.fe_cabi_alloc(capacity, 4), len = api.fe_cabi_alloc(4, 4);
    new Uint8Array(api.memory.buffer, ptr, input.length).set(input);
    api.fe_surface_location_v1(1, ptr, input.length, out, capacity, len, ...resources);
    const size = new DataView(api.memory.buffer).getUint32(len, true);
    return new TextDecoder().decode(new Uint8Array(api.memory.buffer, out, size));
  } finally { if (mark !== undefined) api.fe_cabi_rewind(mark); }
}
const base = hashFor('', '');
const traced = hashFor('?trace=1', base);
assert.equal(base.length, 120);
assert.equal(traced.length, 248, 'the GPU report adds 128 bytes');
assert.ok(traced.includes('~g:'));
const cases = [
  ['?trace=1&r=7279a31', true], ['?r=7279a31&trace=1', true], ['?a=1&trace=1&b=2', true],
  ['?trace=1&trace=0', true],
  ['?trace=0', false], ['?trace=0&r=1', false], ['?trace=10', false], ['?trace=', false],
  ['?xtrace=1', false], ['?trace=1x', false], ['?r=1', false], ['?', false],
];
for (const [query, expected] of cases) {
  const length = hashFor(query, base).length;
  assert.equal(length, expected ? 248 : 120, `${query} should ${expected ? '' : 'not '}enable the trace`);
}
console.log(JSON.stringify({actualFeWasm: true, cases: cases.length + 1, traceNeedsOnlyOnePair: true}));
