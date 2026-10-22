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

## riff-catalog comparison

`catalog.py` exports one ordered-token graph per WGSL function. It removes
whitespace/comments, categorizes names, constants and built-in types, and retains
operators and call identities. Optimizer name maps restore original helper names.
This first recipe is a lexical audit: it does not resolve local bindings or prove
semantic equivalence. In particular, `names-blind` matches are review candidates.

```sh
python3 catalog.py /path/to/generated /new/path/catalog-generated
python3 catalog.py /path/to/max /new/path/catalog-max \
  --optimizer-report /path/to/max/optimizer-report.json
riffcat-core --corpus /new/path/corpus check \
  --declaration /path/catalog-generated/declaration.json \
  /path/catalog-generated/units.jsonl /path/catalog-max/units.jsonl
riffcat-core --corpus /path/corpus add --world generated \
  --declaration /path/catalog-generated/declaration.json /path/catalog-generated/units.jsonl
riffcat-core --corpus /path/corpus add --world optimized /path/catalog-max/units.jsonl
riffcat-core --corpus /path/corpus diff --unit wgsl-function generated optimized
riffcat-core --corpus /path/corpus overlap --unit wgsl-function \
  --mode shape --facet names-blind generated optimized
python3 check_catalog.py /path/to/riffcat-core
```

Actual initial run: 906 units pass declaration validation. Of 709 generated
function definitions, 197 remain in the max output and 512 disappear. Eleven
surviving functions retain their structure at this recipe's granularity. There
are ten cross-world names-blind overlap classes, including small projection
helpers. The catalog controls verify that identifier renaming matches under
`names-blind`, while changes to constants, operators or callees do not.

These results distinguish syntax changes from renaming; they do not tell us which
removed functions were inlined versus eliminated, whether floating operations
round identically, or why a native driver stalls. Those need separate evidence.
