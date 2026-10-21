# Reference rebuild regression

The same mathematical camera should not acquire an incorrect escape iteration
when its reference is rebuilt. This fixture starts just below the91-bit reference
lattice quantum near c=i, then pans by1e-28 while remaining inside the reference
reuse threshold. Suspending the surface discards its GPU graph; resuming rebuilds
the reference at the unchanged camera.

On published da5c71e, pixel(14,24) escapes at110 with the reused reference and113
after rebuilding. Independent Decimal iteration at100 and180 digits agrees on110.
Both runs mark it escaped without a glitch. This is a deliberately failing
regression until the reference/perturbation precision issue is repaired. It does
not establish the cause or a large visual failure from raw reference counts.

Use the same immutable assembled site for both arguments:

```sh
SIDE=128 SCENARIO_FILE=tests/reference-depth/ci-minimum.json CAPTURE_REFERENCE=1 \
  node tests/native-checkpoint/production.mjs \
  /absolute/site /absolute/site /absolute/scratch/reference-rebuild
```

The runner preserves exact camera bits, serializes real graph submissions, saves
all image/oracle captures, and closes only its own test tabs. Optional orbit
readback saves the actual packed references, including center and DC metadata,
for an ordered arithmetic replay. Its manifest determines the storage stride.
The usual production scenario is unchanged when SCENARIO_FILE is absent.

Verify the configured expected iteration independently from the captured camera
bits (the diagnostic reports GPU disagreements rather than hiding them):

```sh
python3 tests/reference-depth/oracle.py /absolute/scratch/reference-rebuild
```

The browser runner explicitly asserts that sample's iteration, escape and glitch
flags in each deep capture. The current expected failure is110 versus113 in
`deep-after-visibility`. This fixture is not a passing correctness certification.
