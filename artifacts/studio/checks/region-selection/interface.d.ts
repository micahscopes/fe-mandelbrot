export declare const canonicalInterfaceManifest: Readonly<object>;
export declare const compiledCanonicalInterface: Readonly<object>;

export type InspectRequest = {
  unused: number;
};
export type InspectResponse = {
  checks: number;
  cancellation_x: number;
};

export type FixedProjectionRequest = {
  words: [number, number, number, number, number, number, number, number, number, number, number, number, number, number];
  negative: boolean;
};
export type FixedProjectionResponse = {
  bits: number;
};

export interface CanonicalInterfaceCaller {
  call(lane: "inspect", value: InspectRequest): Promise<InspectResponse>;
  call(lane: "fixed_projection", value: FixedProjectionRequest): Promise<FixedProjectionResponse>;
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
  dispatch(request: CanonicalActorRequest<"inspect", InspectRequest>, context?: CanonicalActorContext): Promise<InspectResponse>;
  dispatch(request: CanonicalActorRequest<"fixed_projection", FixedProjectionRequest>, context?: CanonicalActorContext): Promise<FixedProjectionResponse>;
}

export interface CanonicalHostEffectHandlers {
  "inspect"?: (request: InspectRequest, context: CanonicalActorContext) => InspectResponse | PromiseLike<InspectResponse>;
  "fixed_projection"?: (request: FixedProjectionRequest, context: CanonicalActorContext) => FixedProjectionResponse | PromiseLike<FixedProjectionResponse>;
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
