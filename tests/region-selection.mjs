// Oracle/driver only: every selection transition and float encoding runs in Fe.
import assert from 'node:assert/strict';
import { readFile } from 'node:fs/promises';
import { pathToFileURL } from 'node:url';
if (!process.env.FE_SELECTION_BUNDLE) throw Error('Set FE_SELECTION_BUNDLE to the compiled tests/region-selection bundle');
const bundle = pathToFileURL(process.env.FE_SELECTION_BUNDLE.replace(/\/?$/, '/'));
const { createInterfaceCaller } = await import(new URL('interface.js', bundle));
const { instance } = await WebAssembly.instantiate(await readFile(new URL('module.wasm', bundle)), {});
const caller = createInterfaceCaller(instance.exports);
const result = await caller.call('inspect', { unused: 0 });
assert.equal(result.checks, 16383);
assert.equal(result.cancellation_x, -1);
const fixtures = [
 [0n, 0], [1n << 39n, 0x80000], [1n << 20n, 1], [1n << 19n, 0],
 [3n << 19n, 2], [(1n << 43n) - (1n << 20n), 0x7fffff],
 [(1n << 43n) - (1n << 19n), 0x800000], [1n << 43n, 0x800000],
 [1n << 44n, 0x1000000], [1n << 169n, 0x3f800000],
];
for (const [magnitude, bits] of fixtures) for (const negative of [false, true]) {
 let n = magnitude;
 const words = [];
 for (let i = 0; i < 14; i++) { words.push(Number(n & 8191n)); n >>= 13n; }
 const actual = await caller.call('fixed_projection', { words, negative });
 const expected = magnitude === 0n ? 0 : ((bits | (negative ? 0x80000000 : 0)) >>> 0);
 assert.equal(actual.bits, expected, `${magnitude} sign${negative}`);
}
console.log(JSON.stringify({ pass: true, selection: result, projectionCases: fixtures.length * 2 }, null, 2));
