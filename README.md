# Fe Mandelbrot

A full-window Mandelbrot explorer written in Fe, with a rich OKLCH palette,
OKLab interpolation and blur, progressive WebGPU refinement, stable view caches,
and an interactive logarithmic zoom control with live magnification.

**[Explore](https://micahscopes.github.io/fe-mandelbrot/)** ·
**[Color lab](https://micahscopes.github.io/fe-mandelbrot/colors/)** ·
**[Browse the Fe source](https://micahscopes.github.io/fe-mandelbrot/viewer/index.html)**

Drag with one or two fingers to pan. Pinch to zoom around the contact center;
scroll to zoom around the pointer. The bottom slider spans
the supported zoom range; its magnification readout updates as you navigate.
Settings exposes the remaining controls. The URL retains the exact camera,
resolution and antialiasing settings, including deep coordinate terms. Rendering
requires WebGPU.

## Run the published build locally

Python 3.11 or newer is sufficient; no compiler or JavaScript package install is
needed for the reviewed, precompiled build:

```sh
python3 tools/site.py --out dist
python3 -m http.server --directory dist 8000
```

Open `http://localhost:8000`. Remote hosting uses HTTPS, as on GitHub Pages.
The publisher checks the Fe-source and compiled-artifact hashes before building
so edited sources cannot silently publish an old renderer.

## Build from Fe

The exact dependency revisions live in `toolchain.lock.json`:

| Dependency | Branch | Revision |
| --- | --- | --- |
| Fe | `feat/mb2-demo-integration-20261020` (from `mb2`) | `552d354089021bec6c00b510467f81414689422f` |
| Sonatina | `feat/mb2-demanded-bitcast-20261020` | `1145fe2f9c42c7e6c53bae48f6e83fac087c3709` |
| Naga | pinned by MB2 | `854ed576fa186d19b9f7d5a5bb5a1f2fa533dde1` |

Use Rust `nightly-2026-08-17` (the tested compiler reports 1.100.0-nightly) and
Python 3.11+. Bootstrap fetches the exact Fe commit and checks the Sonatina pins
in its Cargo manifest. It applies generic runtime patches for control styling, matching Wasm/WebGPU
channel order, bounded pipeline preparation, and starting live surfaces without
a disposable poster.

```sh
python3 tools/bootstrap.py
python3 tools/build.py --fe .cache/target/release/fe --out .cache/build-1 --record
python3 tools/site.py --out dist
```

Every compile uses a new output directory; unsuccessful builds can be inspected.
Set `CARGO_TARGET_DIR` and `--out` to your preferred local build/cache locations.
The Fe workspace maps the pinned standard library at `.cache/fe`; the app has no
absolute machine paths. A manual GitHub Actions workflow also rebuilds this
pinned compiler and the workspace applications, publishing the site as an artifact.

## Layout

- `app/renderer`: camera/input, quality policy, orbit computation, progressive
  cohorts, numerical caches, color conversion, blur and antialiasing.
- `app/source_viewer`: the Fe source-viewer ingot shared by both demos. It owns
  source selection, fetching, cancellation, line numbers and rendering.
  Its catalog includes the renderer, algebra and precision libraries, gesture
  policy, source loader, color library, color demo and viewer itself.
  Both demo pages link to it, and it links back to both demos.
- `app/color_demo`: interactive OKLCH hue, OKLab blending and lightness/chroma demo.
- `lib/gestures`: fixed-capacity contacts, centroid geometry and viewport transforms.
- `lib/algebra`: shared vectors, matrices and complex values with arithmetic
  operators, equality, identities and explicit execution capabilities.
- `lib/perceptual_color`: shared color construction, interpolation, packing and display.
- `lib`: the matching Fe math/precision and source-inspection dependencies.
- `web`: layout, styling, and surface lifecycle calls only.
- `artifacts`: compiler-generated distribution files, checked in so Pages and
  local viewing are quick. Regenerate after changing Fe source.
- `toolchain`: generic browser runtime patches; dependency revisions are locked.
- `tools`: bootstrap, compilation, source/artifact validation and site assembly.

The scalar fields stored with pixels remain independent of the palette. Colors
use a packed 12/10/10-bit OKLab representation between passes. OKLCH defines the
saturated anchors; spatial interpolation, fades, Gaussian filtering and AA operate
in OKLab. The final fragment converts to sRGB once, using a tested square-root
transfer approximation. Display conversion clips out-of-gamut channels; this is not a general
CSS Color 4 gamut-mapping implementation.

The current reference uses 91 fractional bits. Camera and history differences use
117 fractional bits once per frame, and perturbation offsets account for the
reference center actually stored. This does not increase reference recurrence
precision or establish accuracy at every accepted zoom depth. Persistent numerical and image
buffers are reused; the finite history is not an unlimited map of visited areas.
The optional point-proof integration is documented below; it checks a separate Q12 calculation.

The coarse preview advances against the valid prefix while a reference orbit is
still being built. Its persistent 256×256 continuation buffer pauses at the end
of that prefix and resumes as samples arrive. Publishing the same orbit preserves
its checkpoints; changing camera, orbit generation or bank invalidates them.
Unfinished samples retain a reusable cached image rather than being classified
as interior. Final native refinement remains separate from this preview. Its immutable-reference
checkpoints retain only a complex delta and packed control words while live,
then reuse the payload for magnitude and fade time when finished. This uses
16 bytes per native pixel; the growing-prefix preview retains its 32-byte
continuations because its reference can still grow.

Color blending uses the algebra library's vector interpolation program under
`DirectExecution`. The same program can run under `CountedExecution` to inspect
its operations. Ordinary arithmetic operators keep their pure meaning; execution
policy is an explicit Fe capability. Matrix composition uses `*`, while
matrix-vector action uses `.apply(vector)` on the pinned compiler.

## GitHub Pages

Pushes to `main` validate the recorded artifacts and deploy through GitHub
Actions. Fe-source changes must include regenerated artifacts (`--record`).
HTML/CSS-only edits deploy without rebuilding the compiler. The manual
**Rebuild with pinned MB2** workflow verifies a clean source build separately.

## Credits

Adapted from the Fe MB2 research demos and their local demo-recovery work.
Libraries retain the Fe project's Apache 2.0 license.

- [OKLab, Björn Ottosson](https://bottosson.github.io/posts/oklab/)
- [sRGB transfer approximation, Ian Taylor](https://chilliant.blogspot.com/2012/08/srgb-approximations-for-hlsl.html)
- [Void-and-cluster ranking](https://cseweb.ucsd.edu/~ravir/stbn.pdf)

The rank tile was generated locally from the published algorithm; no upstream
noise texture assets or SDK code were copied.

## Browser smoke test

With a WebGPU browser exposing a local CDP endpoint and `playwright-core` installed:

```sh
BASE_URL=http://localhost:8000/ node tests/smoke.mjs
```

The test creates and closes its own page, checks the zoom slider and Fe readout,
verifies the unchanged numerical refinement digest, and opens the Fe source
viewer at desktop and phone sizes. `PLAYWRIGHT_MODULE` and `CDP_URL` can override
the module path and browser endpoint.

`node tests/refinement-preview.mjs` checks distinct resident camera positions,
early preview output, reference publication and drag recovery. Readback adds
measurement overhead, so its timings are observations rather than GPU benchmarks.
The binary32 continuation fixture is documented in
[`tests/preview-continuation`](tests/preview-continuation/README.md).
`node tests/pipeline-preparation.mjs` checks bounded, memoized pipeline preparation
and waits for in-flight preparation to finish before reporting failure.

Run just the color demo check with `node tests/colors.mjs`. Its ingot lives in
`app/color_demo` and depends on `lib/perceptual_color`, the same library used by
Mandelbrot. `oklch(L, C, hue_degrees)` constructs a color; `blend(a, b, t)`
interpolates in OKLab; `rgba(color)` converts for display.

When using an older already-built compiler, the build script also applies the
generic Wasm channel-order patch to its emitted adapter. A freshly bootstrapped
compiler emits that fix directly.

The Fe source viewer highlights comments, strings, keywords and numbers in Fe.
At build time, `fe doc … json` supplies the compiler's existing SCIP export,
which adds type, function and field colors. `tools/source_catalog.py` packages
UTF-8 byte ranges with the unchanged source; no browser JavaScript tokenizes or
interprets source. Raw links and copied source retain the original bytes.
Run `node tests/source-viewer.mjs` to check both demo links, all source files,
highlighting, exact text, stale fetches, error recovery and phone layout.
`node tests/source-selection.mjs` exercises real selection and clipboard copying.
Set `STAGED_SITE` to a locally assembled site and use an HTTPS `BASE_URL` to test
unpublished assets in a remote CDP browser.

`node tests/contact-state.mjs artifacts/renderer` and
`node tests/url-state.mjs artifacts/renderer` execute the compiled Fe gesture and
URL lanes directly. `node tests/mobile-url-browser.mjs` exercises real touch,
restoration before the first frame, resizing and browser history in responsive
Chrome. `node tests/startup.mjs` checks one GPU graph and stable buffer reuse.

## Selected-point proof experiment

The integration branch adds **Prove a point** to the explorer. Open that panel,
choose **Show whole set** if needed, then **Pick on fractal**, **Generate proof**,
and **Test proof**. **Test corrupted copy** changes a copied witness word and
checks that it is rejected; it preserves the original receipt.

Selection snaps to the nearest 1/4096 coordinate, with ties away from zero.
The exact signed rational point is shown before generation. All camera expansion
terms participate in the projection; the pointer is a normalized CSS-coordinate
sample, rather than a particular backing-pixel center. At deep zoom multiple
locations can snap to the same point, or the snapped point can be outside the
visible region. The marker follows the snapped point and is hidden offscreen.

The fixed profile `viewer-capacity-q12-v1` accepts real coordinates in [-2,1),
imaginary coordinates in [-1.5,1.5), and escape steps at most1023, with a1024-row
padded domain. It uses the existing integer Q12 recurrence and escape
threshold |z|² ≥ 4 (radius2). No escape within the bound is reported without generating a proof;
it does not establish membership in the exact real-number Mandelbrot set.

The independent **Fe verifier compiled to Wasm** replays every main/auxiliary
witness column, checks the expected point/public packing/digest and trace
commitments, and checks transcript, FRI openings/folds and composition degree/root
consistency. It is full-witness replay plus selected experimental receipt checks.
It does not reconstruct LDE roots from the trace or derive the AIR composition;
it is not a complete succinct cryptographic verifier. Producer flags alone cannot
establish acceptance. Selections and receipts are frozen by request generation.

The viewer, GPU prover and Wasm verifier are members of **one Fe workspace**:

| Ingot | Responsibility |
| --- | --- |
| `app/renderer` | High-precision interactive explorer |
| `app/point_prover` | WebGPU witness generation and proof passes |
| `app/proof_checker` | Independent integer replay and receipt checks in Wasm |
| `app/certified_escape` | Directed dyadic interval arithmetic for the exact deep-offset family |
| `lib/mandelbrot_proof_profile` | Shared receipt geometry and fixed profile |
| `lib/mandelbrot_proof_*` | AIR, encodings, domains and GPU placement |
| `lib/precision`, `lib/poseidon_*`, `lib/fri_*`, `lib/parallel_*` | Shared field, hashing, folding and transform vocabulary |

All application Fe sources live here. Only the pinned compiler/core/standard
library are fetched by bootstrap; no second application checkout is required.
The existing precision, complex algebra, gestures and perceptual color libraries
remain shared with the cleaned-up renderer. Migrated proof sources are recorded in
`toolchain/proof-source-provenance.json`. The bounded arithmetic/profile contract
is separate from the viewer's higher-precision rendering contract.

Both targets use the compiler revision in `toolchain.lock.json`, with the recorded
generic patches in `toolchain/patches`. `tools/build.py` builds viewer, colors,
source browser, prover and verifier together. The compiler currently packages
standalone Wasm interfaces through a tiny scalar render anchor; the checker worker
loads only its Wasm and generated interface, and requires no GPU device. The
browser adapter handles byte ownership and arena lifetime from the Fe schemas.
There is no hand-written verifier allocator or protocol arithmetic in JavaScript.

```sh
python3 tools/bootstrap.py
python3 tools/build.py --fe .cache/target/release/fe --out .cache/build-1 --record
python3 tools/site.py --out dist
python3 -m http.server --directory dist 8000
```

The checked-in artifacts make local viewing possible with Python alone. Site
assembly verifies source/artifact hashes and namespaces the complete renderer and
proof/frontend bundles by content identity. Rebuilding needs Rust only to build
the Fe compiler; the browser prover and verifier themselves are written in Fe.

Run `node tests/proof-selection.mjs` for coordinate/tie/deep-tail checks. The optional
independent Rust reference checker lives under `tests/oracle-rust` and is not an
application or browser dependency. Set `MB2_POINT_PROOF` to a browser test's
`proof-early.bin` to check that reference implementation and its captured-receipt
mutations. With the staged site served securely:

```sh
PLAYWRIGHT_MODULE=/path/to/playwright-core/index.mjs \
BASE_URL=https://approved-host/ CDP_URL=http://127.0.0.1:9222 \
PROOF_OUT=/local/receipts node tests/point-proof-browser.mjs
```

The test owns a background browser target and closes only that target. It checks
actual point clicks, early/late escape, generation, Fe/Wasm verification,
corrupted-copy rejection, bounded nonescape, range rejection and stale checks.
Timings include readback; GPU driver cache state is uncontrolled.


The computation studio now has two separate lanes. **Certified escape** runs
Fe/Wasm directed interval arithmetic for exact points `c=i+2^-k`, with public
circle centered at `i` and radius `2^(1-k)`. It uses the exact periodic reference
orbit and never rounds that tiny input into a Q12/f64 coordinate. Depth is
currently1–16,384, working precision32–4,096 bits (the UI offers selected sizes),
and the iteration budget1–10,000. The circle relation is fixed by this family;
this is not arbitrary-circle selection or the generic residual-certificate
checker yet. Results distinguish certified strict escape, inconclusive bounds
and invalid profiles. A dedicated cancellable worker keeps this calculation
off the UI thread. This lane reveals the point locally and generates **no ZK
proof**. The preserved **GPU proof lab** runs the older nonprivate Q12 receipt.

Measured on this lab CPU in actual Fe/Wasm: depth1,024 at256-bit precision
certifies by step821 in roughly0.24s; depth4,096 at1,024-bit precision certifies
by step3,285 in roughly10s. The same depth at4,096-bit working precision takes
roughly159s with the current schoolbook multiplication kernel. These are
arithmetic timings, not proof generation, rendering or universal performance
guarantees. Wasm setup and computation are shown separately. Scratch is166,416
bytes per call; total linear memory also includes native temporary records
(about2.8MB/10.7MB for the measured smaller/larger runs), and is checked for reuse.

`node tests/certified-escape.mjs` executes the actual compiled Wasm against292
independent Python-model endpoint fixtures, malformed inputs, the reviewed
exponent-limit failure regression, orbit cases and repeated-call memory checks.
Set `CERTIFIED_LARGE_CASE=1` to include both expensive4,096-depth profiles.
`tests/certified-studio-browser.mjs` exercises responsive UI, real computation,
cancellation, inconclusive results, the preserved legacy preflight and worker
startup failure. It requires Playwright and an explicitly chosen CDP browser.
