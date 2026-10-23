export declare const canonicalInterfaceManifest: Readonly<object>;
export declare const compiledCanonicalInterface: Readonly<object>;

export type CertifyRequest = {
  depth: number;
  precision: number;
  max_steps: number;
};
export type CertifyResponse = {
  code: number;
  step: number;
  precision: number;
  scratch_bytes: number;
};

export type ArithmeticRequest = {
  left: number;
  left_exp: number;
  right: number;
  right_exp: number;
  precision: number;
  operation: number;
};
export type ArithmeticResponse = {
  code: number;
  lower: Uint8Array;
  upper: Uint8Array;
  lower_exp: bigint;
  upper_exp: bigint;
  lower_negative: boolean;
  upper_negative: boolean;
};

export type ArithmeticWordsRequest = {
  left: Uint8Array;
  right: Uint8Array;
  left_exp: number;
  right_exp: number;
  left_negative: boolean;
  right_negative: boolean;
  precision: number;
  operation: number;
};
export type ArithmeticWordsResponse = {
  code: number;
  lower: Uint8Array;
  upper: Uint8Array;
  lower_exp: bigint;
  upper_exp: bigint;
  lower_negative: boolean;
  upper_negative: boolean;
};

export type EvaluateRegionRequest = {
  selection: Uint8Array;
  shape: number;
  claim: number;
  precision: number;
  max_steps: number;
};
export type EvaluateRegionResponse = {
  code: number;
  step: number;
  certificate: number;
};

export interface CanonicalInterfaceCaller {
  call(lane: "certify", value: CertifyRequest): Promise<CertifyResponse>;
  call(lane: "arithmetic", value: ArithmeticRequest): Promise<ArithmeticResponse>;
  call(lane: "arithmetic_words", value: ArithmeticWordsRequest): Promise<ArithmeticWordsResponse>;
  call(lane: "evaluate_region", value: EvaluateRegionRequest): Promise<EvaluateRegionResponse>;
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
  dispatch(request: CanonicalActorRequest<"certify", CertifyRequest>, context?: CanonicalActorContext): Promise<CertifyResponse>;
  dispatch(request: CanonicalActorRequest<"arithmetic", ArithmeticRequest>, context?: CanonicalActorContext): Promise<ArithmeticResponse>;
  dispatch(request: CanonicalActorRequest<"arithmetic_words", ArithmeticWordsRequest>, context?: CanonicalActorContext): Promise<ArithmeticWordsResponse>;
  dispatch(request: CanonicalActorRequest<"evaluate_region", EvaluateRegionRequest>, context?: CanonicalActorContext): Promise<EvaluateRegionResponse>;
}

export interface CanonicalHostEffectHandlers {
  "certify"?: (request: CertifyRequest, context: CanonicalActorContext) => CertifyResponse | PromiseLike<CertifyResponse>;
  "arithmetic"?: (request: ArithmeticRequest, context: CanonicalActorContext) => ArithmeticResponse | PromiseLike<ArithmeticResponse>;
  "arithmetic_words"?: (request: ArithmeticWordsRequest, context: CanonicalActorContext) => ArithmeticWordsResponse | PromiseLike<ArithmeticWordsResponse>;
  "evaluate_region"?: (request: EvaluateRegionRequest, context: CanonicalActorContext) => EvaluateRegionResponse | PromiseLike<EvaluateRegionResponse>;
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
