// GPU pass timer for the profiling page. Adds timestamp queries to every compute
// pass the demo submits and totals the durations per pass. Nothing is sent anywhere.
(() => {
  const agg = {};
  const info = { timestamps: false, frames: 0, started: performance.now() };
  window.__profile = { agg, info };
  let last = 0, gap = 0, gaps = 0;
  const tick = (t) => {
    if (last) { gap += t - last; gaps++; }
    last = t; info.frames++;
    requestAnimationFrame(tick);
  };
  requestAnimationFrame(tick);
  window.__profile.frameMs = () => (gaps ? gap / gaps : 0);
  window.__profile.reset = () => {
    for (const k of Object.keys(agg)) delete agg[k];
    gap = 0; gaps = 0; info.started = performance.now(); info.frames = 0;
  };
  if (!navigator.gpu || !window.GPUAdapter) return;

  const request = GPUAdapter.prototype.requestDevice;
  GPUAdapter.prototype.requestDevice = function (descriptor = {}) {
    const next = { ...descriptor };
    if (this.features.has('timestamp-query')) {
      next.requiredFeatures = [...(descriptor.requiredFeatures || []), 'timestamp-query'];
      info.timestamps = true;
    }
    return request.call(this, next);
  };

  const beginPass = GPUCommandEncoder.prototype.beginComputePass;
  const finish = GPUCommandEncoder.prototype.finish;
  const createEncoder = GPUDevice.prototype.createCommandEncoder;
  const submit = GPUQueue.prototype.submit;
  let pending = [];

  GPUDevice.prototype.createCommandEncoder = function (d) {
    const e = createEncoder.call(this, d);
    e.__device = this;
    return e;
  };
  GPUCommandEncoder.prototype.beginComputePass = function (desc = {}) {
    if (!info.timestamps || !this.__device) return beginPass.call(this, desc);
    const s = this.__stamps
      || (this.__stamps = { set: this.__device.createQuerySet({ type: 'timestamp', count: 256 }), n: 0, names: [] });
    if (s.n >= 256) return beginPass.call(this, desc);
    const i = s.n;
    s.n += 2;
    const pass = beginPass.call(this, {
      ...desc,
      timestampWrites: { querySet: s.set, beginningOfPassWriteIndex: i, endOfPassWriteIndex: i + 1 },
    });
    const setPipeline = pass.setPipeline;
    pass.setPipeline = function (p) { s.names[i / 2] = p.label || '?'; return setPipeline.call(this, p); };
    return pass;
  };
  GPUCommandEncoder.prototype.finish = function (d) {
    const s = this.__stamps;
    if (!s || !s.n) return finish.call(this, d);
    const dev = this.__device;
    const resolve = dev.createBuffer({ size: 256 * 8, usage: GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_SRC });
    const read = dev.createBuffer({ size: 256 * 8, usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ });
    this.resolveQuerySet(s.set, 0, s.n, resolve, 0);
    this.copyBufferToBuffer(resolve, 0, read, 0, 256 * 8);
    this.__stamps = null;
    const buffer = finish.call(this, d);
    pending.push({ read, resolve, names: s.names, n: s.n });
    return buffer;
  };
  GPUQueue.prototype.submit = function (buffers) {
    const result = submit.call(this, buffers);
    const mine = pending;
    pending = [];
    if (mine.length) {
      this.onSubmittedWorkDone().then(async () => {
        for (const q of mine) {
          try {
            await q.read.mapAsync(GPUMapMode.READ);
            const t = new BigUint64Array(q.read.getMappedRange().slice(0));
            q.read.unmap();
            for (let k = 0; k < q.n / 2; k++) {
              const name = q.names[k] || '?';
              const a = agg[name] || (agg[name] = { calls: 0, ns: 0 });
              a.calls++;
              a.ns += Number(t[2 * k + 1] - t[2 * k]);
            }
          } catch (_) { /* a lost device ends the measurement */ }
          q.read.destroy();
          q.resolve.destroy();
        }
      });
    }
    return result;
  };
})();
