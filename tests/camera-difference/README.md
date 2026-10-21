# Camera differences below the reference lattice

```
fe web build tests/camera-difference --out /tmp/camera-difference
node tests/camera-difference/verify.mjs /tmp/camera-difference /tmp/camera-difference.json
```

The actual Wasm transition calls renderer `center_delta`, including nonzero
canonical four-word centers. It checks both signs through2^-117, identity,
and the residual between each authored center and its actual packed L8
reference origin. In particular `(1,2^-95,0,0)` has a quantized reference1
and residual2^-95. Output encodings travel as exact numeric f32 values.

The production change widens only frame-scope camera subtraction to117
fractional bits. It preserves reference storage, recurrence, anchor reuse
and float output layout. These tests do not assert high-precision orbit
accuracy or prove a visual kink fixed; actual default/deep GPU oracles remain
required. Packed-origin metadata compensation is a separate integration change.
