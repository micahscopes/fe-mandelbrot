# Fe Mandelbrot

A Fe workspace for a Mandelbrot viewer, independently selected public regions
and witness points, and exact local arithmetic checks. Application interaction,
geometry, controls, GPU rendering and the local checker are authored in Fe.
The compiler generates the generic browser bindings.

The current work is **not a zero-knowledge proof system**. The local checker
receives the witness. The earlier GPU prover and full-witness checker remain
in the workspace while their workflow and the hiding protocol are unfinished.

Choose **Draw region**, select **Circle** or **Box**, and drag. Then choose
**Select point** and click a witness independently. Changing the witness keeps
the region fixed. **Full view** returns to the ordinary Mandelbrot overview.
Navigation uses drag/pinch/scroll when **Navigate** is selected.

The two local checks establish different positive statements:

- An escaping witness has a certified orbit iterate with squared norm strictly
  greater than four, and lies in the selected region.
- A bounded witness lies in the region and satisfies a finite sufficient
  certificate: an invariant disk, the strict period-two bulb, or the strict
  main-cardioid interior.

**Unknown** establishes neither claim. Running out of iterations does not
certify boundedness forever. Public view hides the local marker; it does not
turn local arithmetic into a private proof.

## Run the compiled application

```sh
python3 tools/site_studio.py --out dist
python3 -m http.server --directory dist 8000
```

Open `http://localhost:8000`. The viewer requires WebGPU; remote serving needs
HTTPS. Assembly checks source and artifact hashes. No application JavaScript
package install or compiler build is needed to run a recorded distribution.

## Build

Use the revisions in `toolchain.lock.json` and its recorded generic patches.
The resident-surface patch selects the existing checked allocator, so memory
created by a Fe initializer survives temporary allocations in later events.
It does not change the ordinary standalone canonical-call ABI.

```sh
python3 tools/bootstrap.py
python3 tools/build_studio.py --fe .cache/target/release/fe \
  --out .cache/studio-build --checks --record
python3 tools/site_studio.py --out dist
```

The browser page is composed in `app/studio`. The renderer owns camera,
selection, revision and evaluation state in `app/renderer`. The certified
arithmetic and incremental local checker are in `app/certified_escape`.
`app/claim_controls` is a standalone component fixture, not a second owner of
live selection state. Historical implementation and measurements are retained
in [the checkpoint record](docs/history/viewer-and-proof-checkpoints.md).

## Precision and remaining work

Selected visual points retain all four binary32 camera terms plus an exact,
factored binary32 offset. The local arithmetic accepts 32–4096 working bits.
These are separate limits: the current visual camera still has a finite zoom
floor and is not an arbitrary-depth coordinate editor.

Remaining work includes deep exact-coordinate input and navigation, stronger
perturbation certificates, polished same-owner Fe controls, the all-Fe GPU proof
workflow, and an independently reviewed complete hiding commitment/DEEP/FRI
protocol. Local arithmetic timings are not proof-generation timings.

## Verification

After a build with `--checks`:

```sh
FE_SELECTION_BUNDLE=artifacts/studio/checks/region-selection node tests/region-selection.mjs
FE_REGION_JOB_BUNDLE=artifacts/studio/checks/region-engine node tests/region-job.mjs
FE_CERTIFIED_BUNDLE=artifacts/studio/checks/certified \
  FE_REGION_JOB_BUNDLE=artifacts/studio/checks/region-engine node tests/certified-region.mjs
FE_CERTIFIED_BUNDLE=artifacts/studio/checks/certified node tests/certified-escape.mjs
FE_RESIDENT_BUNDLE=artifacts/studio/checks/resident-memory node tests/resident-memory.mjs
FE_STUDIO_DIR=artifacts/studio node tests/studio-resident.mjs
```

The JavaScript files above are test drivers/oracles. Application policy and
arithmetic execute in the compiled Fe modules. The lifetime test uses the actual
generated runtime's initialization and scratch-epoch methods, retains 1,024
sentinels, and deliberately fills larger temporary allocations between events.
