import assert from 'node:assert/strict';
import fs from 'node:fs/promises';
import path from 'node:path';

const {chromium} = await import(process.env.PLAYWRIGHT_MODULE || 'playwright-core');
const browser = await chromium.connectOverCDP(process.env.CDP_URL || 'http://127.0.0.1:9222');
const base = process.env.BASE_URL || 'https://micahscopes.github.io/fe-mandelbrot/';

async function attachStagedSite(page) {
  if (!process.env.STAGED_SITE) return;
  const root = path.resolve(process.env.STAGED_SITE);
  const prefix = new URL(base);
  await page.route(url => url.origin === prefix.origin && url.pathname.startsWith(prefix.pathname), async route => {
    const url = new URL(route.request().url());
    let rel = decodeURIComponent(url.pathname.slice(prefix.pathname.length));
    if (!rel || rel.endsWith('/')) rel += 'index.html';
    const file = path.resolve(root, rel);
    if (!file.startsWith(root + '/')) return route.fulfill({status: 403, body: ''});
    const type = {
      '.html': 'text/html',
      '.js': 'text/javascript',
      '.json': 'application/json',
      '.wasm': 'application/wasm',
      '.css': 'text/css',
      '.fe': 'text/plain',
      '.view': 'application/octet-stream',
      '.wgsl': 'text/plain',
    }[path.extname(file)] || 'application/octet-stream';
    try {
      await route.fulfill({status: 200, contentType: type, body: await fs.readFile(file)});
    } catch {
      await route.fulfill({status: 404, body: 'Missing staged asset'});
    }
  });
}

