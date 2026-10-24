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
| Fe | `feat/mb2-upstream-sonatina-20261022` (from `mb2`) | `7018ecfadc1b4d780ff8e7f815dc4ef18f11e13e` |
| Sonatina | `feat/mb2-upstream-rebase-20261022` | `d5c001d83500080c5f1c49941a92b53588730ede` |
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
pinned compiler and all three Fe applications, publishing the site as an artifact.

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
This explorer contains no Mandelbrot proving or protocol implementation.

The coarse preview advances against the valid prefix while a reference orbit is
still being built. Its persistent 256×256 continuation buffer pauses at the end
of that prefix and resumes as samples arrive. Publishing the same orbit preserves
its checkpoints; changing camera, orbit generation or bank invalidates them.
Unfinished samples retain a reusable cached image rather than being classified
as interior. Final native refinement remains separate from this preview. It sweeps the image one
cohort of pixels per step. A frame runs one step at first and more while frames arrive within
20 ms, so a fast display finishes in far fewer frames and a slow one keeps small frames. Its immutable-reference
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
`node tests/pan-presentation.mjs` checks the actual GPU cache during one- and
two-finger drags, nonzero camera displacement, and changed presented pixels.
Set `OWNED_SOFTWARE_BROWSER=1` to launch an isolated software-GPU test browser.

### Gesture geometry in Fe

`gestures` turns stable contact identities into one anchored motion. A finger
pans; two fingers pan, pinch and rotate together. The explorer uses two contact
slots; `Contacts<N>` remains reusable at any compile-time capacity. Additional
contacts are ignored while both slots are occupied.

The application follows one camera operation:

```fe
camera.follow(motion, viewport)
```

A membership-stable baseline prevents asynchronous finger events from accumulating
zoom-limit or center-limit errors. Membership changes, cancellation, and external
camera edits establish a new anchor. The CSS frame stays fixed until all contacts
end, so mobile layout changes cannot erase pan or introduce a false pinch. The
next gesture measures a fresh frame. The same complex
camera basis defines pixel projection and inverse history reprojection. The
precise center stays in expansion arithmetic; orientation never widens per-pixel
checkpoints or allocates another image buffer.

Version 2 URLs preserve the exact orientation words. Version 1 links restore an
unrotated camera. `Similarity2` provides reusable point mapping, composition and
a scale-aware inverse; gesture translation keeps small deltas separate to preserve
deep-zoom pan precision.

`tests/contact-state.mjs` checks actual compiled Fe camera behavior, including
rotation at zoom limits. `tests/contact-browser.mjs` exercises actual browser touch
transport and Fe recognition; it does not substitute for GPU presentation or a
physical-phone check. `tests/gesture-kernel/gpu.mjs` checks generated GPU projection,
inverse mapping, and similarity composition down to `1e-27` zoom.

`Similarity2.inverse()` requires a nonzero finite multiplier and a finite,
representable inverse map. As with the other floating-point algebra primitives,
callers own that domain; it is not an arbitrary-input matrix validation API.


GPU camera tracing is temporarily available with `?trace=1`; other query
parameters are ignored and neither enable nor disable it (`tests/trace-query.mjs`). Fe reads back one
56-byte observation per frame and appends the last completed observation to the
view URL as `~g:` followed by fourteen hexadecimal words. Ordinary view URLs
remain unchanged; diagnostic words are never restored as camera state. The
packet records begin/end frame stamps, the GPU camera's first two words per
axis, cached-camera lower words, initial-cache offsets, cache/reference status,
and the reprojected center tap. This diagnostic adds two small GPU passes and a readback; it is
intended to locate the outstanding physical-phone rendering failure. The URL
contains the last observation available when input synchronizes location, so
its GPU camera may precede the CPU camera by a frame.

### Camera arithmetic probe

`tests/camera-delta-gpu` runs the production frame-scope camera difference
(`precision::array_fixed::expansion_difference<10>`) and its stages on a
device's own GPU, one single-invocation workgroup per case, and compares every
word with the exact rational model in `oracle.py`. The corpus includes the
camera pairs reported by the Pixel. The stages (conversion digits and signs,
binary32 projection, subtraction) are reported separately, so a failure points
at one operation.

```sh
fe web build tests/camera-delta-gpu --out /tmp/camera-delta-gpu
node tests/camera-delta-gpu/assemble.mjs /tmp/camera-delta-gpu /tmp/camera-delta-site
OWNED_SOFTWARE_BROWSER=1 node tests/camera-delta-gpu/gpu.mjs /tmp/camera-delta-site /tmp/receipt.json
```

The assembled directory is a static page; `previews/camera-delta-probe/` serves
it on Pages. Software-GPU results do not describe a physical phone.

On Arm Valhall GPUs (the Pixel) a function that fills an array in a loop and
returns it by value, alone or inside a struct, returned zeros in the probe
(`previews/camera-delta-probe-3/`). The exact-number code therefore keeps every
loop in a helper that writes through `mut self`; the functions that return the
value contain no loop. `previews/camera-delta-probe-4/` runs the same cases
against that code, with the failing shapes kept as labelled controls.
