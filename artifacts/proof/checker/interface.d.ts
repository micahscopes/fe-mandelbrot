export declare const canonicalInterfaceManifest: Readonly<object>;
export declare const compiledCanonicalInterface: Readonly<object>;

export type PreflightRequest = {
  point: {
    re: number;
    im: number;
  };
};
export type PreflightResponse = {
  code: number;
  terminal_step: number;
};

export type CheckRequest = {
  point: {
    re: number;
    im: number;
  };
  proof: Uint8Array;
};
export type CheckResponse = {
  code: number;
  terminal_step: number;
};

export interface CanonicalInterfaceCaller {
  call(lane: "preflight", value: PreflightRequest): Promise<PreflightResponse>;
  call(lane: "check", value: CheckRequest): Promise<CheckResponse>;
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
  dispatch(request: CanonicalActorRequest<"preflight", PreflightRequest>, context?: CanonicalActorContext): Promise<PreflightResponse>;
  dispatch(request: CanonicalActorRequest<"check", CheckRequest>, context?: CanonicalActorContext): Promise<CheckResponse>;
}

export interface CanonicalHostEffectHandlers {
  "preflight"?: (request: PreflightRequest, context: CanonicalActorContext) => PreflightResponse | PromiseLike<PreflightResponse>;
  "check"?: (request: CheckRequest, context: CanonicalActorContext) => CheckResponse | PromiseLike<CheckResponse>;
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