async function measureColdViewOnset(viewSpec) {
  const page = await browser.newPage({viewport: {width: 512, height: 512}, deviceScaleFactor: 1});
  const errors = [];
  page.on('pageerror', err => errors.push(String(err)));
  await attachStagedSite(page);
  try {
    await page.addInitScript((spec) => {
      const create = GPUDevice.prototype.createBuffer;
      GPUDevice.prototype.createBuffer = function(options) {
        return create.call(this, {
          ...options,
          usage: options.usage & GPUBufferUsage.STORAGE ? options.usage | GPUBufferUsage.COPY_SRC : options.usage,
        });
      };
      window.onsetSamples = [];
      window.onsetPending = [];
      window.onsetDropped = 0;
      const define = customElements.define.bind(customElements);
      customElements.define = function(name, ctor, ...rest) {
        if (name === 'fe-surface') {
          const render = ctor.prototype._render;
          ctor.prototype._render = async function(...args) {
            if (!this._overrideApplied && spec.overrideParams && this._uniforms) {
              this._overrideApplied = true;
              // Override center_x_w0 (0), center_x_w1..3 (1..3), center_y_w0 (4), center_y_w1..3 (5..7), zoom (8)
              this._uniforms[0] = spec.center_x_w0;
              this._uniforms[1] = 0;
              this._uniforms[2] = 0;
              this._uniforms[3] = 0;
              this._uniforms[4] = spec.center_y_w0;
              this._uniforms[5] = 0;
              this._uniforms[6] = 0;
              this._uniforms[7] = 0;
              this._uniforms[8] = spec.zoom;
              this._replaceSurfaceState(this._uniforms.slice());
            }
            const start = performance.now();
            const result = await render.apply(this, args);
            const gpu = this._gpu;
            const reference = gpu?.resourceBuffers.get('reference');
            const previewCache = gpu?.resourceBuffers.get('preview_cache');
            const pixels = gpu?.resourceBuffers.get('pixels');
            if (!reference || !previewCache || !pixels || onsetSamples.length >= 160) return result;
            if (this._onsetInFlight >= 8) {
              onsetDropped++;
              return result;
            }
            this._onsetInFlight = (this._onsetInFlight || 0) + 1;
            const device = gpu.device;
            const buffer = device.createBuffer({
              size: 320,
              usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ,
            });
            const encoder = device.createCommandEncoder();
            encoder.copyBufferToBuffer(reference, 0, buffer, 0, 28);
            encoder.copyBufferToBuffer(previewCache, 0, buffer, 32, 72);
            for (let y = 0; y < 4; y++) {
              for (let x = 0; x < 4; x++) {
                const index = (32 + y * 64) * 256 + 32 + x * 64;
                encoder.copyBufferToBuffer(pixels, index * 12, buffer, 112 + (y * 4 + x) * 12, 12);
              }
            }
            device.queue.submit([encoder.finish()]);
            const capture = buffer.mapAsync(GPUMapMode.READ).then(() => {
              const bytes = buffer.getMappedRange();
              const refWords = new Uint32Array(bytes, 0, 7);
              const pcacheWords = new Uint32Array(bytes, 32, 18);
              const colors = new Float32Array(bytes, 112, 48);
              onsetSamples.push({
                frameStartMs: start,
                observedMs: performance.now(),
                active: refWords[0],
                activeValid: refWords[1],
                pending: refWords[2],
                referenceSteps: refWords[3],
                previewRefGen: pcacheWords[10],
                previewBank: pcacheWords[11],
                previewPrefixOnly: pcacheWords[12],
                previewStepTarget: pcacheWords[13],
                previewCompletedSteps: pcacheWords[14],
                previewBudget: pcacheWords[15],
                previewEpoch: pcacheWords[16],
                previewCompleted: pcacheWords[17],
                nonzeroComponents: [...colors].filter(v => v !== 0).length,
              });
              buffer.unmap();
            }).finally(() => {
              buffer.destroy();
              this._onsetInFlight--;
            });
            onsetPending.push(capture);
            return result;
          };
        }
        return define(name, ctor, ...rest);
      };
    }, viewSpec);

    await page.goto(new URL('index.html', base).href);
    await page.waitForFunction(
      () => onsetSamples.some(s => s.activeValid === 1 && s.previewCompleted === 1),
      null,
      {timeout: 60000},
    );
    await page.waitForTimeout(200);
    const observed = await page.evaluate(async () => {
      await Promise.all(onsetPending);
      return {
        samples: onsetSamples.sort((a, b) => a.frameStartMs - b.frameStartMs),
        dropped: onsetDropped,
        state: document.querySelector('fe-surface').state,
        camera: document.querySelector('fe-surface')._uniforms.slice(0,10),
      };
    });
    assert.equal(observed.state, 'live');
    if(viewSpec.overrideParams){assert.equal(observed.camera[0],Math.fround(viewSpec.center_x_w0),'Actual resident real center');assert.equal(observed.camera[4],Math.fround(viewSpec.center_y_w0),'Actual resident imaginary center');assert.equal(observed.camera[8],Math.fround(viewSpec.zoom),'Actual resident zoom');}
    assert.deepEqual(errors, []);
    const first = observed.samples[0];
    const publishedIdx = observed.samples.findIndex(s => s.activeValid === 1);
    assert.ok(publishedIdx > 0, `Expected pending frames before publication in ${viewSpec.name}`);
    const published = observed.samples[publishedIdx];
    const lastPending = observed.samples[publishedIdx - 1];
    const colored = observed.samples.find(s => s.nonzeroComponents > 0);
    const coarseBeforePublication = observed.samples.some(s => s.activeValid === 0 && s.nonzeroComponents > 0);
    const handoffPreserved =
      published.previewEpoch === lastPending.previewEpoch &&
      published.previewRefGen === lastPending.previewRefGen &&
      published.previewBank === lastPending.previewBank &&
      published.previewCompletedSteps >= lastPending.previewCompletedSteps &&
      lastPending.previewCompletedSteps > 0;
    assert.equal(coarseBeforePublication, true, `Expected coarseBeforePublication in ${viewSpec.name}`);
    assert.equal(handoffPreserved, true, `Expected pending->active handoff preservation in ${viewSpec.name}`);
    return {
      view: viewSpec.name,
      actualCamera: observed.camera,
      center: [viewSpec.center_x_w0, viewSpec.center_y_w0],
      zoom: viewSpec.zoom,
      sampleCount: observed.samples.length,
      dropped: observed.dropped,
      firstReferenceMs: published.frameStartMs - first.frameStartMs,
      firstCoarseColorMs: colored.frameStartMs - first.frameStartMs,
      earlyLeadMs: published.frameStartMs - colored.frameStartMs,
      coarseBeforePublication,
      handoffPreserved,
      lastPendingSample: lastPending,
      firstPublishedSample: published,
      completedPreviewSample: observed.samples.find(s => s.previewCompleted === 1),
    };
  } finally {
    await page.close();
  }
}

