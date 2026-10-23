This fixture compiles the production Fe `Camera` projection/inverse and shared
`Similarity2` operations to an actual compute shader. The runner supplies 30
runtime cases across five orientations and three spans, down to 1e-27. It checks
roundtrips and projected deltas against independent numeric expectations, with
explicit floating-point tolerances, and rejects shader errors and Fe traps.

Run after building this workspace member with the pinned Fe compiler:

```
OWNED_SOFTWARE_BROWSER=1 PLAYWRIGHT_MODULE=/path/to/playwright-core/index.mjs \
  node tests/gesture-kernel/gpu.mjs /path/to/bundle /path/to/receipt.json
```

Owned mode launches and closes its own software-GPU browser. Otherwise the runner
connects to CDP and closes only its own test page/connection. This small kernel
test does not establish whole-app frame parity or physical Android behavior.
