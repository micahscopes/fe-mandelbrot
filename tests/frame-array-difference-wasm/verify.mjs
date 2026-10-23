// Runtime transport only. Expected results come from the independent Fraction
// corpus; both arithmetic implementations execute in the emitted Fe Wasm.
import fs from 'node:fs/promises';
import path from 'node:path';
import assert from 'node:assert/strict';
import {createHash} from 'node:crypto';

const [bundle, corpusPath, receiptPath] = process.argv.slice(2);
assert.ok(bundle && corpusPath && receiptPath,
  'Usage: node verify.mjs BUNDLE RUNTIME-CASES.json RECEIPT.json');
const corpusBytes = await fs.readFile(corpusPath);
const corpus = JSON.parse(corpusBytes);
const wasm = await fs.readFile(path.join(bundle, 'module.wasm'));
const {instance} = await WebAssembly.instantiate(wasm, {});
const api = instance.exports;
const initial = api.fe_surface_initialize_v1();
assert.equal(initial.length, 10, 'Fixture has eight input words and two output words');
const word = new DataView(new ArrayBuffer(4));
const decode = bits => { word.setUint32(0, bits, true); return word.getFloat32(0, true); };
const encode = value => { word.setFloat32(0, value, true); return word.getUint32(0, true); };
const results = [];
for (const [index, test] of corpus.cases.entries()) {
  api.fe_surface_state_replace_v1(...test.from.map(decode), ...test.to.map(decode), 0, 0);
  api.fe_cabi_reset();
  const pointer = api.fe_cabi_alloc(52, 4);
  new Uint8Array(api.memory.buffer, pointer, 52).fill(0);
  const event = new DataView(api.memory.buffer, pointer, 52);
  event.setFloat32(28, 16, true);
  event.setFloat32(32, 64, true);
  event.setFloat32(36, 64, true);
  event.setUint32(40, 2, true);
  const output = api.fe_surface_transition_scheduled_v1(pointer, 1);
  const expectedInputs = [...test.from, ...test.to];
  const inputsMatch = expectedInputs.every((bits, i) => encode(output[i]) === bits);
  const oldBits = encode(output[8]);
  const newBits = encode(output[9]);
  results.push({index, expected: test.expected, oldBits, newBits, inputsMatch,
    pass: inputsMatch && oldBits === test.expected && newBits === test.expected});
}
const failed = results.filter(test => !test.pass);
const receipt = {
  actualWasm: true,
  wasmSha256: createHash('sha256').update(wasm).digest('hex'),
  corpusSha256: createHash('sha256').update(corpusBytes).digest('hex'),
  count: results.length,
  passed: failed.length === 0,
  failures: failed,
  results,
};
await fs.writeFile(receiptPath, JSON.stringify(receipt, null, 2) + '\n');
console.log(JSON.stringify({count: results.length, passed: receipt.passed, failures: failed.length}));
assert.equal(failed.length, 0, 'Actual recursive and array Fe values must both match Fraction results');
