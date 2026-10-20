// Generic JavaScript realization of the Fe host-runtime state machines.
//
// This module deliberately has no DOM, WebGPU, Worker, or other Web API
// knowledge. Generated adapters supply host objects and conversion functions.

export const HOST_RUNTIME_PROTOCOL = "fe:host-runtime/v1";

export class HostRuntimeError extends Error {
  constructor(code, message, details = {}) {
    super(message);
    this.name = "HostRuntimeError";
    this.code = code;
    this.details = Object.freeze({ ...details });
  }
}

class OpaqueTable {
  #kind;
  #slots = [];
  #free = [];
  #handles = new WeakMap();
  #captures = [];
  #live = 0;

  constructor(kind) {
    this.#kind = kind;
  }

  insert(value, onDrop, borrowed = false) {
    const slot = this.#free.pop() ?? this.#slots.length;
    if (slot > 0xfffe) {
      throw new HostRuntimeError(
        "handle_capacity_exhausted",
        `${this.#kind} handle table exhausted its core-Wasm i32 slots`,
        { kind: this.#kind },
      );
    }
    const previous = this.#slots[slot];
    const generation = (previous?.generation ?? 0) + 1;
    if (generation > 0xffff) {
      throw new HostRuntimeError(
        "handle_generation_exhausted",
        `${this.#kind} handle slot exhausted its core-Wasm i32 generations`,
        { kind: this.#kind, slot },
      );
    }
    const handle = Object.freeze(Object.create(null));
    this.#slots[slot] = {
      generation,
      value,
      onDrop,
      borrowed,
      live: true,
    };
    this.#handles.set(handle, { slot, generation });
    for (const capture of this.#captures) capture.push(handle);
    this.#live += 1;
    return handle;
  }

  #entry(handle) {
    const identity = typeof handle === "number"
      ? this.#decodeCore(handle)
      : this.#handles.get(handle);
    if (!identity) {
      throw new HostRuntimeError(
        "invalid_handle",
        `invalid or forged ${this.#kind} handle`,
        { kind: this.#kind },
      );
    }
    const entry = this.#slots[identity.slot];
    if (!entry?.live || entry.generation !== identity.generation) {
      throw new HostRuntimeError(
        "stale_handle",
        `stale ${this.#kind} handle`,
        { kind: this.#kind, slot: identity.slot, generation: identity.generation },
      );
    }
    return { entry, ...identity };
  }

  #decodeCore(handle) {
    if (!Number.isInteger(handle) || handle < -0x80000000 || handle > 0x7fffffff) {
      return undefined;
    }
    const raw = handle >>> 0;
    const encodedSlot = raw & 0xffff;
    const generation = raw >>> 16;
    if (encodedSlot === 0 || generation === 0) return undefined;
    return { slot: encodedSlot - 1, generation };
  }

  // Project an opaque JS authority onto the generation-tagged i32 lane used
  // by core Wasm. Imports may pass that token back to borrow/take/drop; stale
  // generations are checked against the same table entry as object handles.
  toCore(handle) {
    const { slot, generation } = this.#entry(handle);
    return ((generation << 16) | (slot + 1)) | 0;
  }

  borrow(handle) {
    return this.#entry(handle).entry.value;
  }

  take(handle) {
    const current = this.#entry(handle);
    if (current.entry.borrowed) {
      throw new HostRuntimeError(
        "borrowed_handle_consumed",
        `borrowed ${this.#kind} handle cannot be consumed`,
        { kind: this.#kind },
      );
    }
    const value = current.entry.value;
    this.#retire(current, false);
    return value;
  }

  drop(handle) {
    const current = this.#entry(handle);
    if (current.entry.borrowed) {
      throw new HostRuntimeError(
        "borrowed_handle_consumed",
        `borrowed ${this.#kind} handle cannot be dropped`,
        { kind: this.#kind },
      );
    }
    this.#retire(current, true);
  }

  withBorrowed(value, callback) {
    if (typeof callback !== "function") {
      throw new TypeError("borrow scope requires a callback");
    }
    const handle = this.insert(value, undefined, true);
    let result;
    try {
      result = callback(handle);
    } catch (error) {
      this.#retire(this.#entry(handle), false);
      throw error;
    }
    if (result && typeof result.then === "function") {
      return Promise.resolve(result).finally(() => {
        this.#retire(this.#entry(handle), false);
      });
    }
    this.#retire(this.#entry(handle), false);
    return result;
  }

  capture(callback) {
    if (typeof callback !== "function") {
      throw new TypeError("resource capture requires a callback");
    }
    const handles = [];
    this.#captures.push(handles);
    let value;
    try {
      value = callback();
      if (value && typeof value.then === "function") {
        throw new TypeError("resource capture callback must be synchronous");
      }
    } catch (error) {
      this.#captures.pop();
      try {
        this.#rollback(handles);
      } catch (rollbackError) {
        throw new AggregateError(
          [error, rollbackError],
          "resource conversion and rollback both failed",
        );
      }
      throw error;
    }
    this.#captures.pop();
    let active = true;
    const finish = rollback => {
      if (!active) throw new TypeError("resource capture was already finalized");
      active = false;
      if (rollback) this.#rollback(handles);
    };
    return Object.freeze({
      value,
      commit: () => finish(false),
      rollback: () => finish(true),
    });
  }

  #rollback(handles) {
    const errors = [];
    for (let index = handles.length - 1; index >= 0; index -= 1) {
      const handle = handles[index];
      let current;
      try {
        current = this.#entry(handle);
      } catch (error) {
        if (error instanceof HostRuntimeError && error.code === "stale_handle") continue;
        errors.push(error);
        continue;
      }
      try {
        this.#retire(current, true);
      } catch (error) {
        errors.push(error);
      }
    }
    if (errors.length === 1) throw errors[0];
    if (errors.length > 1) throw new AggregateError(errors, "resource rollback failed");
  }

  #retire({ entry, slot }, notify) {
    entry.live = false;
    entry.value = undefined;
    if (entry.generation < 0xffff) this.#free.push(slot);
    this.#live -= 1;
    if (notify) entry.onDrop?.();
    entry.onDrop = undefined;
  }

  get liveCount() {
    return this.#live;
  }
}

function createCallbackTable() {
  const table = new OpaqueTable("callback");

  function finishInvocation(record, handle) {
    record.depth -= 1;
    if (record.depth === 0 && record.releaseRequested) table.drop(handle);
  }

  return Object.freeze({
    register(signatureId, callback) {
      if (typeof signatureId !== "string" || !signatureId) {
        throw new TypeError("callback signature id must be a non-empty string");
      }
      if (typeof callback !== "function") {
        throw new TypeError("callback must be a function");
      }
      return table.insert({
        signatureId,
        callback,
        depth: 0,
        releaseRequested: false,
      });
    },

    invoke(handle, signatureId, args = []) {
      const record = table.borrow(handle);
      if (record.releaseRequested) {
        throw new HostRuntimeError(
          "callback_released",
          "callback has been released",
          { signatureId },
        );
      }
      if (record.signatureId !== signatureId) {
        throw new HostRuntimeError(
          "callback_signature_mismatch",
          `callback expects ${record.signatureId}, received ${signatureId}`,
          { expected: record.signatureId, received: signatureId },
        );
      }
      record.depth += 1;
      let result;
      try {
        result = record.callback(...args);
      } catch (error) {
        finishInvocation(record, handle);
        throw error;
      }
      if (result && typeof result.then === "function") {
        return Promise.resolve(result).finally(() => finishInvocation(record, handle));
      }
      finishInvocation(record, handle);
      return result;
    },

    release(handle) {
      const record = table.borrow(handle);
      if (record.depth > 0) {
        record.releaseRequested = true;
      } else {
        table.drop(handle);
      }
    },

    toCore(handle) {
      return table.toCore(handle);
    },

    get liveCount() {
      return table.liveCount;
    },
  });
}

function createFutureTable() {
  const table = new OpaqueTable("future");
  const defaultCancellation = () => {
    const error = new Error("The operation was cancelled");
    error.name = "AbortError";
    return error;
  };

  return Object.freeze({
    create() {
      let resolvePromise;
      let rejectPromise;
      const promise = new Promise((resolve, reject) => {
        resolvePromise = resolve;
        rejectPromise = reject;
      });
      // Tests and callers may intentionally observe cancellation rejections
      // later; prevent the host from reporting an unrelated unhandled promise.
      promise.catch(() => {});
      const record = {
        state: "pending",
        outcome: undefined,
        resolve: resolvePromise,
        reject: rejectPromise,
      };
      const token = table.insert(record);
      return Object.freeze({ token, promise });
    },

    settle(token, outcome) {
      const record = table.borrow(token);
      if (record.state !== "pending") {
        throw new HostRuntimeError(
          "future_already_completed",
          `future is already ${record.state}`,
          { state: record.state },
        );
      }
      const hasOk = Object.hasOwn(outcome || {}, "ok");
      const hasError = Object.hasOwn(outcome || {}, "error");
      if (hasOk === hasError) {
        throw new TypeError("future outcome must contain exactly one of `ok` or `error`");
      }
      record.state = hasOk ? "resolved" : "rejected";
      record.outcome = outcome;
      if (hasOk) record.resolve(outcome.ok);
      else record.reject(outcome.error);
      return true;
    },

    cancel(token, reason = defaultCancellation()) {
      const record = table.borrow(token);
      if (record.state !== "pending") {
        throw new HostRuntimeError(
          "future_already_completed",
          `future is already ${record.state}`,
          { state: record.state },
        );
      }
      record.state = "cancelled";
      record.outcome = { cancelled: reason };
      record.reject(reason);
      return true;
    },

    inspect(token) {
      const { state, outcome } = table.borrow(token);
      return Object.freeze({ state, outcome });
    },

    release(token) {
      table.drop(token);
    },

    toCore(token) {
      return table.toCore(token);
    },

    get liveCount() {
      return table.liveCount;
    },
  });
}

function requireFutureToken(token) {
  if (!Number.isInteger(token) || token < -0x80000000 || token > 0x7fffffff) {
    throw new TypeError("future token must be a core-Wasm i32");
  }
  return token;
}

/// Report a protocol callback failure without silently swallowing it.
///
/// Injection points make both branches testable without causing an unhandled
/// exception in the test runner.
export function reportHostProtocolError(error, {
  reportError = globalThis.reportError,
  schedule = queueMicrotask,
} = {}) {
  if (typeof reportError === "function") {
    reportError(error);
  } else {
    schedule(() => { throw error; });
  }
}

// Promise settlement bridge for the transport-neutral async ABI.
//
// The caller supplies and owns each i32 token. This bridge only subscribes to
// the Promise and forwards one terminal signal to the supplied guest exports;
// it never implies Fe Future/await or a compiler resumable state machine.
export function createPromiseFutureBridge(exports, {
  onProtocolError = reportHostProtocolError,
} = {}) {
  for (const name of ["resolve", "reject", "cancel"]) {
    if (typeof exports?.[name] !== "function") {
      throw new TypeError(`future bridge requires a ${name}(token, value?) export`);
    }
  }
  if (typeof onProtocolError !== "function") {
    throw new TypeError("onProtocolError must be a function");
  }

  const subscriptions = new Map();
  const counters = {
    resolved: 0,
    rejected: 0,
    cancelled: 0,
    unsubscribed: 0,
    suppressedLate: 0,
    protocolErrors: 0,
  };

  function cleanup(token, record) {
    if (subscriptions.get(token) !== record) return false;
    subscriptions.delete(token);
    record.signal?.removeEventListener("abort", record.onAbort);
    return true;
  }

  function report(error, phase, token) {
    counters.protocolErrors += 1;
    onProtocolError(error, Object.freeze({ phase, token }));
  }

  function deliver(token, record, kind, value) {
    if (!cleanup(token, record)) {
      counters.suppressedLate += 1;
      return false;
    }
    counters[kind === "resolve" ? "resolved" : "rejected"] += 1;
    try {
      exports[kind](token, value);
    } catch (error) {
      report(error, kind, token);
    }
    return true;
  }

  function abort(token, reason) {
    requireFutureToken(token);
    const record = subscriptions.get(token);
    if (!record) {
      counters.suppressedLate += 1;
      return false;
    }
    cleanup(token, record);
    counters.cancelled += 1;
    // AbortSignal normally ends only this subscription. Underlying work is
    // cancelled exclusively when the caller supplied an owned cancellation
    // hook, making that authority explicit.
    if (record.ownedCancellation) {
      try {
        record.ownedCancellation(reason);
      } catch (error) {
        report(error, "owned_cancellation", token);
      }
    }
    try {
      exports.cancel(token, reason);
    } catch (error) {
      report(error, "cancel", token);
    }
    return true;
  }

  return Object.freeze({
    subscribe(token, promise, {
      signal,
      ownedCancellation,
    } = {}) {
      requireFutureToken(token);
      if (subscriptions.has(token)) {
        throw new HostRuntimeError(
          "future_token_in_use",
          "future token already has an active Promise subscription",
          { token },
        );
      }
      if (
        signal !== undefined
        && (typeof AbortSignal === "undefined" || !(signal instanceof AbortSignal))
      ) {
        throw new TypeError("future subscription signal must be an AbortSignal");
      }
      if (ownedCancellation !== undefined && typeof ownedCancellation !== "function") {
        throw new TypeError("ownedCancellation must be a function");
      }
      const record = {
        signal,
        ownedCancellation,
        onAbort: undefined,
      };
      record.onAbort = () => abort(token, signal.reason);
      subscriptions.set(token, record);
      if (signal?.aborted) {
        abort(token, signal.reason);
      } else {
        signal?.addEventListener("abort", record.onAbort, { once: true });
      }
      Promise.resolve(promise).then(
        (value) => deliver(token, record, "resolve", value),
        (error) => deliver(token, record, "reject", error),
      );
      return token;
    },

    // Unsubscribe is deliberately not cancellation: no guest terminal export
    // and no underlying abort hook runs. The token owner must retire or reuse
    // its own state separately.
    unsubscribe(token) {
      requireFutureToken(token);
      const record = subscriptions.get(token);
      if (!record) return false;
      cleanup(token, record);
      counters.unsubscribed += 1;
      return true;
    },

    abort,

    inventory() {
      return Object.freeze({
        active: subscriptions.size,
        ...counters,
      });
    },
  });
}

// Bounded async-iterator protocol over the existing caller-owned i32
// FutureToken/Promise bridge. Iterator resources own cancellation authority;
// exactly one `next` subscription may be active per resource.
export function createAsyncIteratorFutureBridge(resources, exports, options) {
  if (!resources || typeof resources.insert !== "function"
      || typeof resources.borrow !== "function"
      || typeof resources.drop !== "function") {
    throw new TypeError("async iterator bridge requires a resource table");
  }
  const futures = createPromiseFutureBridge(exports, options);

  function close(state, reason) {
    if (state.closed) return;
    state.closed = true;
    if (typeof state.iterator.return === "function") {
      Promise.resolve(state.iterator.return(reason)).catch(() => {});
    }
  }

  return Object.freeze({
    create(source, ...args) {
      const iterator = source?.[Symbol.asyncIterator]?.(...args);
      if (!iterator || typeof iterator.next !== "function") {
        throw new TypeError("Symbol.asyncIterator must return an async iterator");
      }
      const state = { iterator, pending: undefined, closed: false };
      return resources.insert(state, () => {
        const pending = state.pending;
        state.pending = undefined;
        if (pending !== undefined) futures.abort(pending, new Error("async iterator dropped"));
        close(state);
      });
    },

    next(handle, token, { signal } = {}) {
      const state = resources.borrow(handle);
      if (state.pending !== undefined) {
        throw new HostRuntimeError(
          "async_iterator_backpressure",
          "async iterator permits exactly one in-flight next",
          { token: state.pending },
        );
      }
      if (state.closed) {
        futures.subscribe(token, Promise.resolve(null), { signal });
        return token;
      }
      state.pending = token;
      const promise = Promise.resolve()
        .then(() => state.iterator.next())
        .then((step) => {
          if (!step || typeof step.done !== "boolean") {
            throw new TypeError("async iterator next must return an iterator result");
          }
          if (step.done) close(state);
          return step.done ? null : step.value;
        })
        .finally(() => {
          if (state.pending === token) state.pending = undefined;
        });
      futures.subscribe(token, promise, {
        signal,
        ownedCancellation: (reason) => close(state, reason),
      });
      return token;
    },

    cancel(handle, token, reason) {
      const state = resources.borrow(handle);
      if (state.pending !== token) return false;
      state.pending = undefined;
      return futures.abort(token, reason);
    },

    drop(handle) {
      resources.drop(handle);
    },

    inventory: futures.inventory,
  });
}

export function createFeHostRuntime() {
  const resources = new OpaqueTable("resource");
  const callbacks = createCallbackTable();
  const futures = createFutureTable();
  return Object.freeze({
    protocol: HOST_RUNTIME_PROTOCOL,
    resources: Object.freeze({
      insert: resources.insert.bind(resources),
      borrow: resources.borrow.bind(resources),
      take: resources.take.bind(resources),
      drop: resources.drop.bind(resources),
      withBorrowed: resources.withBorrowed.bind(resources),
      capture: resources.capture.bind(resources),
      toCore: resources.toCore.bind(resources),
      get liveCount() {
        return resources.liveCount;
      },
    }),
    callbacks,
    futures,
    createFutureBridge: createPromiseFutureBridge,
    createAsyncIteratorBridge(exports, options) {
      return createAsyncIteratorFutureBridge(this.resources, exports, options);
    },
    inventory() {
      return Object.freeze({
        resources: resources.liveCount,
        callbacks: callbacks.liveCount,
        futures: futures.liveCount,
      });
    },
  });
}

const CONTRACT = "fe:host-wasm-codec/v1";

export function createHostWasmCodecSession({
  plan,
  memory,
  realloc,
  postReturn,
  lowerHandle,
}) {
  if (plan?.contract !== CONTRACT || plan?.abi !== "fe-host-wasm" || plan?.abi_version !== 1) {
    throw new TypeError(`unsupported Fe host codec contract`);
  }
  if (!(memory instanceof WebAssembly.Memory)) {
    throw new TypeError(`codec requires WebAssembly.Memory`);
  }
  if (plan?.function?.requirements?.includes("realloc") && typeof realloc !== "function") {
    throw new TypeError(`codec requires cabi_realloc`);
  }
  const requirements = new Set(plan.function.requirements);
  for (const unsupported of ["callback_table", "future_table"]) {
    if (requirements.has(unsupported)) {
      throw new TypeError(`${unsupported} execution is not implemented by codec v1`);
    }
  }
  if (requirements.has("post_return") && typeof postReturn !== "function") {
    throw new TypeError(`codec plan requires a post-return surface`);
  }

  const cleanups = new Map();
  const view = () => new DataView(memory.buffer);

  function handleToken(value) {
    const token = typeof value === "number" ? value : lowerHandle?.(value);
    if (!Number.isInteger(token) || token < -0x80000000 || token > 0xffffffff) {
      throw new TypeError("expected i32 handle token");
    }
    return token | 0;
  }

  function remember(ptr, size, align) {
    if (size !== 0) cleanups.set(`${ptr}:${size}:${align}`, { ptr, size, align });
  }

  function region(offset, size, align) {
    if (!Number.isSafeInteger(offset) || !Number.isSafeInteger(size) || offset < 0 || size < 0) {
      throw new RangeError(`invalid canonical memory region`);
    }
    if (!Number.isInteger(align) || align <= 0 || (align & (align - 1)) !== 0 || offset % align !== 0) {
      throw new RangeError(`unaligned canonical memory region`);
    }
    if (offset + size > memory.buffer.byteLength) {
      throw new RangeError(`canonical memory region is out of bounds`);
    }
  }

  function allocate(size, align) {
    if (size === 0) return 0;
    const ptr = Number(realloc(0, 0, align, size));
    region(ptr, size, align);
    remember(ptr, size, align);
    return ptr;
  }

  function writeScalar(kind, offset, value) {
    const data = view();
    switch (kind) {
      case "bool":
        if (typeof value !== "boolean") throw new TypeError("expected bool");
        data.setUint8(offset, value ? 1 : 0);
        break;
      case "i8": data.setInt8(offset, value); break;
      case "u8": data.setUint8(offset, value); break;
      case "i16": data.setInt16(offset, value, true); break;
      case "u16": data.setUint16(offset, value, true); break;
      case "i32": data.setInt32(offset, value, true); break;
      case "u32":
      case "char": data.setUint32(offset, value, true); break;
      case "i64": data.setBigInt64(offset, BigInt(value), true); break;
      case "u64": data.setBigUint64(offset, BigInt(value), true); break;
      case "f32": data.setFloat32(offset, value, true); break;
      case "f64": data.setFloat64(offset, value, true); break;
      default: throw new TypeError(`unknown scalar kind ${kind}`);
    }
  }

  function readScalar(kind, offset) {
    const data = view();
    switch (kind) {
      case "bool": {
        const value = data.getUint8(offset);
        if (value > 1) throw new TypeError(`malformed bool ${value}`);
        return value === 1;
      }
      case "i8": return data.getInt8(offset);
      case "u8": return data.getUint8(offset);
      case "i16": return data.getInt16(offset, true);
      case "u16": return data.getUint16(offset, true);
      case "i32": return data.getInt32(offset, true);
      case "u32": return data.getUint32(offset, true);
      case "char": {
        const value = data.getUint32(offset, true);
        if (value > 0x10ffff || (value >= 0xd800 && value <= 0xdfff)) {
          throw new TypeError(`malformed Unicode scalar ${value}`);
        }
        return value;
      }
      case "i64": return data.getBigInt64(offset, true);
      case "u64": return data.getBigUint64(offset, true);
      case "f32": return data.getFloat32(offset, true);
      case "f64": return data.getFloat64(offset, true);
      default: throw new TypeError(`unknown scalar kind ${kind}`);
    }
  }

  function encodeString(encoding, value) {
    if (typeof value !== "string") throw new TypeError("expected string");
    if (encoding === "utf8") return [new TextEncoder().encode(value), 1];
    if (encoding === "utf16") {
      const bytes = new Uint8Array(value.length * 2);
      const data = new DataView(bytes.buffer);
      for (let index = 0; index < value.length; index++) data.setUint16(index * 2, value.charCodeAt(index), true);
      return [bytes, 2];
    }
    if (encoding === "latin1") {
      const bytes = new Uint8Array(value.length);
      for (let index = 0; index < value.length; index++) {
        const code = value.charCodeAt(index);
        if (code > 0xff) throw new TypeError("string is not Latin-1");
        bytes[index] = code;
      }
      return [bytes, 1];
    }
    throw new TypeError(`unknown string encoding ${encoding}`);
  }

  function decodeString(encoding, bytes) {
    if (encoding === "utf8") return new TextDecoder("utf-8", { fatal: true }).decode(bytes);
    if (encoding === "utf16") {
      if (bytes.byteLength % 2 !== 0) throw new TypeError("malformed UTF-16");
      const data = new DataView(bytes.buffer, bytes.byteOffset, bytes.byteLength);
      let value = "";
      for (let index = 0; index < bytes.byteLength; index += 2) value += String.fromCharCode(data.getUint16(index, true));
      // Round-trip validation rejects unpaired surrogates.
      const canonical = encodeString("utf16", value)[0];
      new TextDecoder("utf-16le", { fatal: true }).decode(canonical);
      return value;
    }
    if (encoding === "latin1") return String.fromCharCode(...bytes);
    throw new TypeError(`unknown string encoding ${encoding}`);
  }

  function bufferSpec(kind) {
    switch (kind) {
      case "i8": return { bytes: 1, align: 1, ctor: Int8Array, get: "getInt8", set: "setInt8", bigint: false };
      case "u8": return { bytes: 1, align: 1, ctor: Uint8Array, get: "getUint8", set: "setUint8", bigint: false };
      case "i16": return { bytes: 2, align: 2, ctor: Int16Array, get: "getInt16", set: "setInt16", bigint: false };
      case "u16": return { bytes: 2, align: 2, ctor: Uint16Array, get: "getUint16", set: "setUint16", bigint: false };
      case "i32": return { bytes: 4, align: 4, ctor: Int32Array, get: "getInt32", set: "setInt32", bigint: false };
      case "u32": return { bytes: 4, align: 4, ctor: Uint32Array, get: "getUint32", set: "setUint32", bigint: false };
      case "i64": return { bytes: 8, align: 8, ctor: BigInt64Array, get: "getBigInt64", set: "setBigInt64", bigint: true };
      case "u64": return { bytes: 8, align: 8, ctor: BigUint64Array, get: "getBigUint64", set: "setBigUint64", bigint: true };
      case "f32": return { bytes: 4, align: 4, ctor: Float32Array, get: "getFloat32", set: "setFloat32", bigint: false };
      case "f64": return { bytes: 8, align: 8, ctor: Float64Array, get: "getFloat64", set: "setFloat64", bigint: false };
      default: throw new TypeError(`unknown typed buffer element ${kind}`);
    }
  }

  function lowerBuffer(kind, value, offset) {
    const spec = bufferSpec(kind);
    if (!(value instanceof spec.ctor)) {
      throw new TypeError(`expected ${spec.ctor.name}`);
    }
    const byteLength = value.length * spec.bytes;
    if (!Number.isSafeInteger(byteLength)) throw new RangeError("typed buffer size overflow");
    const ptr = allocate(byteLength, spec.align);
    const data = view();
    for (let index = 0; index < value.length; index++) {
      const item = spec.bigint ? BigInt(value[index]) : value[index];
      if (spec.bytes === 1) data[spec.set](ptr + index, item);
      else data[spec.set](ptr + index * spec.bytes, item, true);
    }
    writeDescriptor(offset, ptr, value.length);
  }

  function liftBuffer(kind, offset, ownership) {
    const spec = bufferSpec(kind);
    const [ptr, len] = readDescriptor(offset);
    const byteLength = len * spec.bytes;
    if (!Number.isSafeInteger(byteLength)) throw new RangeError("typed buffer size overflow");
    region(ptr, byteLength, spec.align);
    const result = new spec.ctor(len);
    const data = view();
    for (let index = 0; index < len; index++) {
      result[index] = spec.bytes === 1
        ? data[spec.get](ptr + index)
        : data[spec.get](ptr + index * spec.bytes, true);
    }
    if (ownership !== "borrow") remember(ptr, byteLength, spec.align);
    return result;
  }

  function writeDescriptor(offset, ptr, len) {
    view().setUint32(offset, ptr, true);
    view().setUint32(offset + 4, len, true);
  }

  function readDescriptor(offset) {
    return [view().getUint32(offset, true), view().getUint32(offset + 4, true)];
  }

  function lower(layout, value, offset, ownership = "value") {
    region(offset, layout.size, layout.align);
    const shape = layout.shape;
    switch (shape.kind) {
      case "scalar": writeScalar(shape.value, offset, value); return;
      case "string": {
        const [bytes, unit] = encodeString(shape.value, value);
        const ptr = allocate(bytes.byteLength, unit);
        new Uint8Array(memory.buffer, ptr, bytes.byteLength).set(bytes);
        writeDescriptor(offset, ptr, bytes.byteLength / unit);
        return;
      }
      case "list": {
        if (!Array.isArray(value)) throw new TypeError("expected list");
        const element = shape.value;
        const size = Math.multiplyExact ? Math.multiplyExact(value.length, element.size) : value.length * element.size;
        if (!Number.isSafeInteger(size)) throw new RangeError("list size overflow");
        const ptr = allocate(size, element.align);
        value.forEach((item, index) => lower(element, item, ptr + index * element.size));
        writeDescriptor(offset, ptr, value.length);
        return;
      }
      case "buffer":
        lowerBuffer(shape.value, value, offset);
        return;
      case "handle":
        view().setUint32(offset, handleToken(value), true);
        return;
      case "future_handle":
        throw new TypeError("future execution is not implemented by codec v1");
      case "record":
        for (const field of shape.value) lower(field.layout, value[field.name], offset + field.offset);
        return;
      case "tuple":
        if (!Array.isArray(value)) throw new TypeError("expected tuple");
        shape.value.forEach((field, index) => lower(field.layout, value[index], offset + field.offset));
        return;
      case "enum":
        if (!Number.isInteger(value) || value < 0 || value >= shape.value.cases) throw new TypeError("malformed enum tag");
        view().setUint32(offset, value, true);
        return;
      case "flags": {
        const allowed = shape.value.count === 32 ? 0xffffffff : (2 ** shape.value.count) - 1;
        if (!Number.isInteger(value) || value < 0 || (value & ~allowed) !== 0) throw new TypeError("malformed flags");
        view().setUint32(offset, value, true);
        return;
      }
      case "variant": {
        const tag = value?.case;
        const variant = shape.value;
        if (!Number.isInteger(tag) || tag < 0 || tag >= variant.cases.length) throw new TypeError("malformed variant tag");
        view().setUint32(offset, tag, true);
        const payload = variant.cases[tag].payload;
        if (payload) lower(payload, value.payload, offset + variant.payload_offset);
        else if (value.payload !== undefined && value.payload !== null) throw new TypeError("unexpected variant payload");
        return;
      }
      default: throw new TypeError(`unknown layout shape ${shape.kind}`);
    }
  }

  function lift(layout, offset, ownership = "value", rememberAllocations = true) {
    region(offset, layout.size, layout.align);
    const shape = layout.shape;
    switch (shape.kind) {
      case "scalar": return readScalar(shape.value, offset);
      case "string": {
        const [ptr, len] = readDescriptor(offset);
        const unit = shape.value === "utf16" ? 2 : 1;
        region(ptr, len * unit, unit);
        if (rememberAllocations) remember(ptr, len * unit, unit);
        return decodeString(shape.value, new Uint8Array(memory.buffer, ptr, len * unit));
      }
      case "list": {
        const [ptr, len] = readDescriptor(offset);
        const element = shape.value;
        region(ptr, len * element.size, element.align);
        if (rememberAllocations) remember(ptr, len * element.size, element.align);
        return Array.from(
          { length: len },
          (_, index) => lift(
            element,
            ptr + index * element.size,
            "value",
            rememberAllocations,
          ),
        );
      }
      case "buffer": return liftBuffer(shape.value, offset, ownership);
      case "handle": return view().getInt32(offset, true);
      case "future_handle": throw new TypeError("future execution is not implemented by codec v1");
      case "record": return Object.fromEntries(shape.value.map((field) => [
        field.name,
        lift(field.layout, offset + field.offset, "value", rememberAllocations),
      ]));
      case "tuple": return shape.value.map((field) =>
        lift(field.layout, offset + field.offset, "value", rememberAllocations));
      case "enum": {
        const tag = view().getUint32(offset, true);
        if (tag >= shape.value.cases) throw new TypeError("malformed enum tag");
        return tag;
      }
      case "flags": {
        const bits = view().getUint32(offset, true);
        const allowed = shape.value.count === 32 ? 0xffffffff : (2 ** shape.value.count) - 1;
        if ((bits & ~allowed) !== 0) throw new TypeError("malformed flags");
        return bits;
      }
      case "variant": {
        const tag = view().getUint32(offset, true);
        const variant = shape.value;
        if (tag >= variant.cases.length) throw new TypeError("malformed variant tag");
        const payload = variant.cases[tag].payload;
        return {
          case: tag,
          payload: payload
            ? lift(payload, offset + variant.payload_offset, "value", rememberAllocations)
            : null,
        };
      }
      default: throw new TypeError(`unknown layout shape ${shape.kind}`);
    }
  }

  function valuePlan(position, index = 0) {
    if (position === "parameter") return plan.function.params[index];
    if (position === "result") return plan.function.result;
    throw new TypeError(`unknown value position`);
  }

  function liftCoreScalar(kind, value) {
    switch (kind) {
      case "bool":
        if (value !== 0 && value !== 1) throw new TypeError(`malformed bool ${value}`);
        return value === 1;
      case "i8": return (Number(value) << 24) >> 24;
      case "u8": return Number(value) & 0xff;
      case "i16": return (Number(value) << 16) >> 16;
      case "u16": return Number(value) & 0xffff;
      case "i32": return Number(value) | 0;
      case "u32": return Number(value) >>> 0;
      case "char": {
        const scalar = Number(value) >>> 0;
        if (scalar > 0x10ffff || (scalar >= 0xd800 && scalar <= 0xdfff)) {
          throw new TypeError(`malformed Unicode scalar ${scalar}`);
        }
        return scalar;
      }
      case "i64": return BigInt.asIntN(64, BigInt(value));
      case "u64": return BigInt.asUintN(64, BigInt(value));
      case "f32": return Math.fround(Number(value));
      case "f64": return Number(value);
      default: throw new TypeError(`unknown scalar kind ${kind}`);
    }
  }

  function directOption(shape) {
    return shape.kind === "variant"
      && shape.value.cases.length === 2
      && shape.value.cases[0].name === "some"
      && shape.value.cases[0].payload !== null
      && shape.value.cases[1].name === "none"
      && shape.value.cases[1].payload === null;
  }

  function skipFlat(layout, state) {
    if (layout.flat.mode !== "direct") {
      throw new TypeError("an indirect payload cannot occur in a direct variant");
    }
    state.index += layout.flat.types.length;
  }

  function appendFlatZeros(layout, output) {
    if (layout.flat.mode !== "direct") {
      throw new TypeError("an indirect payload cannot occur in a direct variant");
    }
    for (const type of layout.flat.types) output.push(type === "i64" ? 0n : 0);
  }

  function liftFlat(layout, coreArgs, state, ownership = "value") {
    if (layout.flat.mode === "indirect") {
      throw new TypeError("indirect values are represented by their pointer");
    }
    const shape = layout.shape;
    switch (shape.kind) {
      case "scalar": return liftCoreScalar(shape.value, coreArgs[state.index++]);
      case "handle": return Number(coreArgs[state.index++]) | 0;
      case "string": {
        const ptr = Number(coreArgs[state.index++]) >>> 0;
        const len = Number(coreArgs[state.index++]) >>> 0;
        const unit = shape.value === "utf16" ? 2 : 1;
        const byteLength = len * unit;
        if (!Number.isSafeInteger(byteLength)) throw new RangeError("string size overflow");
        region(ptr, byteLength, unit);
        return decodeString(
          shape.value,
          new Uint8Array(memory.buffer, ptr, byteLength),
        );
      }
      case "list": {
        const ptr = Number(coreArgs[state.index++]) >>> 0;
        const len = Number(coreArgs[state.index++]) >>> 0;
        const element = shape.value;
        const byteLength = len * element.size;
        if (!Number.isSafeInteger(byteLength)) throw new RangeError("list size overflow");
        region(ptr, byteLength, element.align);
        return Array.from(
          { length: len },
          (_, index) => lift(element, ptr + index * element.size, "value", false),
        );
      }
      case "buffer": {
        const ptr = Number(coreArgs[state.index++]) >>> 0;
        const len = Number(coreArgs[state.index++]) >>> 0;
        const spec = bufferSpec(shape.value);
        const byteLength = len * spec.bytes;
        if (!Number.isSafeInteger(byteLength)) throw new RangeError("buffer size overflow");
        region(ptr, byteLength, spec.bytes);
        const result = new spec.ctor(len);
        const data = view();
        for (let index = 0; index < len; index++) {
          result[index] = spec.bytes === 1
            ? data[spec.get](ptr + index)
            : data[spec.get](ptr + index * spec.bytes, true);
        }
        if (ownership !== "borrow") remember(ptr, byteLength, spec.bytes);
        return result;
      }
      case "record": return Object.fromEntries(shape.value.map((field) => [
        field.name,
        liftFlat(field.layout, coreArgs, state),
      ]));
      case "tuple": return shape.value.map((field) =>
        liftFlat(field.layout, coreArgs, state));
      case "enum": {
        const tag = Number(coreArgs[state.index++]) >>> 0;
        if (tag >= shape.value.cases) throw new TypeError("malformed enum tag");
        return tag;
      }
      case "flags": {
        const bits = Number(coreArgs[state.index++]) >>> 0;
        const allowed = shape.value.count === 32 ? 0xffffffff : (2 ** shape.value.count) - 1;
        if ((bits & ~allowed) !== 0) throw new TypeError("malformed flags");
        return bits;
      }
      case "variant": {
        if (!directOption(shape)) {
          throw new TypeError("only Option may use the direct Fe variant ABI");
        }
        const tag = Number(coreArgs[state.index++]) >>> 0;
        if (tag >= shape.value.cases.length) throw new TypeError("malformed variant tag");
        let payload;
        shape.value.cases.forEach((case_, index) => {
          if (!case_.payload) return;
          if (index === tag) payload = liftFlat(case_.payload, coreArgs, state, ownership);
          else skipFlat(case_.payload, state);
        });
        return tag === 1 ? undefined : payload;
      }
      default:
        throw new TypeError(`${shape.kind} cannot use a direct core signature`);
    }
  }

  function lowerFlat(layout, value, output, ownership = "value") {
    if (layout.flat.mode === "indirect") {
      throw new TypeError("indirect values are represented by their pointer");
    }
    const shape = layout.shape;
    switch (shape.kind) {
      case "scalar": {
        const normalized = liftCoreScalar(
          shape.value,
          shape.value === "bool" ? (value ? 1 : 0) : value,
        );
        output.push(shape.value === "bool" ? (normalized ? 1 : 0) : normalized);
        return;
      }
      case "handle":
        output.push(handleToken(value));
        return;
      case "string": {
        const [bytes, unit] = encodeString(shape.value, value);
        const ptr = allocate(bytes.byteLength, unit);
        new Uint8Array(memory.buffer, ptr, bytes.byteLength).set(bytes);
        output.push(ptr, bytes.byteLength / unit);
        return;
      }
      case "list": {
        if (!Array.isArray(value)) throw new TypeError("expected list");
        const element = shape.value;
        const byteLength = value.length * element.size;
        if (!Number.isSafeInteger(byteLength)) throw new RangeError("list size overflow");
        const ptr = allocate(byteLength, element.align);
        value.forEach((item, index) => lower(element, item, ptr + index * element.size));
        output.push(ptr, value.length);
        return;
      }
      case "buffer": {
        const spec = bufferSpec(shape.value);
        if (!(value instanceof spec.ctor)) throw new TypeError(`expected ${spec.ctor.name}`);
        const byteLength = value.length * spec.bytes;
        if (!Number.isSafeInteger(byteLength)) throw new RangeError("buffer size overflow");
        const ptr = allocate(byteLength, spec.bytes);
        const data = view();
        for (let index = 0; index < value.length; index++) {
          const item = spec.bigint ? BigInt(value[index]) : value[index];
          if (spec.bytes === 1) data[spec.set](ptr + index, item);
          else data[spec.set](ptr + index * spec.bytes, item, true);
        }
        output.push(ptr, value.length);
        return;
      }
      case "record":
        for (const field of shape.value) {
          lowerFlat(field.layout, value[field.name], output);
        }
        return;
      case "tuple":
        if (!Array.isArray(value)) throw new TypeError("expected tuple");
        shape.value.forEach((field, index) =>
          lowerFlat(field.layout, value[index], output));
        return;
      case "enum":
        if (!Number.isInteger(value) || value < 0 || value >= shape.value.cases) {
          throw new TypeError("malformed enum tag");
        }
        output.push(value);
        return;
      case "flags": {
        const allowed = shape.value.count === 32 ? 0xffffffff : (2 ** shape.value.count) - 1;
        if (!Number.isInteger(value) || value < 0 || (value & ~allowed) !== 0) {
          throw new TypeError("malformed flags");
        }
        output.push(value >>> 0);
        return;
      }
      case "variant": {
        if (!directOption(shape)) {
          throw new TypeError("only Option may use the direct Fe variant ABI");
        }
        const tag = value === undefined ? 1 : 0;
        output.push(tag);
        shape.value.cases.forEach((case_, index) => {
          if (!case_.payload) return;
          if (index === tag) lowerFlat(case_.payload, value, output, ownership);
          else appendFlatZeros(case_.payload, output);
        });
        return;
      }
      default:
        throw new TypeError(`${shape.kind} cannot use a direct core signature`);
    }
  }

  function liftArguments(coreArgs) {
    const args = [];
    const state = { index: 0 };
    for (const parameter of plan.function.params) {
      if (parameter.layout.flat.mode === "indirect") {
        args.push(lift(
          parameter.layout,
          Number(coreArgs[state.index++]),
          parameter.ownership,
          false,
        ));
      } else {
        args.push(liftFlat(parameter.layout, coreArgs, state, parameter.ownership));
      }
    }
    if (state.index !== coreArgs.length) {
      throw new TypeError(`core argument count does not match codec plan`);
    }
    return args;
  }

  function lowerResult(value) {
    const result = plan.function.result;
    if (!result) return undefined;
    if (result.layout.flat.mode === "direct") {
      const core = [];
      lowerFlat(result.layout, value, core, result.ownership);
      return core.length === 1 ? core[0] : core;
    }
    const ptr = allocate(result.layout.size, result.layout.align);
    lower(result.layout, value, ptr, result.ownership);
    return ptr;
  }

  return Object.freeze({
    contract: CONTRACT,
    plan,
    lower(position, value, offset, index = 0) {
      const selected = valuePlan(position, index);
      if (!selected) throw new TypeError(`missing codec value plan`);
      lower(selected.layout, value, offset, selected.ownership);
    },
    lift(position, offset, index = 0) {
      const selected = valuePlan(position, index);
      if (!selected) throw new TypeError(`missing codec value plan`);
      return lift(selected.layout, offset, selected.ownership);
    },
    allocateAndLower(position, value, index = 0) {
      const selected = valuePlan(position, index);
      if (!selected) throw new TypeError(`missing codec value plan`);
      const ptr = allocate(selected.layout.size, selected.layout.align);
      lower(selected.layout, value, ptr, selected.ownership);
      return ptr;
    },
    liftArguments,
    lowerResult,
    finish() {
      if (typeof postReturn === "function") {
        for (const { ptr, size, align } of [...cleanups.values()].reverse()) {
          postReturn(ptr, size, align);
        }
      }
      cleanups.clear();
    },
  });
}

/// Binder-facing facade consumed by generated Web IDL core-Wasm transports.
///
/// `plans` is keyed by the transport function identity used by the generated
/// binder. Layouts remain entirely Rust-emitted data.
export function createFeHostWasmCodec(plans, options = {}) {
  const byIdentity = plans instanceof Map ? plans : new Map(Object.entries(plans));
  const needsRealloc = [...byIdentity.values()].some(plan =>
    plan?.function?.requirements?.includes("realloc"));
  const resources = options.resources;
  if (resources !== undefined && typeof resources?.toCore !== "function") {
    throw new TypeError("codec resources must expose toCore(handle)");
  }
  const supported = new Set([
    "realloc",
    "post_return",
    "resource_transfer",
    "borrow_scope",
  ]);
  return Object.freeze({
    protocol: CONTRACT,
    supports(feature) {
      return supported.has(feature);
    },
    createSession() {
      let surface = null;
      const sessions = new Map();
      function selected(identity) {
        if (!surface) throw new TypeError("codec session is not attached");
        const plan = byIdentity.get(identity);
        if (!plan) throw new TypeError(`missing codec plan for ${identity}`);
        let session = sessions.get(identity);
        if (!session) {
          session = createHostWasmCodecSession({
            plan,
            memory: surface.memory,
            realloc: surface.realloc,
            postReturn: surface.postReturns?.[identity],
            lowerHandle: resources === undefined
              ? undefined
              : handle => resources.toCore(handle),
          });
          sessions.set(identity, session);
        }
        return session;
      }
      return Object.freeze({
        attach(nextSurface) {
          if (!(nextSurface?.memory instanceof WebAssembly.Memory)) {
            throw new TypeError("codec attach requires WebAssembly.Memory");
          }
          if (needsRealloc && typeof nextSurface.realloc !== "function") {
            throw new TypeError("codec attach requires cabi_realloc");
          }
          surface = nextSurface;
          sessions.clear();
        },
        liftArguments(identity, coreArgs) {
          return selected(identity).liftArguments(coreArgs);
        },
        lowerResult(identity, value) {
          return selected(identity).lowerResult(value);
        },
        finish(identity) {
          selected(identity).finish();
        },
      });
    },
  });
}

// @generated by fe-webidl-bindgen; semantic adapter boundary.
export const FE_HOST_RUNTIME_CONTRACT = "fe:host-runtime/v1";

export function createFeHostAdapter(host, runtime) {
  if (runtime.protocol !== FE_HOST_RUNTIME_CONTRACT) throw new TypeError(`expected ${FE_HOST_RUNTIME_CONTRACT} runtime`);
  const withBorrowedList = (values, convert, callback, index = 0, output = []) => {
    if (index === values.length) return callback(output);
    return convert(values[index], converted => { output.push(converted); return withBorrowedList(values, convert, callback, index + 1, output); });
  };
  const sameObjectCache = new WeakMap();
  const requireLegacyUnforgeable = (target, name) => { const descriptor = Object.getOwnPropertyDescriptor(target, name); if (!descriptor || descriptor.configurable) throw new TypeError(`LegacyUnforgeable property ${name} must be own and non-configurable`); };
  const imports = {
    "response_array_buffer": function(selfHandle) { return Promise.resolve(runtime.resources.borrow(selfHandle)["arrayBuffer"]()); },
    "response_get_status": function(selfHandle) { return runtime.resources.borrow(selfHandle)["status"]; },
    "response_resource_drop": function(selfHandle) { runtime.resources.drop(selfHandle); },
    "response_text": function(selfHandle) { return Promise.resolve(runtime.resources.borrow(selfHandle)["text"]()); },
    "window_fetch": function(input) { return Promise.resolve(host.interfaces["Window"]["fetch"](input)); },
  };
  const completions = {
    "response_array_buffer": function(value) { return runtime.resources.capture(() => new Uint8Array(value)); },
    "response_text": function(value) { return runtime.resources.capture(() => value); },
    "window_fetch": function(value) { return runtime.resources.capture(() => runtime.resources.insert(value)); },
  };
  const settleFuture = (token, promise) => Promise.resolve(promise).then(
    value => runtime.futures.settle(token, { ok: value }),
    error => runtime.futures.settle(token, { error })
  );
  return {
    imports: { "fe:web-fetch": imports },
    completions: { "fe:web-fetch": completions },
    resources: runtime.resources,
    settleFuture,
    cancelFuture: (token, reason) => runtime.futures.cancel(token, reason),
  };
}

// @generated transport blueprint; layout is delegated to the codec.
export const FE_HOST_WASM_CODEC_CONTRACT = "fe:host-wasm-codec/v1";
export const FE_GENERATED_COMPLETION_CONTRACT = "fe:generated-completion/v1";

export function createFeCoreWasmTransport(codec, semanticAdapter, completions) {
  if (codec.protocol !== FE_HOST_WASM_CODEC_CONTRACT) throw new TypeError(`expected ${FE_HOST_WASM_CODEC_CONTRACT} codec`);
  if (completions?.protocol !== FE_GENERATED_COMPLETION_CONTRACT || typeof completions.begin !== "function") throw new TypeError(`expected ${FE_GENERATED_COMPLETION_CONTRACT} completion rail`);
  const required = ["realloc","post_return","resource_transfer","borrow_scope",];
  const unsupported = required.filter(feature => !codec.supports(feature));
  if (unsupported.length) throw new TypeError(`codec lacks ${unsupported.join(", ")}`);
  const mechanicsBlockers = [];
  if (mechanicsBlockers.length) throw new TypeError(`transport blueprint is not executable: ${mechanicsBlockers.join("; ")}`);
  const session = codec.createSession();
  const lowerCompletion = (identity, complete, value, state) => {
    const receipt = complete(value);
    if (!receipt || typeof receipt !== "object" || !Object.hasOwn(receipt, "value") || typeof receipt.commit !== "function" || typeof receipt.rollback !== "function") throw new TypeError(`generated completion ${identity} returned no ownership receipt`);
    state.receipt = receipt;
    try { return session.lowerResult(identity, receipt.value); }
    catch (error) {
      state.receipt = undefined;
      try { receipt.rollback(); }
      catch (rollbackError) { throw new AggregateError([error, rollbackError], `generated completion ${identity} lowering and ownership rollback both failed`); }
      throw error;
    }
  };
  const releaseCompletion = (identity, state, committed) => {
    const receipt = state.receipt;
    state.receipt = undefined;
    const errors = [];
    try { session.finish(identity); } catch (error) { errors.push(error); }
    if (receipt !== undefined) {
      try { receipt[committed ? "commit" : "rollback"](); } catch (error) { errors.push(error); }
    }
    if (errors.length === 1) throw errors[0];
    if (errors.length > 1) throw new AggregateError(errors, `generated completion ${identity} cleanup failed`);
  };
  const imports = {
    "response_array_buffer": (...coreArgs) => {
      const args = session.liftArguments("resource/Response/response_array_buffer", coreArgs);
      const complete = semanticAdapter.completions?.["fe:web-fetch"]?.["response_array_buffer"];
      if (typeof complete !== "function") throw new TypeError("generated semantic adapter has no completion converter");
      const completionState = { receipt: undefined };
      return completions.begin(
        "resource/Response/response_array_buffer",
        _signal => semanticAdapter.imports["fe:web-fetch"]["response_array_buffer"](...args),
        2,
        value => lowerCompletion("resource/Response/response_array_buffer", complete, value, completionState),
        committed => releaseCompletion("resource/Response/response_array_buffer", completionState, committed),
      );
    },
    "response_get_status": (...coreArgs) => {
      const args = session.liftArguments("resource/Response/response_get_status", coreArgs);
      const result = semanticAdapter.imports["fe:web-fetch"]["response_get_status"](...args);
      return session.lowerResult("resource/Response/response_get_status", result);
    },
    "response_resource_drop": (...coreArgs) => {
      const args = session.liftArguments("resource/Response/response_resource_drop", coreArgs);
      const result = semanticAdapter.imports["fe:web-fetch"]["response_resource_drop"](...args);
      return session.lowerResult("resource/Response/response_resource_drop", result);
    },
    "response_text": (...coreArgs) => {
      const args = session.liftArguments("resource/Response/response_text", coreArgs);
      const complete = semanticAdapter.completions?.["fe:web-fetch"]?.["response_text"];
      if (typeof complete !== "function") throw new TypeError("generated semantic adapter has no completion converter");
      const completionState = { receipt: undefined };
      return completions.begin(
        "resource/Response/response_text",
        _signal => semanticAdapter.imports["fe:web-fetch"]["response_text"](...args),
        2,
        value => lowerCompletion("resource/Response/response_text", complete, value, completionState),
        committed => releaseCompletion("resource/Response/response_text", completionState, committed),
      );
    },
    "window_fetch": (...coreArgs) => {
      const args = session.liftArguments("resource/Window/window_fetch", coreArgs);
      const complete = semanticAdapter.completions?.["fe:web-fetch"]?.["window_fetch"];
      if (typeof complete !== "function") throw new TypeError("generated semantic adapter has no completion converter");
      const completionState = { receipt: undefined };
      return completions.begin(
        "resource/Window/window_fetch",
        _signal => semanticAdapter.imports["fe:web-fetch"]["window_fetch"](...args),
        1,
        value => lowerCompletion("resource/Window/window_fetch", complete, value, completionState),
        committed => releaseCompletion("resource/Window/window_fetch", completionState, committed),
      );
    },
  };
  const postReturnNames = {"resource/Response/response_array_buffer": "cabi_post_229ce3ffb3fe677a","resource/Response/response_text": "cabi_post_07e98a263ec123c5",};
  const attach = instance => {
    const exports = instance.exports;
    const memory = exports["memory"];
    const canonicalRealloc = exports["cabi_realloc"];
    const arenaAlloc = exports["fe_cabi_alloc"];
    const realloc = typeof canonicalRealloc === "function"
      ? canonicalRealloc
      : typeof arenaAlloc === "function"
        ? (_oldPtr, _oldSize, align, size) => arenaAlloc(size, align)
        : undefined;
    if (!(memory instanceof WebAssembly.Memory)) throw new TypeError("missing canonical memory export");
    if (typeof realloc !== "function") throw new TypeError("missing canonical realloc export");
    const postReturns = Object.fromEntries(Object.entries(postReturnNames).map(([identity, name]) => {
      const cleanup = exports[name] ?? exports["fe_cabi_post_return"];
      if (typeof cleanup !== "function") throw new TypeError(`missing post-return export ${name} for ${identity}`);
      return [identity, cleanup];
    }));
    session.attach({ instance, memory, realloc, postReturns });
    return instance;
  };
  return { imports: { "fe:web-fetch": imports }, attach, session };
}

export const FE_HOST_WASM_CODEC_PLANS = Object.freeze({"resource/Response/response_array_buffer":{"contract":"fe:host-wasm-codec/v1","abi":"fe-host-wasm","abi_version":1,"function":{"namespace":"Response","name":"arrayBuffer","direction":"guest_to_host","params":[{"type_":{"kind":"handle","value":{"resource":"Response","ownership":"borrow"}},"layout":{"size":4,"align":4,"shape":{"kind":"handle"},"flat":{"mode":"direct","types":["i32"]}},"position":"parameter","ownership":"borrow"}],"result":{"type_":{"kind":"buffer","value":{"element":"u8","ownership":"own"}},"layout":{"size":8,"align":4,"shape":{"kind":"buffer","value":"u8"},"flat":{"mode":"direct","types":["i32","i32"]}},"position":"result","ownership":"value"},"requirements":["realloc","post_return","borrow_scope"]}},"resource/Response/response_get_status":{"contract":"fe:host-wasm-codec/v1","abi":"fe-host-wasm","abi_version":1,"function":{"namespace":"Response","name":"get-status","direction":"guest_to_host","params":[{"type_":{"kind":"handle","value":{"resource":"Response","ownership":"borrow"}},"layout":{"size":4,"align":4,"shape":{"kind":"handle"},"flat":{"mode":"direct","types":["i32"]}},"position":"parameter","ownership":"borrow"}],"result":{"type_":{"kind":"u16"},"layout":{"size":2,"align":2,"shape":{"kind":"scalar","value":"u16"},"flat":{"mode":"direct","types":["i32"]}},"position":"result","ownership":"value"},"requirements":["borrow_scope"]}},"resource/Response/response_resource_drop":{"contract":"fe:host-wasm-codec/v1","abi":"fe-host-wasm","abi_version":1,"function":{"namespace":"Response","name":"resource-drop","direction":"guest_to_host","params":[{"type_":{"kind":"handle","value":{"resource":"Response","ownership":"own"}},"layout":{"size":4,"align":4,"shape":{"kind":"handle"},"flat":{"mode":"direct","types":["i32"]}},"position":"parameter","ownership":"own"}],"result":null,"requirements":["resource_transfer"]}},"resource/Response/response_text":{"contract":"fe:host-wasm-codec/v1","abi":"fe-host-wasm","abi_version":1,"function":{"namespace":"Response","name":"text","direction":"guest_to_host","params":[{"type_":{"kind":"handle","value":{"resource":"Response","ownership":"borrow"}},"layout":{"size":4,"align":4,"shape":{"kind":"handle"},"flat":{"mode":"direct","types":["i32"]}},"position":"parameter","ownership":"borrow"}],"result":{"type_":{"kind":"string","value":"utf8"},"layout":{"size":8,"align":4,"shape":{"kind":"string","value":"utf8"},"flat":{"mode":"direct","types":["i32","i32"]}},"position":"result","ownership":"value"},"requirements":["realloc","post_return","borrow_scope"]}},"resource/Window/window_fetch":{"contract":"fe:host-wasm-codec/v1","abi":"fe-host-wasm","abi_version":1,"function":{"namespace":"Window","name":"fetch","direction":"guest_to_host","params":[{"type_":{"kind":"string","value":"utf8"},"layout":{"size":8,"align":4,"shape":{"kind":"string","value":"utf8"},"flat":{"mode":"direct","types":["i32","i32"]}},"position":"parameter","ownership":"value"}],"result":{"type_":{"kind":"handle","value":{"resource":"Response","ownership":"own"}},"layout":{"size":4,"align":4,"shape":{"kind":"handle"},"flat":{"mode":"direct","types":["i32"]}},"position":"result","ownership":"own"},"requirements":["resource_transfer"]}}});
export function createFeBrowserCoreAdapter(completions, globalObject = globalThis) {
  if (!globalObject || (typeof globalObject !== "object" && typeof globalObject !== "function")) throw new TypeError("browser adapter requires a global object");
  const host = Object.freeze({
    interfaces: Object.freeze({"Response": globalObject["Response"],"Window": globalObject,}),
    namespaces: Object.freeze({}),
  });
  const runtime = createFeHostRuntime();
  const semanticAdapter = createFeHostAdapter(host, runtime);
  const codec = createFeHostWasmCodec(FE_HOST_WASM_CODEC_PLANS, { resources: runtime.resources });
  const transport = createFeCoreWasmTransport(codec, semanticAdapter, completions);
  return Object.freeze({ imports: transport.imports, attach: transport.attach, session: transport.session, runtime });
}
