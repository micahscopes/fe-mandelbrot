# Toy out-of-domain AIR check

This regression exercises Fe arithmetic for a four-row BabyBear trace `[0,1,2,3]`. It is not a proof system or a zero-knowledge construction. Source coefficients are transmitted in full. The Node driver independently interpolates fixtures with BigInt; it supplies no application behavior.

For `p = 2013265921`, `g = 31^((p-1)/4)`, and `H = {1,g,g²,g³}`, the constraints are `T(gX)-T(X)-1 = 0` at the first three rows and `T(1) = 0`. The transition divisor is `(X⁴-1)/(X-g³)`; the boundary divisor is `X-1`. The checker compares the two quotient relations at a supplied point outside both H and the example evaluation coset D = 7H and checks all claimed evaluations against the supplied source coefficients. The encoded degree limits are 3 for T, 0 for the transition quotient, and 2 for the boundary quotient.

All inputs must be canonical field elements. All H and D points are rejected before inversion, including the final transition row. Status codes are 0 accepted, 1 noncanonical, 2 forbidden challenge, 3 coefficient/opening mismatch, 4 transition mismatch, and 5 boundary mismatch.

From the repository root, using the pinned Fe compiler:

```sh
fe web build tests/toy-deep-air --out /lab/argot/scratch/mb2-toy-ood-example --entry wasm_anchor --mode render --canonical required --canonical-entry check
FE_TOY_OOD_BUNDLE=/lab/argot/scratch/mb2-toy-ood-example node tests/toy-deep-air.mjs
```

The test uses deterministic points. It establishes neither a soundness probability nor cryptographic binding, succinct source linkage, transcript security, low-degree testing, or witness hiding. A polynomial-commitment opening protocol and reviewed challenge construction must replace the coefficient-backed linkage before this could contribute to a proof system.

The modular arithmetic helpers are test-local to avoid expanding this bounded fixture into unrelated precision-library diagnostics. Canonical addition is safe because `2p < 2^32`; multiplication uses modular double-and-add, whose intermediate additions satisfy the same bound. The independent BigInt oracle exercises the arithmetic through the relation fixtures. Production integration should use the shared BabyBear field abstraction.

An expected-accept adversarial fixture makes the missing binding concrete: after seeing a valid challenge z, a prover chooses T = 0, boundary quotient = 0, and the constant transition quotient `-1/Z_transition(z)`. This satisfies the single OOD check even though the recurrence is false on every constrained row. The driver requires this acceptance, documenting that coefficients and quotient commitments must be fixed before the challenge. Rejection cases cover particular fixed mutations; they do not establish a general soundness claim.
