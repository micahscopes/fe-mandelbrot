# Incremental region evaluator: bounded source review

Astra (`gpt-6-astra`, high effort), Codex collaboration harness, 2026-10-22. Read-only dirty-source review in `private-circle-proof` over `1f83f52`; no builds, tests, browser jobs or source edits. Parent was editing during review; observations describe the inspected definitions, not an immutable execution receipt.

## One must-fix in the adjacent display correction

`selection.fe::projected_axis` now preserves cancellation before narrowing, but passes arbitrary `Fixed<14>` residuals to `precision/fixed.fe::to_f32_bits`. That helper encodes only normal binary32 numbers. Its exponent is `highest_bit - fractional_bits + 127`, then directly shifted into the float representation, with no subnormal branch. For residual `2^-130`, it uses exponent -3 and emits `0xfe800000`, a huge negative number. Fourteen limbs permit even smaller residuals.

Either add tested subnormal conversion to the generic helper, or explicitly discard sufficiently tiny *display-only* residuals before calling it. A threshold of `2^-126` is far below a pixel at the accepted zoom floor `1e-27`; document this display approximation and never reuse it for certificate inputs. Include positive/negative tiny residuals, zero, and the normal/subnormal boundary alongside the prior cancellation regression. The mouse-button and missed-release fixes are present.

## Tape and slicing findings

No arithmetic/slot-alias blocker found in `RegionJob`:

- The 65 limb slots occupy 41,600 words. Eight saved endpoint descriptors use five words each at slot65: 40 words inside the 128-word tail reserved by `RegionJob::new`. Exponents fit the encoded u32 magnitude under `EXP_LIMIT=1e9`. This is an explicit storage format, not a guessed native record stride.
- Point endpoints remain in slots0..3. Orbit endpoints occupy24..27. Per-step square/product/add/norm temporaries use4..21,36..41,52/53,58/59 and60; none overwrite the saved point or orbit before its last use. Slot63 is reconstructed as four at each advance.
- Initial zero descriptors have length0; reloading them with physical slots24..27 is safe because no limb is read. Completed steps save orbit descriptors before returning. `advance(0)` makes no progress; other budgets stop at the same terminal step, and completed/canceled jobs remain unchanged.
- The one-shot `evaluate_region` delegates to the same begin/advance logic. This reduces drift but is not an independent mathematical oracle: slicing-parity tests must still compare the directed-arithmetic model or preserved independent expected results.

`RegionJob` is Copy but its tape is mutable shared storage. Treat copies as handles to one owner, not independent job snapshots. A stale copy must not be advanced after the tape is restarted. The renderer currently serializes advancement and checks `job_revision`, which is the intended ownership discipline.

## Exact adapter and containment

`binary_coordinate` constructs each finite binary32 by bit decomposition, forms the exact scale/offset product, then sums the four anchor terms at1024-bit precision. Finite binary32 products span exponents from approximately -298 to256, so this width is sufficient for all intermediate sums independently of requested orbit precision. Slots4/5/6/8 are temporary; finished sources45..50 remain intact. Radius construction retains scale in4 while reusing5, which is safe. NaN/infinity is rejected; signed zero normalizes. The current selection adapter passes the frozen region shape and exact factored values, not the display projection.

The8192-bit temporary subtraction fixes close-anchor cancellation before working-precision interval operations. It is still a directed enclosure, not universally exact subtraction for all allowed exponent gaps: wire exponents can differ by much more than8192. That is sound. Also, wide resulting endpoints may exceed the product scratch limit when squared for circle containment, producing Unknown; this is an incompleteness/performance issue, not false certification. A later explicit outward rounding of each difference to working precision before squaring can avoid oversized products, while preserving the crucial subtract-before-round order.

## Lifetime and execution gates

The inspected renderer now allocates `RegionJob::new` in `initial_state`, then reuses its pointer. This matches the runtime: `_runWasmInitialization` preserves successful initialization allocations, while `_runWasmArenaEpoch` rewinds every transition. Do not move allocation into a click, begin or frame handler. Confirm the emitted bundle has checkpoint/rewind exports; the older reset-only fallback does not establish this persistent lifetime.

Required execution evidence: budgets1/2/32 versus one-shot terminal result; repeated begin/cancel/restart on the same tape; two separately allocated jobs interleaved; header/point/orbit canaries across resident epochs and bounded arena growth; binary adapter versus exact Fraction/model inputs including cancellation and smallest binary32 factors; deep containment inside/outside/boundary tests; stale revision rejection; the corrected display regressions. Renderer invalid-input status currently folds code2 into Unknown: safe for certification, but retain error distinction in diagnostics. No claim of executed acceptance from this source review.
