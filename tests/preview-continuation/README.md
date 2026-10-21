This Fe fixture executes the renderer's actual binary32 perturbation and cache code in Wasm. It covers chunk equivalence, incomplete-prefix pauses, cancellation rebasing, escapes, invalid references, camera/generation/bank invalidation, identity-preserving publication, and deep scheduling.

From the repository root, with the pinned compiler bootstrapped:

```sh
/path/to/fe web build tests/preview-continuation --out /absolute/scratch/preview-continuation
node tests/preview-continuation/verify.mjs /absolute/scratch/preview-continuation
```

Use a fresh output directory. The fixture exports eight result bits through the ordinary Fe surface initializer; all eight must pass. Native EVM tests cannot exercise these f32 calculations on this toolchain. This is a numerical continuation check, not a browser performance benchmark.
