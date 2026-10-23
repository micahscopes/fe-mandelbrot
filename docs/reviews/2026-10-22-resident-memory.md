# Resident surface memory patch and canary review

Astra/high, Codex collaboration harness, 2026-10-22. Read-only inspection of the recorded compiler patch and tests. No builds or execution. Parent-provided before-fix receipt records `valid:0` on transition1; fixed-toolchain execution is still pending at this review.

## Verdict

The patch correctly selects an existing generic allocator contract at the shared scheduled-surface helper. The zero-task canary is materially discriminating and exercises the actual runtime lifetime methods. No source blocker found for the current GPU renderer. Preserve the mixed-ABI caveat below.

`resident-surface-memory.patch` changes only the scheduled branch of `with_typed_surface_export`. Existing scoped-task selection remains idempotent, ordinary unscheduled canonical bundles do not traverse the changed branch, and the frontend's backend choice gives checked stack memory priority over the legacy arena flag. No Sonatina source or dependency change is needed. Bootstrap's explicit changed-file allowlist now includes `web_bundle.rs`, retaining the existing dirty-file check.

The patch comment's “same ... as resident components” is broader than established evidence: task-free components still have separate selection logic. Prefer “same ... as scoped-task actors.”

## Canary quality

The Fe fixture has no scoped task. Initialization retains4096 bytes containing1024 distinct words. Each transition fills65536 temporary bytes, checks the retained words and expected persistent counter, then mutates that counter. This tests both survival and legitimate mutation; it cannot pass merely by returning an unchanged initial state.

The Node harness imports the emitted generic runtime and calls its real `_runWasmInitialization` and `_runWasmArenaEpoch` methods. It uses the generated scheduled transition and the actual52-byte event writer. The fixture has no resource arguments, so the empty resource vector is appropriate. Assertions cover100 transitions, exact retained state, cursor restoration, bounded memory, failed-initializer rollback and rejected forward rewind. The before-fix failure confirms that the test reaches the vulnerable allocator path rather than testing a mock.

For a clearer failure message, explicitly assert callable checkpoint/rewind/allocation exports before initialization in the success mode. Current later calls already fail if they are absent, so this is diagnostic rather than a correctness gap. Use the exported event-kind constant instead of literal2 if editing the harness again.

## Canonical compatibility boundary

GPU actor graphs already reject canonical Wasm message lanes (`web_bundle.rs:7763`), so the current renderer cannot silently publish the wrong canonical adapter ABI. Ordinary standalone canonical bundles remain unchanged.

However, the scalar-render fallback independently builds `canonical_candidate` at8712, selects `.with_canonical_lanes` at8816, then calls the changed scheduled helper at8826. Such a mixed bundle can now select checked stack memory while the canonical manifest still requires `fe_cabi_alloc`/`fe_cabi_reset`. `verify_canonical_candidate` fails closed for Required and omits Optional interfaces. Therefore this patch does not establish mixed scheduled-surface/canonical-message compatibility. Add a focused compatibility regression or explicit unsupported-combination diagnostic before presenting the patch as a general compiler fix. Do not restore reset behavior for a persistent actor merely to satisfy that manifest.

Acceptance for this application remains: fixed-toolchain zero-task canary passes; real emitted viewer exports are inspected; actual retained region-job tape survives event epochs; and integrated UI checks pass on that same bundle.
