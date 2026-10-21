# Fe Mandelbrot

A full-window Mandelbrot explorer written in Fe, with a rich OKLCH palette,
OKLab interpolation and blur, progressive WebGPU refinement, stable view caches,
and an interactive logarithmic zoom control with live magnification.

**[Explore](https://micahscopes.github.io/fe-mandelbrot/)** ·
**[Color lab](https://micahscopes.github.io/fe-mandelbrot/colors/)** ·
**[Browse the Fe source](https://micahscopes.github.io/fe-mandelbrot/viewer/index.html)**

Drag to pan. Scroll or pinch to zoom around the pointer. The bottom slider spans
the supported zoom range; its magnification readout updates as you navigate.
Settings exposes the remaining controls. Rendering requires WebGPU.

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
| Fe | `feat/mb2-nested-param-bindings-20261020` (from `mb2`) | `51ccb9bd7db1e81a85f78e30c41f2806c96d33b3` |
| Sonatina | `mb2-task-borrows` | `f0ae3f5501cd8a51a6ba53f05ab5c43cd0091e47` |
| Naga | pinned by MB2 | `854ed576fa186d19b9f7d5a5bb5a1f2fa533dde1` |

Use Rust `nightly-2026-08-17` (the tested compiler reports 1.100.0-nightly) and
Python 3.11+. Bootstrap fetches the exact Fe commit and checks the Sonatina pins
in its Cargo manifest. It applies small generic runtime patches exposing CSS parts for Fe-declared controls
and matching Wasm RGBA channel order to WebGPU; neither contains application logic.

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
  Its catalog includes Mandelbrot, the color library, the color demo and itself.
  Both demo pages link to it, and it links back to both demos.
- `app/color_demo`: interactive OKLCH hue, OKLab blending and lightness/chroma demo.
- `lib/algebra`: shared vectors, matrices and complex values with arithmetic
  operators, equality, identities and explicit execution capabilities.
- `lib/perceptual_color`: shared color construction, interpolation, packing and display.
- `lib`: the matching Fe math/precision and source-inspection dependencies.
- `web`: layout, styling, and surface lifecycle calls only.
- `artifacts`: compiler-generated distribution files, checked in so Pages and
  local viewing are quick. Regenerate after changing Fe source.
- `toolchain`: generic control styling and Wasm color-order patches; revisions are locked.
- `tools`: bootstrap, compilation, source/artifact validation and site assembly.

The scalar fields stored with pixels remain independent of the palette. Colors
use a packed 12/10/10-bit OKLab representation between passes. OKLCH defines the
saturated anchors; spatial interpolation, fades, Gaussian filtering and AA operate
in OKLab. The final fragment converts to sRGB once, using a tested square-root
transfer approximation. Display conversion clips out-of-gamut channels; this is not a general
CSS Color 4 gamut-mapping implementation.

The current reference uses 91 fractional bits. Persistent numerical and image
buffers are reused; the finite history is not an unlimited map of visited areas.
This explorer contains no Mandelbrot proving or protocol implementation.

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
