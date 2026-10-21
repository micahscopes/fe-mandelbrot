# Compact native checkpoint acceptance fixture

This fixture uses the production Fe perturbation step and compact codec. It does not substitute a JavaScript recurrence. The old32-byte `OrbitProgress` remains an independent continuation representation and reference-exhaustion scheduler. The new16-byte `NativeCheckpoint` is compared against the old state's **prepared next-step delta**, including exact f32 bits, counters, full epoch, status, magnitude, color and fade time.

The fixture is authored for the pinned compiler's Wasm and WGSL targets. **No Fe compilation or target execution is claimed by the source-only implementation checkpoint.** Root owns those gates and the production GPU comparison.

From the repository root, using the integrated compiler with recursive POD storage:

```sh
/path/to/fe check app/renderer
/path/to/fe web build tests/native-checkpoint --out /absolute/scratch/native-checkpoint-fixture
node tests/native-checkpoint/verify.mjs /absolute/scratch/native-checkpoint-fixture /absolute/scratch/native-checkpoint-wasm.json
PLAYWRIGHT_MODULE=/path/to/playwright-core/index.mjs CDP_URL=http://127.0.0.1:9222 node tests/native-checkpoint/gpu.mjs /absolute/scratch/native-checkpoint-fixture /absolute/scratch/native-checkpoint-gpu.json
node tests/native-checkpoint/layout.mjs /absolute/baseline/renderer/manifest.json /absolute/compact/renderer/manifest.json /absolute/scratch/native-checkpoint-layout.json
```

Use fresh output directories. The browser runner owns one new tab, sends emitted WGSL unchanged to the actual adapter, and closes only its tab and CDP connection. It allocates each buffer at the manifest's declared capacity and stride. It reflects actual shader declarations before binding optional traps.

Both Wasm and GPU must report ten passing cases (`1023`). The GPU adds a two-record store/load/resume check (`results[1] == 1`), exact terminal words including full epoch and negative-zero timestamp, and empty trap/error records. Coverage includes17 batch splits, reference exhaustion at suspension, cancellation, escape, invalid reference, ambiguous escape, nonfinite perturbation,8192 iterations/index8192, production2048 batches, odd257 batches, terminal oracle/fade bits, epoch-high-bit distinctions and zero-work identity. The manifest gate checks compact16B, preview32B, unchanged4194304 capacity, every other resource unchanged, unchanged pass order/dispatch/resource membership, and exactly67108864 bytes saved.

## Why future observations agree

For a live checkpoint, the interpretation is the old checkpoint **after its next-step preparation**. Both contain the same epoch, iteration, reference index and exact delta bits. The old absolute position is needed only when preparation rebases an exhausted reference. A successful step has already computed that exact target. The compact representation performs the impending assignment `reference_i = 0; delta = target` before suspension and drops the now-dead absolute position. It does not add or reassociate any floating arithmetic.

`NativeCheckpoint.advance` invokes the unchanged shared `advance_progress_step`. Its temporary old absolute position is zero because successful advancement overwrites it; invalid/glitched steps terminate and never observe that position again. Cancellation already rebases in the shared step. Afterward, immutable-reference exhaustion is normalized if another step could run. Finished checkpoints keep magnitude and fade timestamp directly in the two f32 payload lanes, with no numeric conversion. A private payload-mode bit is separate from escaped, glitched and presentable status. The full32-bit epoch is unchanged.

The induction requires a published immutable reference with at least two samples, initial reference point zero, a fixed iteration limit at most8192 per epoch, and reference/camera replacement invalidating the epoch. Those are the existing native refinement invariants. The growing preview prefix does not satisfy immutability, so its32-byte representation and preparation are unchanged. Interior completion never resumes at a higher limit within the same epoch; production marks completion presentable before storage.

Before promotion, additionally run the actual app at default and deep views through seed/refine batches, cancellation/exhaustion, snapshot restore and anti-aliasing. Compare native/AA/snapshot bytes and `snapshot_oracle` tuples against the baseline, preserving the known numerical baseline rather than treating all oracle approximations as exact. Check unchanged camera ABI and preview continuation tests. These production GPU and browser checks remain required: source reasoning and Wasm cannot certify GPU optimization or presentation timing. Record transient shader/workgroup cost and first-frame allocation; the guaranteed storage reduction alone does not establish a speedup.

No snapshot-oracle packing, AA aliasing, capacity reduction, generic actor renaming, policy or precision changes are included. The source catalog and viewer gain the new module so the published source remains complete.
