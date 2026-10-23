// End-to-end Fe resident input/checker execution, without requiring a GPU.
// Browser transport is driven with raw facts; geometry and jobs run in Wasm.
import assert from 'node:assert/strict';
import { readFile } from 'node:fs/promises';
import { pathToFileURL } from 'node:url';
if (!process.env.FE_STUDIO_DIR) throw Error('Set FE_STUDIO_DIR');
const root = pathToFileURL(process.env.FE_STUDIO_DIR.replace(/\/?$/, '/'));
const html = await readFile(new URL('index.html', root), 'utf8');
const manifestPath = html.match(/data-fe-manifest="([^"]+)"/)[1];
const runtimePath = html.match(/data-fe-render-runtime="([^"]+)"/)[1];
const manifestUrl = new URL(manifestPath, root);
const manifest = JSON.parse(await readFile(manifestUrl));
globalThis.HTMLElement = class {};
globalThis.customElements = { get() {}, define() {} };
const runtime = await import(new URL(runtimePath, root));
const start = performance.now();
const { instance } = await WebAssembly.instantiate(await readFile(new URL(manifest.artifacts.wasm, manifestUrl)), {});
const ex = instance.exports;
assert.equal(typeof ex.fe_cabi_checkpoint, 'function', 'resident bundle must protect initialization storage');
assert.equal(typeof ex.fe_cabi_rewind, 'function');
const host = Object.create(runtime.FeSurfaceElement.prototype);
host._wasmArenaCheckpoint = ex.fe_cabi_checkpoint;
host._wasmArenaRewind = ex.fe_cabi_rewind;
host._wasmArenaReset = ex.fe_cabi_reset;
let state = host._runWasmInitialization(() => ex.fe_surface_initialize_v1());
host._runWasmArenaEpoch(() => ex.fe_surface_state_replace_v1(...state));
const setupMs = performance.now() - start;
const members = manifest.passes.findLast(x => x.layout.mode === 'render').layout.bindings.find(x => x.role === 'input').members;
assert.equal(state.length, members.length);
const indices = new Map(members.map((member, i) => [member.name, i]));
const get = name => { assert.ok(indices.has(name), `unknown field ${name}`); return state[indices.get(name)]; };
const resourceArgs = manifest.resources.map(() => 0n);
const alloc = ex.fe_cabi_alloc ?? ((size, align) => ex.cabi_realloc(0, 0, align, size));
const checkpoint = ex.fe_cabi_checkpoint();
const jobPointer = get('ptr');
const canaryAddress = jobPointer + (65 * 640 + 100) * 4;
new DataView(ex.memory.buffer).setUint32(canaryAddress, 0x13579bdf, true);
let turns = 0;
const epoch = fn => {
 const result = host._runWasmArenaEpoch(() => {
  // Larger than the complete retained job: this detects an unprotected reset.
  const temporary = alloc(200000, 4);
  new Uint8Array(ex.memory.buffer, temporary, 200000).fill(0xa5);
  return fn();
 });
 assert.equal(ex.fe_cabi_checkpoint(), checkpoint, 'resident high-water mark stable');
 assert.equal(new DataView(ex.memory.buffer).getUint32(canaryAddress, true), 0x13579bdf);
 assert.equal(get('ptr'), jobPointer, 'one reusable job allocation');
 turns++;
 return result;
};
function batch(eventKind, paramIndex = 0, paramValue = 0) {
 state = epoch(() => {
  const ptr = alloc(52, 4);
  runtime.writeSurfaceEventBatch(ex.memory, ptr, [{ mx: 0, my: 0, dx: 0, dy: 0, wheelDelta: 0,
   wheelMode: 0, buttons: 0, timestamp: turns * 16, width: 512, height: 512, eventKind, paramIndex, paramValue }]);
  return ex.fe_surface_transition_scheduled_v1(ptr, 1, ...resourceArgs);
 });
}
function edit(name, value) {
 const index = manifest.surface.params.findIndex(x => x.name === name);
 assert.ok(index >= 0, `unknown param ${name}`);
 batch(1, index, value);
}
function contact(phase, x, y, buttons = phase === 2 ? 0 : 1) {
 state = epoch(() => ex.fe_surface_contact_v1(phase, 0, 7, x, y, buttons, 1, 0, turns * 16,
  0, 0, 400, 400, ...resourceArgs));
}
function click(x, y) { contact(0, x, y); contact(2, x, y); }
function drag(x0, y0, x1, y1) { contact(0, x0, y0); contact(1, x1, y1); contact(2, x1, y1); }
const regionSnapshot = () => members.map((x,i) => [x.name, state[i]])
 .filter(([name]) => /^region\.|^radius\.|^region_shape$/.test(name));
