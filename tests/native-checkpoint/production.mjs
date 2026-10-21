// Actual production graphs, exact active-area bytes, owned tabs only.
// Usage: node production.mjs BASELINE_SITE COMPACT_SITE ABSOLUTE_RECEIPT_DIR
import assert from 'node:assert/strict';
import fs from 'node:fs/promises';
import path from 'node:path';
import {createHash} from 'node:crypto';
import {releaseTestPage} from '../browser-session.mjs';

const [baselineSite, compactSite, output] = process.argv.slice(2);
assert.ok(baselineSite && compactSite && path.isAbsolute(output || ''),
  'Provide two immutable staged site directories and an absolute scratch output directory');
const side = Number(process.env.SIDE || 128);
const timeout = Number(process.env.TIMEOUT_MS || 120000);
assert.ok(Number.isInteger(side) && side >= 128 && side <= 2048);
const base = new URL(process.env.BASE_URL || 'https://micahscopes.github.io/fe-mandelbrot/');
const sha = bytes => createHash('sha256').update(bytes).digest('hex');
const word = value => new Uint32Array(new Float32Array([value]).buffer)[0];
const cameraWords = camera => camera.map(word);
const fragment = camera => {
  const hex = [...camera, 1].map(value => word(value).toString(16).padStart(8, '0'));
  return '#v1:' + hex.slice(0, 4).join('.') + ':' + hex.slice(4, 8).join('.') + ':' + hex.slice(8).join(':');
};
const deep = [
  -1.1723285913467407, -8.896668290958587e-9, 2.6946450701486693e-17, 4.889170563942578e-25,
  0.2958235442638397, -1.0501575165022814e-9, -4.646894217042016e-17, 1.4530940147611347e-24,
  2.325737538549943e-16, side,
].map(Math.fround);
await fs.mkdir(output, {recursive: true});
const baselineRoot = path.resolve(baselineSite);
const initialHtml = await fs.readFile(path.join(baselineRoot, 'index.html'), 'utf8');
const manifestAttribute = initialHtml.match(/<fe-surface\b[^>]*\bmanifest\s*=\s*(["'])(.*?)\1/i)?.[2];
assert.ok(manifestAttribute, 'Staged index.html must name the renderer manifest');
const manifestUrl = new URL(manifestAttribute, new URL('index.html', base));
assert.ok(manifestUrl.origin === base.origin && manifestUrl.pathname.startsWith(base.pathname));
const manifestFile = path.resolve(baselineRoot, decodeURIComponent(manifestUrl.pathname.slice(base.pathname.length)));
assert.ok(manifestFile.startsWith(baselineRoot + path.sep));
const initialManifest = JSON.parse(await fs.readFile(manifestFile, 'utf8'));
const wasmUrl = new URL(initialManifest.artifacts.wasm, manifestUrl);
assert.ok(wasmUrl.origin === base.origin && wasmUrl.pathname.startsWith(base.pathname));
const wasmFile = path.resolve(baselineRoot, decodeURIComponent(wasmUrl.pathname.slice(base.pathname.length)));
assert.ok(wasmFile.startsWith(baselineRoot + path.sep));
const initialWasm = await fs.readFile(wasmFile);
const {instance} = await WebAssembly.instantiate(initialWasm, {});
const initial = [...instance.exports.fe_surface_initialize_v1()].slice(0, 10);
initial[9] = side;
const {chromium} = await import(process.env.PLAYWRIGHT_MODULE || 'playwright-core');

async function measure(label, directory) {
  const root = path.resolve(directory);
  const browser = await chromium.connectOverCDP(process.env.CDP_URL || 'http://127.0.0.1:9222');
  const page = await browser.newPage({viewport: {width: 512, height: 512}, deviceScaleFactor: 1});
  const errors = [], served = new Map(), captures = {}, transitions = [];
  page.on('pageerror', error => errors.push(String(error)));
  await page.route(url => url.origin === base.origin && url.pathname.startsWith(base.pathname), async route => {
    let relative = decodeURIComponent(new URL(route.request().url()).pathname.slice(base.pathname.length));
    if (!relative || relative.endsWith('/')) relative += 'index.html';
    const file = path.resolve(root, relative);
    if (!file.startsWith(root + path.sep)) return route.fulfill({status: 403, body: ''});
    try {
      let asset = served.get(file);
      if (!asset) {
        const bytes = await fs.readFile(file);
        asset = {bytes, hash: sha(bytes)};
        served.set(file, asset);
      }
      const contentType = {'.html': 'text/html', '.js': 'text/javascript', '.json': 'application/json',
        '.wasm': 'application/wasm', '.css': 'text/css', '.wgsl': 'text/plain', '.fe': 'text/plain'}[path.extname(file)] || 'application/octet-stream';
      await route.fulfill({contentType, body: asset.bytes});
    } catch {
      await route.fulfill({status: 404, body: 'Missing staged asset'});
    }
  });
  try {
    await page.addInitScript(() => {
      const h = window.checkpointProbe = {errors: [], frames: 0, watch: null, release: null, last: null, pendingPresent: 0, graphSubmissions: 0, stableCaptures: 0};
      const devices = new WeakSet();
      const create = GPUDevice.prototype.createBuffer;
      GPUDevice.prototype.createBuffer = function(options) {
        if (!devices.has(this)) {
          devices.add(this);
          this.addEventListener('uncapturederror', event => h.errors.push(event.error.message));
        }
        return create.call(this, {...options,
          usage: options.usage & GPUBufferUsage.STORAGE ? options.usage | GPUBufferUsage.COPY_SRC : options.usage});
      };
      const bits = values => [...new Uint32Array(new Float32Array(values).buffer)];
      const equal = (a, b) => a.length === b.length && a.every((value, index) => value === b[index]);
      h.resume = () => { const release = h.release; h.release = null; release?.(); };
      h.read = async surface => {
        const names = ['cache', 'reference', 'anchor', 'preview_cache'];
        const resources = names.map(name => surface._manifest.resources.find(resource => resource.name === name));
        if (resources.some(resource => !resource)) throw Error('Missing production cache metadata');
        let size = 0;
        const offsets = resources.map(resource => { const offset = size; size += resource.length * resource.stride; return offset; });
        const device = surface._gpu.device;
        const buffer = device.createBuffer({size, usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ});
        try {
          const encoder = device.createCommandEncoder();
          resources.forEach((resource, index) => encoder.copyBufferToBuffer(
            surface._gpu.resourceBuffers.get(resource.name), 0, buffer, offsets[index], resource.length * resource.stride));
          device.queue.submit([encoder.finish()]);
          await buffer.mapAsync(GPUMapMode.READ);
          const bytes = new DataView(buffer.getMappedRange());
          const field = (record, index, name) => {
            const resource = resources[record];
            const member = resource.element.Record.fields.find(member => member.name === name);
            if (!member) throw Error(`Missing ${resource.name}.${name}`);
            const offset = offsets[record] + index * resource.stride + member.offset;
            return member.scalar === 'f32' ? bytes.getFloat32(offset, true) : bytes.getUint32(offset, true);
          };
          const cache = index => {
            const fields = resources[0].element.Record.fields.slice(0, 10);
            if (fields.length !== 10 || fields.some((field, i) => field.scalar !== 'f32' || field.offset !== i * 4)) {
              throw Error('Camera cache prefix is not the validated ten-f32 layout');
            }
            return {camera: fields.map(field => bytes.getUint32(offsets[0] + index * resources[0].stride + field.offset, true)),
              epoch: field(0, index, 'epoch'), completed: field(0, index, 'completed'),
              cursor: field(0, index, 'cursor'), budget: field(0, index, 'budget'), aa: field(0, index, 'aa')};
          };
          const active = field(1, 0, 'active');
          const result = {current: cache(0), snapshot: cache(1), initial: cache(2),
            reference: {active, valid: field(1, 0, 'active_valid'), pending: field(1, 0, 'pending'),
              generation: field(2, active, 'generation')},
            previewCompleted: field(3, 0, 'completed'), residentCamera: bits(surface._uniforms.slice(0, 10)),
            residentAA: surface._uniforms[12], inputSettled: surface._uniforms[13] < 0.5
              && surface._uniforms[10] - surface._uniforms[11] >= 60,
            frame: ++h.frames};
          buffer.unmap();
          return result;
        } finally { buffer.destroy(); }
      };
      h.matches = (m, c) => {
        if (!equal(m.current.camera, c.camera) || !equal(m.residentCamera, c.camera)
            || m.current.aa !== c.aa || m.residentAA !== c.aa) return false;
        if (c.kind === 'partial') return m.reference.valid === 1 && m.reference.pending === 0
          && m.current.completed === 0 && m.current.cursor > 0 && m.current.epoch !== c.oldEpoch
          && (!c.history || equal(m.snapshot.camera, c.history))
          && (!c.minBudget || m.current.budget >= c.minBudget)
          && (!c.firstBatch || m.current.cursor === 1);
        return m.inputSettled && m.reference.valid === 1 && m.reference.pending === 0 && m.previewCompleted === 1
          && [m.current, m.snapshot, m.initial].every(cache => cache.completed === 1
            && cache.epoch === m.current.epoch && equal(cache.camera, c.camera))
          && m.snapshot.aa === c.aa;
      };
      h.arm = (criteria, milliseconds) => {
        if (h.watch) throw Error('A frame observation is already pending');
        h.waiting = new Promise((resolve, reject) => {
          const timer = setTimeout(() => { h.watch = null; h.resume(); reject(Error('Frame gate timed out: ' + JSON.stringify({criteria, last: h.last}))); }, milliseconds);
          h.watch = {criteria, resolve: value => { clearTimeout(timer); resolve(value); }};
        });
        // The Node caller awaits this promise in a subsequent CDP command.
        h.waiting.catch(() => {});
      };
      const define = customElements.define.bind(customElements);
      customElements.define = function(name, Constructor, ...rest) {
        if (name === 'fe-surface') {
          // RAF can be requested before the current render promise settles.
          // Serialize scheduler entry before it can advance resident Fe state.
          const flush = Constructor.prototype._flushGestureFrame;
          if (typeof flush !== 'function') throw Error('Missing scheduled Fe frame boundary');
          let frameTail = Promise.resolve();
          Constructor.prototype._flushGestureFrame = function(...args) {
            const frame = frameTail.then(() => flush.apply(this, args));
            frameTail = frame.catch(() => {});
            return frame;
          };
          // All production graph submissions pass through _presentOn,
          // including resize and lifecycle presentation outside _render.
          // Queue them before calling the original, not merely after submit.
          const present = Constructor.prototype._presentOn;
          if (typeof present !== 'function') throw Error('Missing GPU presentation boundary');
          let presentTail = Promise.resolve();
          Constructor.prototype._presentOn = function(...args) {
            h.pendingPresent++;
            const task = presentTail.then(async () => {
              h.graphSubmissions++;
              const result = await present.apply(this, args);
              if (this._gpu && h.watch) {
                const metadata = h.last = await h.read(this);
                const watch = h.watch;
                if (watch && h.matches(metadata, watch.criteria)) {
                  h.watch = null;
                  h.heldSubmissions = h.graphSubmissions;
                  await new Promise(release => { h.release = release; watch.resolve(metadata); });
                }
              }
              return result;
            }).finally(() => { h.pendingPresent--; });
            presentTail = task.catch(() => {});
            return task;
          };
        }
        return define(name, Constructor, ...rest);
      };
      h.replace = (camera, aa) => {
        const surface = document.querySelector('fe-surface');
        if (!h.release || h.pendingPresent !== 1 || typeof surface._surfaceStateReplaceKernel !== 'function') {
          throw Error('Replacement requires one held presentation, no queued stale presentations, and actual resident Fe state export');
        }
        const next = [...surface._uniforms];
        camera.forEach((value, index) => { next[index] = value; });
        next[11] = next[10]; // A new input starts the ordinary Fe settling interval.
        next[12] = aa;
        next[13] = 0;
        surface._replaceSurfaceState(next);
      };
      h.capture = async side => {
        if (!h.release) throw Error('Capture requires a completed held frame');
        const surface = document.querySelector('fe-surface'), device = surface._gpu.device;
        if (surface._uniforms[9] !== side || surface._backingWidth !== side || surface._backingHeight !== side) {
          throw Error('Actual Fe extent/backing differs from requested active area');
        }
        const specs = [['native_pixels', 4], ['antialiased_pixels', 4], ['snapshot_oracle', 12]];
        const result = {};
        for (const [name, stride] of specs) {
          const resource = surface._manifest.resources.find(resource => resource.name === name);
          if (resource.stride !== stride || resource.length !== 4194304) throw Error(`Unexpected ${name} contract`);
          const size = side * side * stride;
          const buffer = device.createBuffer({size, usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ});
          try {
            const encoder = device.createCommandEncoder();
            for (let y = 0; y < side; ++y) encoder.copyBufferToBuffer(
              surface._gpu.resourceBuffers.get(name), y * 2048 * stride, buffer, y * side * stride, side * stride);
            device.queue.submit([encoder.finish()]);
            await buffer.mapAsync(GPUMapMode.READ);
            const bytes = new Uint8Array(buffer.getMappedRange());
            let binary = '';
            for (let i = 0; i < bytes.length; i += 16384) binary += String.fromCharCode(...bytes.subarray(i, i + 16384));
            result[name] = btoa(binary);
            buffer.unmap();
          } finally { buffer.destroy(); }
        }
        if (h.graphSubmissions !== h.heldSubmissions) throw Error('A graph submitted during the capture latch');
        h.stableCaptures++;
        return result;
      };
    });
    await page.goto(new URL('index.html' + fragment(initial), base).href);
    await page.waitForFunction(() => document.querySelector('fe-surface')?.state === 'live', null, {timeout});
    const gate = async (criteria, transition = null) => {
      await page.evaluate(({criteria, transition, timeout}) => {
        const h = window.checkpointProbe;
        h.arm(criteria, timeout);
        if (transition) { h.replace(transition.camera, transition.aa); h.resume(); }
      }, {criteria, transition, timeout});
      return page.evaluate(() => window.checkpointProbe.waiting);
    };
    const settled = (camera, aa = 1, transition = true) => gate(
      {kind: 'settled', camera: cameraWords(camera), aa}, transition ? {camera, aa} : null);
    const capture = async (name, metadata) => {
      const encoded = await page.evaluate(side => window.checkpointProbe.capture(side), side);
      const files = {};
      for (const [resource, base64] of Object.entries(encoded)) {
        const bytes = Buffer.from(base64, 'base64');
        const file = path.join(output, `${label}-${name}-${resource}.bin`);
        await fs.writeFile(file, bytes);
        files[resource] = {file, bytes: bytes.length, sha256: sha(bytes)};
      }
      captures[name] = {metadata, files};
    };
    const a = await settled(initial, 1, false);
    await capture('default', a);
    const near = [...initial]; near[8] = Math.fround(initial[8] * 1.125);
    assert.notDeepEqual(cameraWords(near), cameraWords(initial));
    const b = await gate({kind: 'partial', camera: cameraWords(near), aa: 1,
      oldEpoch: a.current.epoch, history: cameraWords(initial)}, {camera: near, aa: 1});
    assert.equal(b.snapshot.epoch, a.snapshot.epoch, 'B must not overwrite the completed A snapshot');
    const restored = await settled(initial);
    transitions.push({name: 'A-partial-B-A', before: a, partial: b, after: restored,
      snapshotRestorationEligible: b.snapshot.completed === 1 && b.snapshot.budget >= a.current.budget});
    await capture('snapshot-return', restored);
    await capture('aa-off', await settled(initial, 0));
    await capture('aa-on', await settled(initial, 1));
    const d = await settled(deep);
    await capture('captured-deep', d);
    // This finite interior camera needs >2048 iterations. At the first
    // refinement cursor, non-seeded pixels therefore have live continuations.
    const interior = [0, 0, 0, 0, 0, 0, 0, 0, Math.fround(1e-24), side];
    const partial = await gate({kind: 'partial', camera: cameraWords(interior), aa: 1,
      oldEpoch: d.current.epoch, history: cameraWords(deep), minBudget: 4096, firstBatch: true}, {camera: interior, aa: 1});
    assert.notEqual(partial.reference.generation, d.reference.generation, 'Interior camera must publish a new reference');
    const replacement = await settled(deep);
    transitions.push({name: 'replace-partial-native-epoch-and-reference', before: d, partial, after: replacement});
    await capture('deep-after-replacement', replacement);
    const visibility = await page.evaluate(() => {
      const s = document.querySelector('fe-surface');
      window.checkpointProbe.resourcesBeforeSuspend = new Map(s._gpu.resourceBuffers);
      const style = s.getAttribute('style');
      window.checkpointProbe.resume();
      s.style.transform = 'translateX(200vw)';
      return {style};
    });
    await page.waitForFunction(() => document.querySelector('fe-surface').state === 'suspended', null, {timeout: 15000});
    await page.evaluate(style => {
      const s = document.querySelector('fe-surface');
      if (style === null) s.removeAttribute('style'); else s.setAttribute('style', style);
    }, visibility.style);
    await page.waitForFunction(() => document.querySelector('fe-surface').state === 'live', null, {timeout});
    await capture('deep-after-visibility', await settled(deep, 1, false));
    const diagnostics = await page.evaluate(() => {
      const h = window.checkpointProbe, s = document.querySelector('fe-surface');
      return {errors: h.errors, state: s.state, observedFrames: h.frames, stableCaptures: h.stableCaptures, graphSubmissions: h.graphSubmissions,
        visibilityBuffersReused: [...h.resourcesBeforeSuspend].every(([name, buffer]) => s._gpu.resourceBuffers.get(name) === buffer),
        camera: s._uniforms.slice(0, 10), actualAdapter: s._gpu.adapter?.info || null};
    });
    assert.deepEqual(errors, []);
    assert.deepEqual(diagnostics.errors, []);
    assert.equal(diagnostics.stableCaptures, Object.keys(captures).length);
    for (const [file, asset] of served) assert.equal(sha(await fs.readFile(file)), asset.hash, `Staged artifact changed during test: ${file}`);
    return {label, directory: root, captures, transitions, diagnostics,
      servedArtifacts: [...served].map(([file, asset]) => ({file: path.relative(root, file), sha256: asset.hash}))};
  } catch (error) {
    const last = await page.evaluate(() => ({metadata: window.checkpointProbe?.last,
      gpuErrors: window.checkpointProbe?.errors, state: document.querySelector('fe-surface')?.state})).catch(() => null);
    await fs.writeFile(path.join(output, `${label}-partial-receipt.json`),
      JSON.stringify({label, captures, transitions, errors, last, failure: String(error.stack || error)}, null, 2) + '\n');
    throw error;
  } finally {
    await page.evaluate(() => window.checkpointProbe?.resume()).catch(() => {});
    await releaseTestPage(browser, page);
  }
}

const receipt = {side, nativeStride: 2048, activePixels: side * side, actualBrowser: true,
  capturedDeepSource: 'mobile-deep-rotation-pixel-parity.json camera coefficients; extent selected by SIDE',
  timingBenchmark: false, deviceLossRecovery: {status: 'unsupported',
    reason: 'No safe browser API requests an authoritative Unknown device loss. GPUDevice.destroy reports Destroyed, which StandardSurfaceRecovery intentionally does not retry. No recovery callbacks are fabricated.'},
  variants: [], comparisons: []};
const receiptFile = path.join(output, 'production-receipt.json');
try {
  receipt.variants.push(await measure('baseline', baselineSite));
  await fs.writeFile(receiptFile, JSON.stringify(receipt, null, 2) + '\n');
  receipt.variants.push(await measure('compact', compactSite));
  const compare = async (left, right, description) => {
    for (const name of ['native_pixels', 'antialiased_pixels', 'snapshot_oracle']) {
      const a = await fs.readFile(left.files[name].file), b = await fs.readFile(right.files[name].file);
      const same = a.equals(b);
      receipt.comparisons.push({description, resource: name, equal: same, bytes: a.length,
        firstDifferentByte: same ? null : a.findIndex((value, index) => value !== b[index])});
      assert.ok(same, `${description}/${name}: exact active-area bytes differ`);
    }
  };
  const [baseline, compact] = receipt.variants;
  assert.equal(compact.diagnostics.visibilityBuffersReused, baseline.diagnostics.visibilityBuffersReused,
    'The checkpoint representation must preserve the existing suspension lifecycle');
  for (const name of Object.keys(baseline.captures)) await compare(baseline.captures[name], compact.captures[name], `baseline-versus-compact/${name}`);
  for (const variant of receipt.variants) {
    for (const name of ['snapshot-return', 'aa-on']) await compare(variant.captures.default, variant.captures[name], `${variant.label}/default-versus-${name}`);
    for (const name of ['deep-after-replacement', 'deep-after-visibility']) await compare(variant.captures['captured-deep'], variant.captures[name], `${variant.label}/deep-versus-${name}`);
    for (const name of ['native_pixels', 'snapshot_oracle']) {
      assert.equal(variant.captures.default.files[name].sha256, variant.captures['aa-off'].files[name].sha256, `AA toggle must preserve ${name}`);
    }
    assert.equal(variant.captures['aa-off'].files.native_pixels.sha256, variant.captures['aa-off'].files.antialiased_pixels.sha256);
  }
  receipt.comparedGatesPassed = true;
} catch (error) {
  receipt.comparedGatesPassed = false;
  receipt.failure = String(error.stack || error);
  throw error;
} finally {
  await fs.writeFile(receiptFile, JSON.stringify(receipt, null, 2) + '\n');
  console.log(JSON.stringify({receiptFile, comparedGatesPassed: receipt.comparedGatesPassed,
    activePixels: receipt.activePixels, deviceLossRecovery: receipt.deviceLossRecovery}));
}
