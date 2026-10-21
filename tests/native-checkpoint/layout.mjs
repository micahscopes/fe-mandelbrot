// Compare actual production manifests, never a shorter hand-forged allocation.
import assert from 'node:assert/strict';
import fs from 'node:fs/promises';
const [beforePath, afterPath, receiptPath] = process.argv.slice(2);
assert.ok(beforePath && afterPath, 'Usage: node layout.mjs BASE_MANIFEST COMPACT_MANIFEST [RECEIPT]');
const before = JSON.parse(await fs.readFile(beforePath, 'utf8'));
const after = JSON.parse(await fs.readFile(afterPath, 'utf8'));
assert.equal(before.resources.length, after.resources.length);
for (let i = 0; i < before.resources.length; ++i) {
  const old = before.resources[i], next = after.resources[i];
  if (old.name !== 'progress_pixels') {
    assert.deepEqual(next, old, `Unchanged resource ${old.name}`);
    continue;
  }
  assert.equal(old.stride, 32);
  assert.equal(next.stride, 16);
  assert.equal(next.span, 16);
  assert.equal(next.length, 4194304);
  const {stride: _a, span: _b, element: _c, ...oldRest} = old;
  const {stride: _d, span: _e, element: _f, ...newRest} = next;
  assert.deepEqual(newRest, oldRest, 'Capacity, binding, lifetime and policy remain identical');
  assert.deepEqual(next.element.Record.fields.map(field => [field.name, field.offset, field.scalar || 'u32']), [
    ['control', 0, 'u32'], ['epoch', 4, 'u32'], ['payload.re', 8, 'f32'], ['payload.im', 12, 'f32'],
  ]);
}
const schedule = manifest => manifest.passes.map(pass => ({
  name: pass.source_entry, dispatch: pass.dispatch, stages: pass.shader_stages,
  workgroup: pass.layout.workgroup_size,
  resources: pass.layout.bindings.filter(binding => binding.role === 'resource')
    .map(binding => [binding.group, binding.binding, binding.name, binding.access]),
}));
assert.deepEqual(schedule(after), schedule(before), 'Pass order, dispatch and resource membership');
const bytes = manifest => manifest.resources.reduce((sum, resource) => sum + resource.stride * resource.length, 0);
const receipt = {beforeBytes: bytes(before), afterBytes: bytes(after), savedBytes: bytes(before) - bytes(after),
  progressCapacity: 4194304, progressStride: 16, previewStride: 32, passCount: after.passes.length};
assert.equal(receipt.savedBytes, 67108864);
if (receiptPath) await fs.writeFile(receiptPath, JSON.stringify(receipt, null, 2) + '\n');
console.log(JSON.stringify(receipt, null, 2));
