# Precision execution regression

The precision library's floating expansions require residuals to survive
execution. CPU arithmetic alone cannot certify that requirement on WebGPU.
These16 runtime-input cases exercise TwoSum, split and TwoProduct, using exact
rational expectations. Eight cases use operands from the first divergent
compensated Mandelbrot iteration. The shader loads operands from storage;
they cannot disappear through compile-time constant folding.

```sh
python3 tests/precision-execution/oracle.py
/path/to/fe web build tests/precision-execution --out /absolute/scratch/eft-bundle
PLAYWRIGHT_MODULE=/absolute/path/to/playwright-core/index.mjs \
  node tests/precision-execution/gpu.mjs \
  /absolute/scratch/eft-bundle tests/precision-execution/cases.json \
  /absolute/scratch/eft-receipt.json
```

With the published552d35408 compiler and current precision library, the
actual Chrome155/AMD GPU run fails45 output lanes:13 TwoSum residuals and32
split outputs. In particular, TwoSum(1,2^-25) returns(1,0), while the exact
result requires residual2^-25. The tested TwoProduct lanes pass; this finite
sample does not certify that operation generally. There are no shader, GPU
validation or trap errors in the recorded run.

This is a deliberately failing regression, not a completed repair. The
runner writes its receipt before asserting and closes only its own page,
GPU resources and CDP connection. An isolated primitive pass can optimize
differently from a full recurrence; passing it does not replace the renderer
oracle, continuation-partition and performance gates.
