export declare const canonicalInterfaceManifest: Readonly<object>;
export declare const compiledCanonicalInterface: Readonly<object>;

export type SlicedRequest = {
  request: {
    selection: Uint8Array;
    shape: number;
    claim: number;
    precision: number;
    max_steps: number;
  };
  budget: number;
};
export type SlicedResponse = {
  code: number;
  step: number;
  certificate: number;
};

export type BinaryRequest = {
  witness: {
    re: {
      w0: number;
      w1: number;
      w2: number;
      w3: number;
    };
    im: {
      w0: number;
      w1: number;
      w2: number;
      w3: number;
    };
    scale: number;
    u: number;
    v: number;
  };
  center: {
    re: {
      w0: number;
      w1: number;
      w2: number;
      w3: number;
    };
    im: {
      w0: number;
      w1: number;
      w2: number;
      w3: number;
    };
    scale: number;
    u: number;
    v: number;
  };
  radius_x: number;
  radius_y: number;
  shape: number;
  claim: number;
  precision: number;
  max_steps: number;
};
export type BinaryResponse = {
  code: number;
  step: number;
  certificate: number;
};

export interface CanonicalInterfaceCaller {
  call(lane: "sliced", value: SlicedRequest): Promise<SlicedResponse>;
  call(lane: "binary", value: BinaryRequest): Promise<BinaryResponse>;
}

export declare function createInterfaceCaller(
  exports: WebAssembly.Exports,
): CanonicalInterfaceCaller;

export interface CanonicalActorRequest<Lane extends string, Payload> {
  lane: Lane;
  payload: Payload;
}
export interface CanonicalActorContext {
  readonly signal: AbortSignal;
}
export interface CanonicalActorShape {
  readonly requestSchema: Readonly<Record<string, (value: unknown) => void>>;
  readonly resultSchema: Readonly<Record<string, (value: unknown) => void>>;
  transferRequest(value: unknown, request: { lane: string }): ArrayBuffer[];
  transferResult(value: unknown, request: { lane: string }): ArrayBuffer[];
}
export interface CanonicalActorAdapter extends CanonicalActorShape {
  dispatch(request: CanonicalActorRequest<"sliced", SlicedRequest>, context?: CanonicalActorContext): Promise<SlicedResponse>;
  dispatch(request: CanonicalActorRequest<"binary", BinaryRequest>, context?: CanonicalActorContext): Promise<BinaryResponse>;
}

export interface CanonicalHostEffectHandlers {
  "sliced"?: (request: SlicedRequest, context: CanonicalActorContext) => SlicedResponse | PromiseLike<SlicedResponse>;
  "binary"?: (request: BinaryRequest, context: CanonicalActorContext) => BinaryResponse | PromiseLike<BinaryResponse>;
}
export declare function compileActorAdapter(): CanonicalActorShape;
export declare function createActorAdapter(
  exports: WebAssembly.Exports,
  options?: { maxPendingPerLane?: number },
): CanonicalActorAdapter;
export declare function createHostEffectAdapter(
  handlers: CanonicalHostEffectHandlers,
  options?: { maxPendingPerLane?: number },
): CanonicalActorAdapter;
