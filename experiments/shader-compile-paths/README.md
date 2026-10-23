# Reference shader compilation investigation

This is a diagnostic experiment, not a renderer implementation or a deployed
repair. Production rendering remains Fe. Handwritten WGSL here compares compiler
output shapes; it is not proposed as application source.

Source checkpoints: app d98eef84d13c5020d1cfcf147cd62d69948cf5c7,
Fe 842492ce9a6b3b05737334fcd0d9c2e4d79eb62d,
Sonatina 8c8e60b8221b272e96f11654ce7c16fd27098ac5.
The unchanged renderer emits 18 passes totaling 771168 WGSL bytes.
Actual Fe tests pass: 10 array/projection and 3 reference tests.

## Observations

All compilation timings use owned, fresh Chromium/SwiftShader browsers.
Compilation-only probes allocate zero application buffers and submit no work.
These are not measurements on a Pixel or a hardware GPU.

| Shader | WGSL bytes | Pipeline preparation |
| --- | ---: | ---: |
| Full refreshed reference shader | 249621 | exceeds 90 seconds |
| Extracted generated multiplication | 55594 | 2.704 seconds |
| Two dependent generated multiplications | 55683 | 8.908 seconds |
| Three dependent generated multiplications | 55743 | 19.943 seconds |
| Two dependent compact-loop multiplications | 55803 | 0.207 seconds |
| Extracted generated recurrence | 98903 | exceeds 30 seconds |
| Extracted recurrence with loop multiplication | 99023 | 13.682 seconds |

The tiny source increases between one, two and three multiplication calls have
large compilation costs. This implicates reachable computation structure, rather
than source size alone. It does not establish which downstream compiler pass is
responsible. A textual expansion estimate is not a measurement of actual driver
inlining.

The extracted helpers remain unchanged; only a new entry point reads dynamic,
canonical limb inputs and exposes results. The loop comparison replaces the
radix-8192, eight-limb sliding multiplication kernel. Its contract is limited to
canonical 13-bit limbs and binary signs. It preserves magnitude rounding upward
at half, magnitude wrap and signed zero; it does not preserve trap behavior for
invalid representations.

The generated and loop versions of two dependent multiplications each pass
128 software-GPU cases against the same independent Python integer oracle,
including zero, maximum magnitude, scale, half-scale, signs and seeded random
inputs. This finite sample does not establish full renderer equivalence.

Removing recurrence multiplication from an otherwise reduced shader compiles in
3.364 seconds; removing addition/subtraction instead still exceeds 30 seconds.
Removing trap writes alone also exceeds 30 seconds. These body-stubbing
experiments change semantics and enable dead-code elimination: they isolate
contributors, not additive function costs.

## Limits and next work

Loop multiplication alone does not bring the full reference shader below the
30-second diagnostic limit. Compact replacements of coordinate addition and a
loop over expansion terms have not yet cleared that limit either. Coordinate
conversion, repeated arithmetic calls and the entry's control flow need further
isolation. No phone fix or exact attribution between Fe/Sonatina and the
GPU compiler is established.

A production alternative must be authored in Fe and pass old/new arithmetic,
actual Wasm/GPU, checkpoint and application-image comparisons before promotion.
No diagnostic WGSL has been installed in the application.

## Reproduction artifacts

`receipts.json` preserves the raw bounded outcomes. The scripts are research
harnesses using the original lab's Playwright/Chromium and `pipeline-only-v2.mjs`.
They are not a portable package. Set `MB2_COMPILER_PROBE_ROOT` to a scratch folder
containing `renderer-upstream-4`, and provide the referenced browser probe.
Run extraction, repeated-multiplication and loop-multiplication scripts in that
order. Preserve the original bundle; every variant goes into its own directory.
The GPU harness additionally consumes `LOOP-MULTIPLY-CORPUS-1.json` in that root.
