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
const float = x => { word.setUint32(0, x, true); return word.getFloat32(0, true); };
const f = Math.fround;
// Independent exact binary32 rational modulo, not the production doubling loop.
function remainder(x) {
  const raw = bits(x), exponent = (raw >>> 23) & 255;
  const significand = BigInt((raw & 0x7fffff) | (exponent ? 0x800000 : 0));
  const shift = exponent ? exponent - 150 : -149;
  const numerator = shift >= 0 ? (significand << BigInt(shift)) % 360n
    : significand % (360n << BigInt(-shift));
  const value = Number(numerator) / (shift >= 0 ? 1 : 2 ** -shift);
  return raw >>> 31 ? -value : value;
}
function expected(start, end, t) {
  const delta = f(end - start);
  const ordinary = Math.abs(start) <= 540 && Math.abs(end) <= 540 && Math.abs(delta) <= 540;
  const origin = ordinary ? start : remainder(start);
  let arc = ordinary ? delta : f(remainder(end) - origin);
  if (arc > 180) arc = f(arc - 360);
  else if (arc < -180) arc = f(arc + 360);
  if (!ordinary) {
    if (arc > 180) arc = f(arc - 360);
    else if (arc < -180) arc = f(arc + 360);
    if (arc === -180 && end > start) arc = 180;
    else if (arc === 180 && end < start) arc = -180;
  }
  return f(origin + f(arc * t));
}
function actual(start, end, t) {
  api.fe_surface_state_replace_v1(start, end, t, 0);
  api.fe_cabi_reset();
  const pointer = api.fe_cabi_alloc(52, 4);
  new Uint8Array(api.memory.buffer, pointer, 52).fill(0);
  const event = new DataView(api.memory.buffer, pointer, 52);
  event.setFloat32(28, 16, true);
  event.setFloat32(32, 64, true);
  event.setFloat32(36, 64, true);
  event.setUint32(40, 2, true);
  return api.fe_surface_transition_scheduled_v1(pointer, 1)[3];
}
let cases = 0;
const failures = [], examples = [];
function check(start, end, t, example = false) {
  start = f(start); end = f(end); t = f(t);
  const want = expected(start, end, t), got = actual(start, end, t);
  cases++;
  const row = {start, end, t, expected: want, actual: got, expectedBits: bits(want), actualBits: bits(got)};
  if (bits(want) !== bits(got) && failures.length < 32) failures.push(row);
  if (example) examples.push(row);
}
for (const start of [-540, -360, -180, -0, 0, 10, 180, 350, 360, 540])
  for (const end of [-540, -360, -180, -0, 0, 10, 180, 350, 360, 540])
    for (const t of [0, .25, .5, 1]) check(start, end, t);
for (let exponent = 0; exponent < 255; exponent++)
  for (const mantissa of [0, 1, 0x123456, 0x7fffff])
    for (const sign of [0, 0x80000000])
      for (const t of [0, .5, 1]) check(0, float((sign | (exponent << 23) | mantissa) >>> 0), t);
for (const [start, end] of [[0, 99999997952], [99999997952, 0], [99999997952, 99999997952],
  [99999997952, 100000006144], [float(0x7f7fffff), float(0x7f7fffff)], [-3e38, 3e38], [3e38, -3e38],
  [-float(0x7f7fffff), float(0x7f7fffff)], [float(0x7f7ffffe), float(0x7f7fffff)],
  [350, 10], [10, 350], [0, 900], [0, -900], [-359.5, 359.5]])
  for (const t of [0, .5, 1]) check(start, end, t, true);
// Explicit semantic anchors keep the oracle honest about huge equal inputs.
for (const t of [0, .5, 1]) {
  assert.equal(actual(99999997952, 99999997952, t), 32);
  assert.equal(actual(float(0x7f7fffff), float(0x7f7fffff), t), 0);
}
assert.equal(actual(99999997952, 100000006144, 0), 32);
assert.equal(actual(99999997952, 100000006144, .5), -12);
assert.equal(actual(99999997952, 100000006144, 1), -56);
const receipt = {actualWasm: true, cases, failures, examples,
  oracle: 'Exact BigInt binary32 rational modulo; float32 interpolation preserves ordinary path and signed half-turn policy'};
if (process.argv[3]) await fs.writeFile(process.argv[3], JSON.stringify(receipt, null, 2) + '\n');
console.log(JSON.stringify(receipt, null, 2));
assert.equal(failures.length, 0, 'Compiled public Oklch interpolation disagrees with finite-angle oracle');
