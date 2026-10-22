# WGSL optimizer experiment

Runs pinned Nagami on a compiled renderer bundle, outside the production build.
It preserves resource interfaces and full float-literal precision, validates every
optimizer pass, and keeps formatted output plus transformation reports/name maps.
This is not a proof of floating-point or GPU execution equivalence.

```sh
cd experiments/wgsl-optimizer
npm ci --ignore-scripts --no-audit --no-fund
node optimize.mjs /path/to/renderer /new/path/baseline baseline
node optimize.mjs /path/to/renderer /new/path/max max
```

`baseline` and `aggressive` preserve source declaration names and disable budgeted
inlining. `max` allows helper removal/inlining and renaming while preserving the
host interface; its name map is retained for comparison. Output paths must be new.
The application Wasm and resources are copied unchanged; only WGSL and its byte
lengths in the manifest change. Production artifact hashes are not regenerated.

## Initial measurements

Input: Fe source `d679b18`, renderer built with Fe `7741b9ef8` and Sonatina
`1145fe2f9`. Nagami `2026.11.0`, 18 passes, no optimizer validation errors:

| Profile | WGSL bytes | Reference shader bytes | Reference functions |
| --- | ---: | ---: | ---: |
| Generated | 751,209 | 233,547 | 189 |
| Baseline | 476,610 | 141,443 | 189 |
| Aggressive | 470,501 | 139,737 | 189 |
| Max | 456,601 | 137,453 | 55 |

Both baseline and max reference pipelines still exceeded a 90-second deadline in
fresh Chromium147/SwiftShader probes with no application buffers or submissions.
Max's camera-check pipeline prepared in 7.85 seconds. These bounded measurements
do not establish a physical Pixel fix, nor prove that compilation never finishes.
Full-image numerical comparison is still pending; these outputs are not deployed.

Source reduction includes printing changes as well as optimization. Structural
comparison (including riff-catalog where a suitable producer is available) and
actual numerical/runtime gates must distinguish those effects before integration.
