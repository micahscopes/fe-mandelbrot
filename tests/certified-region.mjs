// Independent exact-dyadic input construction exercising actual Fe/Wasm.
// Test/oracle code only; the application owns geometry and workflow in Fe.
import assert from 'node:assert/strict';
import { readFile } from 'node:fs/promises';
import { pathToFileURL } from 'node:url';
const bundle = process.env.FE_CERTIFIED_BUNDLE
 ? pathToFileURL(process.env.FE_CERTIFIED_BUNDLE.replace(/\/?$/, '/'))
 : new URL('../artifacts/proof/certified/', import.meta.url);
const { createInterfaceCaller } = await import(new URL('interface.js', bundle));
const { instance } = await WebAssembly.instantiate(await readFile(new URL('module.wasm', bundle)), {});
const caller = createInterfaceCaller(instance.exports);
let slicedCaller;
if (process.env.FE_REGION_JOB_BUNDLE) {
 const path = pathToFileURL(process.env.FE_REGION_JOB_BUNDLE.replace(/\/?$/, '/'));
 const api = await import(new URL('interface.js', path));
 const wasm = await WebAssembly.instantiate(await readFile(new URL('module.wasm', path)), {});
 slicedCaller = api.createInterfaceCaller(wasm.instance.exports);
}
const dyadic = (n, e = 0) => ({ n: BigInt(n), e });
function wire(values) {
 const words = [];
 for (const { n, e } of values) {
  let magnitude = n < 0n ? -n : n;
  const digits = [];
  while (magnitude) { digits.push(Number(magnitude & 8191n)); magnitude >>= 13n; }
  words.push(Number(n < 0n), Number(e < 0), Math.abs(e), digits.length, ...digits);
 }
 const bytes = new Uint8Array(words.length * 4), view = new DataView(bytes.buffer);
 words.forEach((value, i) => view.setUint32(i * 4, value, true));
 return bytes;
}
const zero = dyadic(0), one = dyadic(1), two = dyadic(2);
const cases = [];
async function check(name, values, options, expected) {
 const request = { selection: wire(values), shape: 0, claim: 0, precision: 128, max_steps: 16, ...options };
 const result = await caller.call('evaluate_region', request);
 if (slicedCaller) for (const budget of [1, 2, 7, 32]) {
  assert.deepEqual(await slicedCaller.call('sliced', { request, budget }), result, `${name}: slicing budget ${budget}`);
 }
 for (const [key, value] of Object.entries(expected)) assert.equal(result[key], value, `${name}: ${key}`);
 cases.push({ name, result });
}
await check('escape inside independent circle', [dyadic(3), zero, two, zero, two, two], {}, { code: 0, step: 1, certificate: 4 });
await check('closed circle edge and strict escape', [one, zero, zero, zero, one, one], {}, { code: 0, step: 3 });
await check('bounded witness outside circle', [zero, zero, dyadic(3), zero, one, one], { claim: 1 }, { code: 3 });
await check('closed box edge', [one, zero, zero, zero, one, one], { shape: 1 }, { code: 0, step: 3 });
await check('box outside before boundedness', [zero, zero, dyadic(3), zero, one, one], { shape: 1, claim: 1 }, { code: 3 });
for (const point of [zero, dyadic(1, -2), dyadic(-1, -2)]) {
 await check(`invariant disk ${point.n}`, [point, zero, zero, zero, one, one], { claim: 1 }, { code: 0, certificate: 1 });
}
await check('strict period two', [dyadic(-1), zero, zero, zero, two, two], { claim: 1 }, { code: 0, certificate: 2 });
await check('strict cardioid', [dyadic(-1, -1), dyadic(1, -3), zero, zero, one, one], { claim: 1 }, { code: 0, certificate: 3 });
await check('disk just outside does not get disk certificate', [dyadic((1n << 126n) + 1n, -128), zero, zero, zero, one, one], { claim: 1, precision: 256 }, { code: 1, certificate: 0 });
await check('cardioid bulb shared boundary', [dyadic(-3, -2), zero, zero, zero, one, one], { claim: 1 }, { code: 1 });
await check('norm exactly four is not escape', [dyadic(-2), zero, zero, zero, two, two], {}, { code: 1, step: 16 });
await check('unequal circle radii invalid', [zero, zero, zero, zero, one, two], {}, { code: 2 });
await check('zero radius invalid', [zero, zero, zero, zero, zero, zero], {}, { code: 2 });
const anchored = 1n << 256n;
await check('deep exact common anchor cancellation', [dyadic(anchored + 1n, -256), zero, one, zero, dyadic(1, -255), dyadic(1, -255)], {}, { code: 0, step: 3 });
await check('deep exact common anchor outside', [dyadic(anchored + 4n, -256), zero, one, zero, dyadic(1, -255), dyadic(1, -255)], {}, { code: 3 });
for (const selection of [new Uint8Array(95), new Uint8Array(97), new Uint8Array(7684),
 new Uint8Array([...wire([zero,zero,zero,zero,one,one]),0,0,0,0])]) {
 const result = await caller.call('evaluate_region', { selection, shape: 0, claim: 1, precision: 128, max_steps: 16 });
 assert.equal(result.code, 2, 'malformed/trailing input rejected');
}
console.log(JSON.stringify({ pass: true, malformedCases: 4, slicedBudgets: slicedCaller ? [1,2,7,32] : [], cases }, null, 2));
