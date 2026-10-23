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

// Decode controls from their compiler-declared schema, never field ordinals.
function installControlReadback() {
  window.readFeControls = async surface => {
    const names=['cache','preview_cache','reference','anchor'];
    let size=0;
    const resources=names.map(name=>{
      const resource=surface.manifest.resources.find(r=>r.name===name);
      const offset=size;size+=resource.stride*resource.length;
      return {...resource,offset};
    });
    const device=surface._gpu.device;
    const buffer=device.createBuffer({size,usage:GPUBufferUsage.COPY_DST|GPUBufferUsage.MAP_READ});
    try {
      const encoder=device.createCommandEncoder();
      for(const r of resources)encoder.copyBufferToBuffer(surface._gpu.resourceBuffers.get(r.name),0,buffer,r.offset,r.stride*r.length);
      device.queue.submit([encoder.finish()]);await buffer.mapAsync(GPUMapMode.READ);
      const bytes=new DataView(buffer.getMappedRange());
      return Object.fromEntries(resources.map(r=>[r.name,Array.from({length:r.length},(_,i)=>
        Object.fromEntries(r.element.Record.fields.map(f=>[f.name,f.scalar==='f32'
          ?bytes.getFloat32(r.offset+i*r.stride+f.offset,true):bytes.getUint32(r.offset+i*r.stride+f.offset,true)])))]));
    } finally {buffer.destroy();}
  };
}

async function measureColdViewOnset(viewSpec) {
  const page = await browser.newPage({viewport: {width: 512, height: 512}, deviceScaleFactor: 1});
  await page.addInitScript(installControlReadback);
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
            const previewLayout=this.manifest.resources.find(r=>r.name==='preview_cache');
            const colorOffset=(32+previewLayout.stride+15)&~15;
            const buffer = device.createBuffer({
              size: colorOffset+192,
              usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ,
            });
            const encoder = device.createCommandEncoder();
            encoder.copyBufferToBuffer(reference, 0, buffer, 0, 28);
            encoder.copyBufferToBuffer(previewCache, 0, buffer, 32, previewLayout.stride);
            for (let y = 0; y < 4; y++) {
              for (let x = 0; x < 4; x++) {
                const index = (32 + y * 64) * 256 + 32 + x * 64;
                encoder.copyBufferToBuffer(pixels, index * 12, buffer, colorOffset + (y * 4 + x) * 12, 12);
              }
            }
            device.queue.submit([encoder.finish()]);
            const capture = buffer.mapAsync(GPUMapMode.READ).then(() => {
              const bytes = buffer.getMappedRange();
              const refWords = new Uint32Array(bytes, 0, 7);
              const previewBytes=new DataView(bytes,32,previewLayout.stride);
              const field=name=>previewBytes.getUint32(previewLayout.element.Record.fields.find(f=>f.name===name).offset,true);
              const colors = new Float32Array(bytes, colorOffset, 48);
              onsetSamples.push({
                frameStartMs: start,
                observedMs: performance.now(),
                active: refWords[0],
                activeValid: refWords[1],
                pending: refWords[2],
                referenceSteps: refWords[3],
                previewRefGen: field('reference_generation'),
                previewBank: field('reference_bank'),
                previewPrefixOnly: field('prefix_only'),
                previewStepTarget: field('step_target'),
                previewCompletedSteps: field('completed_steps'),
                previewBudget: field('budget'),
                previewEpoch: field('epoch'),
                previewCompleted: field('completed'),
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
  await page.addInitScript(installControlReadback);
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
        const {cache,preview_cache,reference}=await readFeControls(s);
        const state = {
          c0_epoch: cache[0].epoch, c0_completed: cache[0].completed,
          c1_epoch: cache[1].epoch, c1_completed: cache[1].completed,
          c2_epoch: cache[2].epoch, c2_completed: cache[2].completed,
          preview_gen: preview_cache[0].reference_generation, preview_epoch: preview_cache[0].epoch,
          preview_completed: preview_cache[0].completed,
          ref_active: reference[0].active, ref_valid: reference[0].active_valid, ref_pending: reference[0].pending,
        };
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
        const {cache,preview_cache,reference,anchor}=await readFeControls(this);
        const preview=preview_cache[0],ref=reference[0];
        const sample = {
          atMs: start, cpuMs: submitted-start, completionWithReadbackMs: performance.now()-start,
          dragActive: this._paramsSnapshot().drag_active>=0.5,
          refActive: ref.active, refValid: ref.active_valid, refPending: ref.pending, refSteps: ref.index,
          previewGen: preview.reference_generation, previewBank: preview.reference_bank,
          selectedAnchorGen: anchor[preview.reference_bank].generation,
          previewPrefixOnly: preview.prefix_only, previewCompletedSteps: preview.completed_steps,
          previewEpoch: preview.epoch, previewCompleted: preview.completed,
          c0Epoch: cache[0].epoch, c0Completed: cache[0].completed,
          c1Epoch: cache[1].epoch, c1Completed: cache[1].completed,
          c2Epoch: cache[2].epoch, c2Completed: cache[2].completed,
        };
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
