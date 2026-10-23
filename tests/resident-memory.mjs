// Executes the generated Wasm through the ACTUAL generic runtime's memory
// lifetime methods. DOM stubs permit importing those pure methods in Node;
// no browser behavior is mocked or used to establish arithmetic correctness.
import assert from 'node:assert/strict';
import { readFile } from 'node:fs/promises';
import { pathToFileURL } from 'node:url';
if (!process.env.FE_RESIDENT_BUNDLE) throw Error('Set FE_RESIDENT_BUNDLE');
const bundle = pathToFileURL(process.env.FE_RESIDENT_BUNDLE.replace(/\/?$/, '/'));
const manifest = JSON.parse(await readFile(new URL('manifest.json', bundle)));
globalThis.HTMLElement = class {};
globalThis.customElements = { get() {}, define() {} };
const runtime = await import(new URL('fe-render-runtime.js', bundle));
const { instance } = await WebAssembly.instantiate(await readFile(new URL(manifest.artifacts.wasm, bundle)), {});
const exports = instance.exports;
const host = Object.create(runtime.FeSurfaceElement.prototype);
host._wasmArenaCheckpoint = exports.fe_cabi_checkpoint;
host._wasmArenaRewind = exports.fe_cabi_rewind;
host._wasmArenaReset = exports.fe_cabi_reset;
const initial = host._runWasmInitialization(() => exports.fe_surface_initialize_v1());
host._runWasmArenaEpoch(() => exports.fe_surface_state_replace_v1(...initial));
const render = manifest.passes?.findLast(x => x.layout.mode === 'render');
const members = (render?.layout ?? manifest.layout).bindings.find(x => x.role === 'input').members;
const validIndex = members.findIndex(x => x.name === 'valid');
const turnsIndex = members.findIndex(x => x.name === 'turns');
assert.ok(validIndex >= 0 && turnsIndex >= 0);
const resources = (manifest.resources ?? []).map(() => 0n);
const alloc = exports.fe_cabi_alloc ?? ((size, align) => exports.cabi_realloc(0, 0, align, size));
const checkpoint = exports.fe_cabi_checkpoint?.();
let result;
let stable;
for (let i = 0; i < 100; i++) {
 result = host._runWasmArenaEpoch(() => {
  const pointer = alloc(52, 4);
  runtime.writeSurfaceEventBatch(exports.memory, pointer, [{ mx: 0, my: 0, dx: 0, dy: 0,
   wheelDelta: 0, wheelMode: 0, buttons: 0, timestamp: i, width: 16, height: 16,
   eventKind: 2, paramIndex: 0, paramValue: 0 }]);
  return exports.fe_surface_transition_scheduled_v1(pointer, 1, ...resources);
 });
 if (process.env.EXPECT_RESET_BUG) {
  assert.equal(result[validIndex], 0, 'old reset-only boundary must reproduce corrupted persistent storage');
  console.log(JSON.stringify({ reproduced: true, valid: result[validIndex], turn: result[turnsIndex] }));
  process.exit(0);
 }
 assert.equal(result[validIndex], 1, 'initializer allocation survives temporary-heavy transition');
 assert.equal(result[turnsIndex], i + 1);
 assert.equal(exports.fe_cabi_checkpoint(), checkpoint, 'scratch cursor rewinds to resident high-water mark');
 if (i === 0) stable = exports.memory.buffer.byteLength;
 assert.equal(exports.memory.buffer.byteLength, stable, 'memory stays bounded');
}
assert.throws(() => host._runWasmInitialization(() => { alloc(131072, 4); throw Error('failed initializer'); }), /failed initializer/);
assert.equal(exports.fe_cabi_checkpoint(), checkpoint, 'failed initializer rewinds its allocation');
assert.throws(() => exports.fe_cabi_rewind(checkpoint + 65536), WebAssembly.RuntimeError, 'forward rewind rejected');
assert.equal(exports.fe_cabi_checkpoint(), checkpoint);
console.log(JSON.stringify({ pass: true, transitions: 100, persistentSentinels: 1024,
 stableMemory: stable, failedInitializerRewound: true, forwardRewindRejected: true }, null, 2));