async function measureTransitionsAndPhaseSeparatedDrag() {
  const page = await browser.newPage({viewport: {width: 512, height: 512}, deviceScaleFactor: 1});
  const errors = [];
  page.on('pageerror', err => errors.push(String(err)));
  await attachStagedSite(page);
  try {
    await page.addInitScript(() => {
      const create = GPUDevice.prototype.createBuffer;
      GPUDevice.prototype.createBuffer = function(options) {
        return create.call(this, {
          ...options,
          usage: options.usage & GPUBufferUsage.STORAGE ? options.usage | GPUBufferUsage.COPY_SRC : options.usage,
        });
      };
    });
    await page.goto(new URL('index.html', base).href);
    await page.waitForFunction(() => document.querySelector('fe-surface')?.state === 'live', null, {timeout: 60000});

    // Wait for initial view to publish both initial cache (cache[2]) and full snapshot (cache[1])
    let initialSettled = null;
    for (let i = 0; i < 300; i++) {
      initialSettled = await page.evaluate(async () => {
        const s = document.querySelector('fe-surface');
        const d = s._gpu.device;
        const b = d.createBuffer({size: 400, usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ});
        const e = d.createCommandEncoder();
        e.copyBufferToBuffer(s._gpu.resourceBuffers.get('cache'), 0, b, 0, 216);
        e.copyBufferToBuffer(s._gpu.resourceBuffers.get('preview_cache'), 0, b, 224, 72);
        e.copyBufferToBuffer(s._gpu.resourceBuffers.get('reference'), 0, b, 296, 24);
        d.queue.submit([e.finish()]);
        await b.mapAsync(GPUMapMode.READ);
        const w = new Uint32Array(b.getMappedRange());
        const state = {
          c0_epoch: w[16], c0_completed: w[17],
          c1_epoch: w[34], c1_completed: w[35],
          c2_epoch: w[52], c2_completed: w[53],
          preview_gen: w[56 + 10], preview_epoch: w[56 + 16], preview_completed: w[56 + 17],
          ref_active: w[74], ref_valid: w[75], ref_pending: w[76],
        };
        b.unmap();
        b.destroy();
        return state;
      });
      if (initialSettled.c0_completed === 1 && initialSettled.c1_completed === 1 && initialSettled.c2_completed === 1) {
        break;
      }
      await page.waitForTimeout(50);
    }
    assert.equal(initialSettled.c0_completed, 1);
    assert.equal(initialSettled.c1_completed, 1);
    assert.equal(initialSettled.c2_completed, 1);
    assert.equal(initialSettled.preview_completed, 1);

    // Instrument phase-separated drag and post-drag refinement observations
    await page.evaluate(async () => {
      const s = document.querySelector('fe-surface');
      await s._gpu.device.queue.onSubmittedWorkDone();
      const render = s._render.bind(s);
      window.phaseSamples = [];
      s._render = async function(...args) {
        const start = performance.now();
        await render(...args);
        const submitted = performance.now();
        const d = this._gpu.device;
        const b = d.createBuffer({size: 400, usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ});
        const e = d.createCommandEncoder();
        e.copyBufferToBuffer(this._gpu.resourceBuffers.get('cache'), 0, b, 0, 216);
        e.copyBufferToBuffer(this._gpu.resourceBuffers.get('preview_cache'), 0, b, 224, 72);
        e.copyBufferToBuffer(this._gpu.resourceBuffers.get('reference'), 0, b, 296, 24);
        e.copyBufferToBuffer(this._gpu.resourceBuffers.get('anchor'), 0, b, 320, 80);
        d.queue.submit([e.finish()]);
        await b.mapAsync(GPUMapMode.READ);
        const w = new Uint32Array(b.getMappedRange());
        const dragActive = this._uniforms ? this._uniforms[13] >= 0.5 : false;
        const sample = {
          atMs: start,
          cpuMs: submitted - start,
          completionWithReadbackMs: performance.now() - start,
          dragActive,
          refActive: w[74],
          refValid: w[75],
          refPending: w[76],
          refSteps: w[77],
          previewGen: w[56 + 10],
          previewBank: w[56 + 11],
          selectedAnchorGen: w[80 + w[56 + 11] * 10 + 9],
          previewPrefixOnly: w[56 + 12],
          previewCompletedSteps: w[56 + 14],
          previewEpoch: w[56 + 16],
          previewCompleted: w[56 + 17],
          c0Epoch: w[16],
          c0Completed: w[17],
          c1Epoch: w[34],
          c1Completed: w[35],
          c2Epoch: w[52],
          c2Completed: w[53],
        };
        b.unmap();
        b.destroy();
        phaseSamples.push(sample);
      };
    });

    // Perform a first drag far enough (> 0.5 * zoom) to require a new reference,
    // wait briefly so pending reference starts building, then perform a second drag
    // to verify stale pending reference cancellation and clean re-settlement.
    const cx = 230, cy = 230;
    await page.mouse.move(cx, cy);
    await page.mouse.down();
    for (let i = 1; i <= 10; i++) {
      await page.mouse.move(cx + i * 8, cy + i * 4);
      await page.waitForTimeout(16);
    }
    await page.waitForTimeout(220); // Hold stationary while still dragging.
    await page.mouse.up();
    // Wait ~120ms so input settles (>= 60ms) and pending reference starts advancing
    await page.waitForTimeout(120);
    // Now drag again in the opposite direction to invalidate the in-flight pending reference
    await page.mouse.move(cx + 80, cy + 40);
    await page.mouse.down();
    for (let i = 1; i <= 10; i++) {
      await page.mouse.move(cx + 80 + i * 8, cy + 40 - i * 5);
      await page.waitForTimeout(16);
    }
    await page.mouse.up();

    // Wait for the final view to complete reference build, preview, initial cache publication, and full snapshot publication
    await page.waitForFunction(
      () => {
        const last = window.phaseSamples?.[window.phaseSamples.length - 1];
        return last && !last.dragActive && last.refPending === 0 && last.refValid === 1 &&
          last.previewCompleted === 1 && last.c0Completed === 1 &&
          last.c1Epoch === last.c0Epoch && last.c2Epoch === last.c0Epoch;
      },
      null,
      {timeout: 60000},
    );

    const samples = await page.evaluate(() => window.phaseSamples);
    assert.deepEqual(errors, []);

    const dragFrames = samples.filter(s => s.dragActive);
    const pendingRefFrames = samples.filter(s => !s.dragActive && s.refPending === 1);
    const nativeRefineFrames = samples.filter(s => !s.dragActive && s.refPending === 0 && s.c0Completed === 0);
    const finalSample = samples[samples.length - 1];

    const median = arr => {
      if (!arr.length) return null;
      const sorted = [...arr].sort((a, b) => a - b);
      return sorted[Math.floor((sorted.length - 1) * 0.5)];
    };

    const summarizePhase = frameList => ({
      frameCount: frameList.length,
      cpuMedianMs: median(frameList.map(f => f.cpuMs)),
      completionWithReadbackMedianMs: median(frameList.map(f => f.completionWithReadbackMs)),
    });

    assert.ok(dragFrames.length > 0, 'Expected drag frames');
    const mismatches=samples.filter(s=>s.previewGen!==s.selectedAnchorGen);
    assert.deepEqual(mismatches,[], 'Preview checkpoint must belong to selected orbit bank generation');
    assert.ok(pendingRefFrames.length > 0, 'Expected post-drag pending reference frames');
    assert.ok(nativeRefineFrames.length > 0, 'Expected post-drag native refinement frames');
    assert.ok(finalSample.previewGen > initialSettled.preview_gen, 'Expected reference generation to advance after large pan');
    assert.ok(finalSample.previewEpoch > initialSettled.preview_epoch, 'Expected preview epoch to advance after large pan');
    assert.equal(finalSample.c1Epoch, finalSample.c0Epoch, 'Expected snapshot cache epoch to match current view epoch');
    assert.equal(finalSample.c2Epoch, finalSample.c0Epoch, 'Expected initial cache epoch to match current view epoch');

    return {
      initialSettled,
      finalSample,
      distinctPreviewGenerationsSeen: [...new Set(samples.map(s => s.previewGen))],
      distinctPreviewEpochsSeen: [...new Set(samples.map(s => s.previewEpoch))],
      phaseSeparation: {
        dragPhase: summarizePhase(dragFrames),
        postDragPendingReferencePhase: summarizePhase(pendingRefFrames),
        postDragNativeRefinementPhase: summarizePhase(nativeRefineFrames),
      },
      measurementNotes: [
        'CPU dispatch and queue+readback completion wall-clock times, separated by renderer phase (active drag, post-drag pending reference + progressive preview, post-drag native refinement).',
        'Not WebGPU GPU timestamp query measurements; per-frame buffer readback in the test harness adds observation overhead.',
      ],
    };
  } finally {
    await page.close();
  }
}

