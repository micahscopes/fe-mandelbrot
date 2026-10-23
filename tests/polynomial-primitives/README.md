# Polynomial arithmetic regression

`precision::polynomial::evaluate_coefficients` evaluates ascending-order coefficients by Horner's rule. `divide_by_linear` returns Q and r such that `P(X) = (X-z)Q(X)+r`. Both use the existing `Radix2Field` arithmetic interface without requiring a radix-2 domain. Both helpers require at least one coefficient. A single zero coefficient represents the zero polynomial. The quotient retains the input capacity, with its highest coefficient zero; constant inputs therefore return a zero quotient. Division uses no inversion.

The canonical test fixture instantiates the helpers for BabyBear and BabyBearExt4. The independent Node BigInt oracle uses `p = 2013265921` and the extension relation `U^4 = 11`. Tests include non-base coefficients and evaluation points, zero and constant polynomials, leading zeros, degree three, near-modulus inputs, polynomial reconstruction, and incorrect claimed evaluations. Arithmetic runs in Fe; Node supplies fixtures and assertions.

From the repository root, using the pinned Fe compiler and a fresh output path:

```sh
fe web build tests/polynomial-primitives --out /lab/argot/scratch/mb2-polynomial-example --entry wasm_anchor --mode render --canonical required --canonical-entry inspect_ext4 --canonical-entry inspect_base
FE_POLYNOMIAL_BUNDLE=/lab/argot/scratch/mb2-polynomial-example node tests/polynomial-primitives.mjs
```

The Ext4 fixture rejects noncanonical coordinates. The base-field fixture accepts u32 inputs through the shared field constructor and is only an arithmetic test interface. These helpers provide no commitment, transcript, polynomial-commitment protocol, or proof system.

Both APIs enforce `N > 0` as a const predicate. A preliminary zero-capacity fixture caused a MIR lowering panic in the pinned compiler because its mutable quotient storage was erased before an indexed write was lowered. That failed run is preserved in the scratch build log; it is outside this arithmetic change's compiler scope. No compiler fix or zero-capacity division support is claimed.
