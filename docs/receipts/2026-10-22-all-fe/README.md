# All-Fe integration checkpoint

Fe implementation commit: `31491031feb6ff5ac9d222fc2ce79d2b6ac950f9`.
Compiler binary SHA256:
`4afa2698ba2b7b248ca4fb85e5200c64b2d1f2d8509faf865e38a04d3134230f`.
The pinned compiler plus recorded patches reproduces the toolchain.

- `arithmetic.json`:292 independent endpoint fixtures and existing deep-family regressions.
- `regions.json`:17 region cases, each also run with four incremental batch sizes.
- `binary-adapter.json`: exact binary32 factors/four camera terms, malformed inputs and20 repeated jobs.
- `selection.json`:14 actual Fe selection invariants and20 binary32 projection edge cases.
- `resident-memory.json`:100 events,1024 retained sentinels, stable memory, failed-init rewind and rejected forward rewind.
- `old-memory-bug.json`: original compiler corrupts retained memory on the first event.
- `viewer-resident.json`:153 events through the actual viewer's generated runtime and Fe handlers, including circles, boxes, independent points, claim changes, cancellation, URL changes, public-view marker suppression and stable memory under larger scratch allocations.
- `browser-layout.json`: desktop/mobile DOM controls and layout only, with GPU disabled.
- `browser-gate.json`: incomplete software-GPU presentation attempt. No fresh hardware WebGPU acceptance is claimed.

The current local checker receives the witness. These receipts do not establish
zero knowledge or acceptance of the unfinished hiding protocol. Fe/Wasm setup
in the resident test is not whole-browser/GPU startup time.

The final application was rebuilt after correcting the `Full view` matcher.
Unchanged arithmetic/selection/canary check bundles were reused from the same
compiler build; the distribution metadata records that provenance. Source and
all distributed files are checked by `tools/site_studio.py`.
