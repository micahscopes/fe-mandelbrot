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

## Production browser differential

```sh
PLAYWRIGHT_MODULE=/path/to/playwright-core/index.mjs CDP_URL=http://127.0.0.1:9222 SIDE=128 \
  node tests/native-checkpoint/production.mjs \
  /absolute/immutable-baseline-site /absolute/immutable-compact-site /absolute/scratch/production-differential
```

This runner is authored but has not been executed at its source checkpoint. It uses the existing browser-session teardown helper and opens/closes its own sequential test tabs. Both complete staged sites must include the typed URL and resident-state contracts. It reads the baseline's actual Wasm initial camera and uses Fe's URL restore for the initial fixed backing extent. Later camera/AA changes call the actual resident Fe state replacement export through the runtime; modifying its JavaScript mirror alone is insufficient.

A readback latch holds the actual `_presentOn` boundary while Node captures results or supplies the next test state. Presentation requests are queued before they can submit another graph; `_flushGestureFrame` entry is separately serialized so a pre-requested RAF cannot advance resident state ahead of the held frame. Replacement rejects queued stale presentations, and capture checks that the graph-submission counter remained fixed. This prevents a short partial phase from completing before the test can replace it. Fe still performs the actual state transition, reference generation, dispatch and completion decisions. The initial Wasm path is resolved from the staged index manifest attribute and that manifest's `artifacts.wasm`, including content-addressed site namespaces. The instrumentation adds GPU readback/host delay and is not a timing benchmark.

Cases cover default and captured deep camera coefficients; A→partial changed-zoom B→A while the completed A snapshot remains available; AA off/on; replacing an interior deep view after its first native batch with the captured deep view; and real off-viewport suspension/resume. The interior has a budget of at least4096, so unseeded interior pixels remain live after the first2048-iteration batch. Metadata gates require the expected actual camera/AA, native completion, initial-cache completion, full snapshot publication at the current epoch, completed preview, settled input, and a valid non-pending reference before capture. The snapshot return records reuse eligibility; it does not claim a speed measurement of reuse.

Every active-area byte of `native_pixels`, `antialiased_pixels` and `snapshot_oracle` is saved as binary and compared exactly across the builds. Additional within-build comparisons check return/restoration and AA invariants. Private live checkpoint layouts and fade clocks are deliberately excluded. `SIDE=128` bounds workload while retaining each full declared4194304-element allocation; use `SIDE=2048` for the complete maximum-resolution lattice. A128px pass does not certify2048px numeric coverage. Served artifact hashes are recorded and checked for changes during each run. Failures retain partial receipts and already captured binaries.

Actual unknown-device-loss retry is explicitly **unsupported** by this runner: browser WebGPU exposes no safe way to request that loss reason. Calling `GPUDevice.destroy()` produces `Destroyed`, for which `StandardSurfaceRecovery` intentionally does not retry. The test does not fabricate runtime recovery callbacks or pretend visibility resume is device-loss recovery. Normal suspend/resume does verify that the existing buffers survive and the final numeric results remain unchanged.
