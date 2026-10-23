# Reference arithmetic on actual WebGPU

Build this ingot with the pinned Fe compiler, then run:

```sh
python tests/reference-kernel/oracle.py
node tests/reference-kernel/gpu.mjs /path/to/bundle /path/to/receipt.json
```

The runner normally opens its own page in the CDP browser without closing the
browser. `OWNED_SOFTWARE_BROWSER=1` instead launches and closes an owned
Chromium/SwiftShader instance. `PLAYWRIGHT_MODULE` selects the Playwright module.
Software results do not verify behavior on a physical phone.

For 160 runtime inputs, compare every sign and limb of one reference step,
the strict escape decision, the trap output, and all eight packed binary32
words against independent integer and rational arithmetic. Cases cover signed
zero, exact boundaries, bounded orbit magnitudes, and seeded full-width inputs.

Packing retains four fixed descending 24-bit windows, including empty slots.
It does not successively round and subtract binary32 values. Orbit magnitudes
fit in these 96 bits; unrestricted 104-bit magnitudes can leave a suffix.
The first oracle incorrectly assumed successive rounding. Its failed receipt
is retained; the corrected oracle tests the existing documented wire contract.
