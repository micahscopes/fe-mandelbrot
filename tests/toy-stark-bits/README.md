# Experimental bitweight argument and shared algebra

This test ingot supplies shared arithmetic and an experimental public verifier for an eight-bit weight argument. It includes source commitments, a sequenced transcript, authenticated openings and a fixed test-only proof encoding. It has no masking or approved security parameters and is not zero knowledge. The deployed application is unchanged.

`air::constraint_combination<N>` combines booleanity, accumulator transition, first-row, and last-row constraints. Mask order is `[b(X), b(gX), acc(X), acc(gX)]`. The eight challenges are interleaved `[r0,r0prime,r1,r1prime,r2,r2prime,r3,r3prime]`. Degree corrections are `[1,N-1,1,1]`. `N` must be a supported power of two at least four. Only the trace subgroup H is rejected as a pole set; the prover's evaluation coset remains admissible. A public weight greater than N is evaluated normally rather than rejected by an input guard.

`deep::deep_value` combines five source difference quotients. Answer order is `[b(q),b(gq),acc(q),acc(gq),composition(q)]`. Quotient denominators are respectively `[X-q,X-gq,X-q,X-gq,X-q]`. Both denominator guards precede input-dependent inversion. Arithmetic callers supply the fixed profile root g and are responsible for source linkage.

The canonical test entries `air8`, `deep`, and `domains` are fixtures, not production verifier interfaces. Their status codes are zero for an arithmetic result, one for a noncanonical input coordinate, and two for a pole. All extension coordinates use the existing BabyBearExt4 representation with `U^4=11`.

The independent BigInt driver interpolates source traces over H8, evaluates Fe composition on every point of `31*H32`, and interpolates its output to check that honest coefficients of degrees eight and above vanish. It also checks the honest DEEP degree bound, two witnesses for the same public weight, all-zero and all-one witnesses, malformed coordinates, pole guards, and fixed false sources. An OOD-consistent forged answer fixture produces a DEEP table outside the honest degree bound. These are deterministic arithmetic checks, not a soundness estimate or succinct verification.

Using the pinned Fe compiler, from the repository root with a fresh output path:

```sh
fe web build tests/toy-stark-bits --out /lab/argot/scratch/mb2-bits-algebra-example --entry wasm_anchor --mode render --canonical required --canonical-entry air8 --canonical-entry deep --canonical-entry domains
FE_BITS_ALGEBRA_BUNDLE=/lab/argot/scratch/mb2-bits-algebra-example node tests/toy-stark-bits-algebra.mjs
```

## Experimental public verifier

`verify` accepts only `{ statement: { weight }, proof }`, with proof supplied as exactly 9824 bytes encoding 2456 little-endian u32 words. Every word and the statement are checked for canonicality before field conversion. The verifier derives all challenges and query indices, checks the OOD identity, authenticates each query's trace/composition/FRI pairs, then checks the fold chain and final constant. Status order follows `docs/private-circle/TOY-BITS-CONTRACT.md`.

Transcript construction is a sequenced function, not a type-state enforcement or Fiat-Shamir security claim. The separate `sampler_control` fixture injects candidates into the same bounded control used by production hash loops. Injected candidates are never accepted by `verify`.

The verifier regression consumes independently generated Rust fixtures. A gzipped fixture file is used by default; `FE_BITS_FIXTURES` can select an uncompressed or gzipped fixture file explicitly. Using a fresh scratch output path:

```sh
fe web build tests/toy-stark-bits --out /lab/argot/scratch/mb2-bits-verifier-example --entry wasm_anchor --mode render --canonical required --canonical-entry verify --canonical-entry sampler_control --canonical-entry air8 --canonical-entry deep --canonical-entry domains
FE_BITS_VERIFIER_BUNDLE=/lab/argot/scratch/mb2-bits-verifier-example node tests/toy-stark-bits-verifier.mjs
```

This argument is non-hiding and remains test-only. Passing differential fixtures establishes particular implementation behavior, not a soundness probability, complete theorem mapping, or zero-knowledge property. Reported setup/verification timings cover Node/Wasm only; they exclude browser/GPU startup and proof generation.

## Deterministic Fe producer

`prove` accepts `{ statement: { weight }, witness: { bits: [u32; 8] } }` and returns `{ status, proof }`. The producer checks boolean inputs and their sum, interpolates both trace columns, computes the shared AIR composition, checks its degree, derives OOD answers, folds the virtual DEEP table, and writes authenticated paths. The output is exactly 9824 little-endian bytes and contains no separate witness input field. It remains non-hiding: commitments, answers and openings depend on the witness.

Producer statuses are zero for a proof, one for an invalid witness/statement, two for sampler exhaustion, and three for an internal invariant failure. These producer statuses are distinct from the verifier's path-status namespace. Failure returns an empty proof. Output storage is explicitly zero-initialized before header/path construction.

Prover and verifier share consuming transcript-prefix helpers. Their private fields avoid direct construction by other modules, but the intended phase order is documented rather than enforced by the prefix type. Neither caller substitutes injected challenges or placeholder proof roots.

The producer driver checks byte equality against four independent Rust proofs, verifies Fe-produced proofs through the public Fe verifier, rejects changed statements, and exercises invalid witnesses and repeated calls. Using a fresh output path:

```sh
fe web build tests/toy-stark-bits --out /lab/argot/scratch/mb2-bits-prover-example --entry wasm_anchor --mode render --canonical required --canonical-entry prove --canonical-entry verify --canonical-entry sampler_control --canonical-entry air8 --canonical-entry deep --canonical-entry domains
FE_BITS_PROVER_BUNDLE=/lab/argot/scratch/mb2-bits-prover-example node tests/toy-stark-bits-prover.mjs
FE_BITS_VERIFIER_BUNDLE=/lab/argot/scratch/mb2-bits-prover-example node tests/toy-stark-bits-verifier.mjs
```

`FE_BITS_PROVER_OUTPUT` optionally writes produced proof words to a scratch JSON file for independent verification. Node/Wasm timings separate module setup, proof generation, and verification. This eight-bit relation does not measure Mandelbrot proof generation or browser/GPU startup.
