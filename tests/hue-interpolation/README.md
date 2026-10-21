# Finite hue interpolation

Compile this workspace member with the pinned normal CLI:

```
fe web build tests/hue-interpolation --out /tmp/hue-probe
node tests/hue-interpolation/verify.mjs /tmp/hue-probe /tmp/hue-receipt.json
```

The actor takes runtime endpoints and an interpolation fraction. Its transition
calls the public Oklch operation; its display is inert. The Node runner executes
actual Wasm and compares binary32 output bits against independent exact BigInt
rational reduction, covering every finite exponent, both signs, representative
mantissas, ordinary turns, signed half-turn ties and opposite finite extrema.
No browser, GPU or full renderer build is needed. Nonfinite inputs are outside
this finite-angle contract.