try {
  const views = [
    {
      name: 'initial_deep_filament',
      overrideParams: false,
      center_x_w0: -1.1723285913467407,
      center_y_w0: 0.29582354426383972,
      zoom: 0.0000000389,
    },
    {
      name: 'seahorse_valley_spiral',
      overrideParams: true,
      center_x_w0: -0.74364388,
      center_y_w0: 0.13182591,
      zoom: 0.00001,
    },
    {
      name: 'elephant_valley_cusp',
      overrideParams: true,
      center_x_w0: 0.28171792,
      center_y_w0: 0.57710528,
      zoom: 0.00002,
    },
  ];

  const multiViewOnset = [];
  for (const v of views) {
    multiViewOnset.push(await measureColdViewOnset(v));
  }

  const transitionsAndPhases = await measureTransitionsAndPhaseSeparatedDrag();

  const receipt = {
    allViewsCoarseBeforePublication: multiViewOnset.every(v => v.coarseBeforePublication),
    allViewsHandoffPreserved: multiViewOnset.every(v => v.handoffPreserved),
    multiViewOnset,
    transitionsAndPhases,
  };

  if (process.env.OUT) {
    await fs.writeFile(process.env.OUT, JSON.stringify(receipt, null, 2) + '\n');
  }
  console.log(JSON.stringify(receipt, null, 2));
} finally {
  await browser.close();
}
