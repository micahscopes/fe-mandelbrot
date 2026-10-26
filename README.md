# Fe Mandelbrot

A Mandelbrot explorer written in Fe, drawn with WebGPU. It is an experiment,
not a finished or supported application.

**[Explore](https://micahscopes.github.io/fe-mandelbrot/)** ·
**[Color lab](https://micahscopes.github.io/fe-mandelbrot/colors/)** ·
**[Fe source](https://micahscopes.github.io/fe-mandelbrot/viewer/index.html)**

## Status and limits

- The demo is built with experimental prototype branches of the Fe compiler
  and Sonatina (see [Toolchain](#toolchain)). Those branches are not released,
  are likely to contain bugs, and are likely to be out of date with upstream
  Fe and Sonatina. Expect breakage when the pins are updated or removed.
- A WebGPU browser is required. There is no fallback renderer.
- Results differ between GPUs. An Android phone GPU returned wrong numbers and
  an older iOS version failed at pipeline creation. See
  [Known device problems](#known-device-problems).
- The numerics are limited: the reference orbit uses 91 fractional bits and
  accuracy at every accepted zoom depth is not established.

## Use

Drag with one or two fingers to pan. Pinch or scroll to zoom. The slider spans
the supported zoom range. Settings holds the remaining controls. The URL keeps
the exact view.

## Run the published build locally

Python 3.11 or newer is enough. No compiler is needed.

```sh
python3 tools/site.py --out dist
python3 -m http.server --directory dist 8000
```

Open `http://localhost:8000`. `tools/site.py` refuses to assemble a site whose
Fe source differs from the recorded compiled artifacts.

## Toolchain

`toolchain.lock.json` pins the exact revisions:

| Dependency | Branch | Revision |
| --- | --- | --- |
| Fe | `feat/mb2-upstream-sonatina-20261022` | `7018ecfadc1b4d780ff8e7f815dc4ef18f11e13e` |
| Sonatina | `feat/mb2-upstream-rebase-20261022` | `d5c001d83500080c5f1c49941a92b53588730ede` |
| Naga | pinned by the Fe branch | `854ed576fa186d19b9f7d5a5bb5a1f2fa533dde1` |

These are personal prototype branches. They are not upstream releases.
`toolchain/patches` adds small changes to the browser runtime (control styling,
channel order, pipeline preparation, startup, error messages).

To rebuild, use Rust `nightly-2026-08-17` and Python 3.11 or newer:

```sh
python3 tools/bootstrap.py
python3 tools/build.py --fe .cache/target/release/fe --out .cache/build-1 --record
python3 tools/site.py --out dist
```

`--record` replaces the checked-in `artifacts/`. Each build needs a new `--out`
directory. A full build takes about 13 minutes.

## Layout

- `app/renderer`: camera, input, orbit computation, progressive refinement,
  color, blur and antialiasing.
- `app/color_demo`, `app/source_viewer`: the color lab and the source viewer.
- `lib`: Fe libraries (precision arithmetic, algebra, gestures, color).
- `web`: page layout and styling.
- `artifacts`: compiled output, checked in so Pages deploys without a compiler.
- `toolchain`, `tools`: pins, patches and build scripts.
- `tests`: browser and GPU checks.

Pushes to `main` check the recorded artifacts and deploy through GitHub Actions.
A source change must come with regenerated artifacts. The manual workflow
**Rebuild with pinned MB2** checks a clean build.

## Rendering outline

All pixel work runs on the GPU. The Wasm module handles input, frame scheduling
and stored state. The reference orbit is built with exact multi-word integer
arithmetic, and pixels are computed as perturbations from it. A coarse preview
shows while the orbit is built, then the image fills in cohort by cohort. The
number of steps per frame doubles while frames arrive within 50 ms of each other
and is cut when they are later. Colors move between passes as packed OKLab.

## Known device problems

- Android phone with an Arm Valhall GPU: a function that returned an
  array-bearing value after a dynamic-index write returned zeros, which broke
  the default view and touch panning. The exact-number code now writes results
  through `mut` parameters, and touch panning works. It was seen on one phone
  model; whether other Android GPUs are affected is not known.
  `tests/camera-delta-gpu` and `previews/camera-delta-probe-5/` check this on a
  device.
- Older iOS with WebGPU enabled by hand: the `build_reference` pass fails at
  pipeline creation. The cause is not known.

`?trace=1` records a per-frame camera observation in the URL for debugging.

## Tests

The browser tests need a WebGPU browser and `playwright-core`. Set
`OWNED_SOFTWARE_BROWSER=1` to use an isolated software-GPU browser, whose
results say nothing about a physical phone.

```sh
BASE_URL=http://localhost:8000/ node tests/smoke.mjs
node tests/pan-presentation.mjs
node tests/refinement-preview.mjs
node tests/colors.mjs
node tests/source-viewer.mjs
```

The remaining scripts in `tests` cover gestures, URL state, startup and pipeline
preparation.

## Credits and license

Adapted from the Fe MB2 research demos. Libraries retain the Fe project's
Apache 2.0 license.

- [OKLab, Björn Ottosson](https://bottosson.github.io/posts/oklab/)
- [sRGB transfer approximation, Ian Taylor](https://chilliant.blogspot.com/2012/08/srgb-approximations-for-hlsl.html)
- [Void-and-cluster ranking](https://cseweb.ucsd.edu/~ravir/stbn.pdf)