const clearReadouts = () => {
 for (const name of ['checking', 'escaping_witness_certified', 'bounded_witness_certified',
  'witness_outside_region', 'unknown', 'invalid_input', 'checked_steps']) assert.equal(get(name), 0, name);
};
edit('camera.center.re.value.lead', 1);
edit('camera.center.im.value.lead', 0);
edit('camera.zoom', 2);
edit('mode', 1);
drag(300, 200, 400, 200); // independent public circle center2 radius1
assert.equal(get('selection.has_region'), 1);
const region = regionSnapshot();
edit('mode', 2);
click(350, 200); // witness2.5, rather than the region center
assert.equal(get('selection.has_witness'), 1);
assert.deepEqual(regionSnapshot(), region);
batch(2);
assert.equal(get('escaping_witness_certified'), 1);
assert.equal(get('checked_steps'), 1);
edit('public_view', 1);
assert.equal(get('selection_display.has_witness'), 0);
assert.equal(get('selection.has_witness'), 1);
assert.deepEqual(regionSnapshot(), region);
edit('public_view', 0);
assert.equal(get('selection_display.has_witness'), 1);
edit('claim', 1);
assert.equal(get('unknown'), 1, 'escaping witness does not establish boundedness');
click(100, 200); // bounded witness0 outside the original circle
assert.equal(get('witness_outside_region'), 1);
assert.equal(get('bounded_witness_certified'), 0);
edit('mode', 1);
drag(100, 200, 200, 200); // new region center0 radius1, retaining witness0
assert.equal(get('bounded_witness_certified'), 1);
assert.equal(get('selection.has_witness'), 1);
// Draft hides results, while cancel restores the still-current statement.
contact(0, 200, 200);
assert.equal(get('selection.active'), 1);
clearReadouts();
contact(3, 300, 200, 0);
assert.equal(get('selection.active'), 0);
assert.equal(get('bounded_witness_certified'), 1);
// A pending escaping claim pauses during a draft; cancel resumes it.
edit('steps', 64);
edit('claim', 0);
assert.equal(get('checking'), 1);
contact(0, 200, 200);
for (let i = 0; i < 8; i++) batch(2);
assert.equal(get('step'), 0);
clearReadouts();
contact(3, 300, 200, 0);
for (let i = 0; i < 4; i++) batch(2);
assert.equal(get('unknown'), 1);
assert.equal(get('checked_steps'), 64);
// Claim replacement cannot inherit the prior completed/partial result.
edit('claim', 1);
assert.equal(get('bounded_witness_certified'), 1);
assert.equal(get('unknown'), 0);
assert.equal(get('checked_steps'), 0);
// URL-driven camera replacement cancels drafts and reprojects selections.
contact(0, 200, 200);
clearReadouts();
const beforeUrl = regionSnapshot();
state = epoch(() => {
 const text = new TextEncoder().encode('http://localhost/#v1:00000000.00000000.00000000.00000000:00000000.00000000.00000000.00000000:3f800000:44000000:3f800000');
 const input = alloc(text.length, 1), output = alloc(256, 4), length = alloc(4, 4);
 new Uint8Array(ex.memory.buffer, input, text.length).set(text);
 return ex.fe_surface_location_v1(1, input, text.length, output, 256, length, ...resourceArgs);
});
assert.equal(get('selection.active'), 0);
assert.deepEqual(regionSnapshot(), beforeUrl);
assert.equal(get('camera.zoom'), 1);
assert.equal(get('center.x'), 0);
assert.equal(get('bounded_witness_certified'), 1);
// Box inclusion uses the committed shape, independently of the next-draw tool.
edit('mode', 1);
edit('selection_settings.shape', 1);
drag(100, 100, 300, 300);
assert.equal(get('region_shape'), 1);
assert.equal(get('bounded_witness_certified'), 1);
const box = regionSnapshot();
edit('mode', 2);
edit('selection_settings.shape', 0);
click(280, 120); // (+.4,+.4): inside this box, outside its inscribed circle
assert.deepEqual(regionSnapshot(), box);
assert.equal(get('witness_outside_region'), 0);
assert.equal(get('region_shape'), 1);
const revision = get('revision');
contact(0, 250, 200, 2); // right click cannot select a witness
contact(2, 250, 200, 0);
assert.equal(get('revision'), revision);
const beforeFull = regionSnapshot();
state = epoch(() => {
 const text = new TextEncoder().encode('http://localhost/#full');
 const input = alloc(text.length, 1), output = alloc(256, 4), length = alloc(4, 4);
 new Uint8Array(ex.memory.buffer, input, text.length).set(text);
 return ex.fe_surface_location_v1(1, input, text.length, output, 256, length, ...resourceArgs);
});
assert.equal(get('camera.zoom'), 1.5);
assert.equal(get('camera.center.re.value.lead'), -0.5);
assert.deepEqual(regionSnapshot(), beforeFull);
const stable = ex.memory.buffer.byteLength;
for (let i = 0; i < 100; i++) batch(2);
assert.equal(ex.memory.buffer.byteLength, stable);
console.log(JSON.stringify({ pass: true, setupMs, turns, persistentJobBytes: (65 * 640 + 128) * 4,
 stableMemory: stable, checks: ['circle and separate witness', 'public-view hiding', 'outside before boundedness',
 'claim replacement', 'draft suppression', 'pause and cancel', 'iteration budget Unknown',
 'URL cancellation and reprojection', 'box with independently changed draw tool', 'right click ignored', 'persistent memory under large scratch allocations'] }, null, 2));
