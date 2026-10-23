// Actual Fe job adapter tests. Input arithmetic here supplies an independent
// binary32-exact oracle; none of this code is shipped as application behavior.
import assert from 'node:assert/strict';
import { readFile } from 'node:fs/promises';
import { pathToFileURL } from 'node:url';
if (!process.env.FE_REGION_JOB_BUNDLE) throw Error('Set FE_REGION_JOB_BUNDLE');
const bundle = pathToFileURL(process.env.FE_REGION_JOB_BUNDLE.replace(/\/?$/, '/'));
const { createInterfaceCaller } = await import(new URL('interface.js', bundle));
const { instance } = await WebAssembly.instantiate(await readFile(new URL('module.wasm', bundle)), {});
const caller = createInterfaceCaller(instance.exports);
const coord = (w0 = 0, w1 = 0, w2 = 0, w3 = 0) => ({ w0, w1, w2, w3 });
const point = (re, im = coord(), scale = 1, u = 0, v = 0) => ({ re, im, scale, u, v });
const base = { witness: point(coord(3)), center: point(coord(2)), radius_x: 2, radius_y: 2,
 shape: 0, claim: 0, precision: 128, max_steps: 16 };
const cases = [
 ['escape', base, { code: 0, step: 1, certificate: 4 }],
 ['bounded', { ...base, witness: point(coord(-1)), center: point(coord()), claim: 1 }, { code: 0, step: 0, certificate: 2 }],
 ['outside before certificate', { ...base, witness: point(coord()), center: point(coord(3)), radius_x: 1, radius_y: 1, claim: 1 }, { code: 3, step: 0, certificate: 0 }],
 ['factored offset below orbit precision', { ...base, witness: point(coord(1), coord(), 2**-100, 2**-100), center: point(coord(1), coord(), 2**-100), radius_x: 2**-99, radius_y: 2**-99 }, { code: 0, step: 3, certificate: 4 }],
 ['factor outside tiny region', { ...base, witness: point(coord(1), coord(), 2**-100, 2**-98), center: point(coord(1), coord(), 2**-100), radius_x: 2**-99, radius_y: 2**-99 }, { code: 3, step: 0, certificate: 0 }],
 ['fourth camera term retained', { ...base, witness: point(coord(1, 2**-40, 2**-80, 2**-120)), center: point(coord(1, 2**-40, 2**-80), coord(), 2**-120), radius_x: 2, radius_y: 2 }, { code: 0, step: 2, certificate: 4 }],
 ['nonfinite invalid', { ...base, witness: point(coord(Infinity)) }, { code: 2, step: 0, certificate: 0 }],
];
const results = [];
for (const [name, request, expected] of cases) {
 const start = performance.now();
 const result = await caller.call('binary', request);
 assert.deepEqual(result, expected, name);
 results.push({ name, result, ms: performance.now() - start });
}
const stable = instance.exports.memory.buffer.byteLength;
for (let i = 0; i < 20; i++) assert.deepEqual(await caller.call('binary', base), cases[0][2]);
assert.equal(instance.exports.memory.buffer.byteLength, stable, 'arena reused for repeated jobs');
console.log(JSON.stringify({ pass: true, results, repeatedJobs: 20, arenaBytes: stable }, null, 2));
