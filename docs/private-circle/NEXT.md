# Delivery sequence

The working viewer/prover integration remains at `feat/viewer-prover-workspace`.
New development is isolated on `feat/private-circle-proof`, based on `e4ee74e`.
Astra (gpt-6-astra, high, Codex collaboration) independently reviewed the proposed
relation, arithmetic model and architectural direction on2026-10-22. Its raw
review packet/reports are retained separately in
`/lab/argot/scratch/mb2-private-circle-20261022/review`.

## Current executed checkpoint

- Independent dyadic/interval and algebraic-link models:12 tests pass. This
  includes2,000 signed rounding cases and500 interval-extrema cases against a
  separate exact `Fraction` oracle; these are samples, not formal verification.
- Deep-offset probe: `i+2^-1024` certifies escape by iteration821 at256 mantissa
  bits;128 bits yields Unknown within2080 iterations. `i+2^-4096` certifies
  escape by3285 at4096 bits. The public circles contain these exact points.
  Receipts record strict norm lower bounds and maximum coordinate widths.
- Toy algebraic-link tests reject81 false outside-point opening claims by exact
  interpolation. They are not an authenticated proof system or a production
  soundness bound.
- Experimental Fe scalar-word probe starts the numerical boundary: one runtime
  MAC loop supports20/316 active13-bit limbs, and canonical dyadic validation
  separates exponent limits from mantissa/top-limb bounds. This is not yet full
  multiplication, directed rounding, an AIR gadget, or a certificate checker.

## Next Fe numerical slice

1. Keep explicit scalar-word storage and runtime active lengths. The first
   bounded profile has320 limb capacity;20/316 active limbs accommodate256/4096
   significant bits only when the top limb is constrained. Changing resource
   profiles must preserve exact-dyadic meaning.
2. Implement bounded signed arithmetic, carry/remainder retention, outward
   rounding and interval operations. Check against the independent model.
3. Implement the exact-reference and checked-residual perturbation steps, circle
   test and strict escape. Unknown must propagate when enclosures overlap.
4. Execute the same source at both precision sizes and an exponent beyond IEEE
   range. Measure code bytes, operation/row counts, memory and time before
   scaling. Fe EVM tests alone do not establish Wasm or GPU parity.

## Cryptographic slice, developed against that relation

1. Pin/read the full selected masking construction and exact reference source.
   Plonky3 reference revision is in `reference-sources.json`; this is a reference,
   not an endorsement or a new application dependency. Official access to the
   full Haboeck–Kindi PDF returned403; indexed excerpts do not discharge this gate.
2. Specify a complete tiny AIR/DEEP argument, including authenticated source
   openings, degree bounds, forbidden points and transcript ordering. Challenge
   it with a false trace plus unrelated low-degree composition, incorrect shifted
   openings and altered public inputs. Keep deterministic exhaustive checks
   separate from sampled FRI acceptance.
3. Select one published hiding construction, quotient decomposition and FRI PCS;
   enumerate the complete degree/disclosure budgets and assumptions. Independent
   protocol review must precede production parameter/format commitment.
4. Port a short complete private proof to Fe. Verifier input is ONLY the public
   statement plus proof. No private coordinate, witness, full composition table
   or replay. Masking uses fresh cryptographic randomness and hides the full
   verifier view, including FRI—not only trace columns.
5. Move validated operations onto generic GPU kernels, then integrate exact
   anchor/offset selection in the viewer. Old Q12 timings do not predict this
   new workload. Keep current demo available throughout.

Persistent point identity, reusable reference proofs, certified block/series
skipping, recursion and bounded-forever certificates are later extensions. None
may weaken the exact orbit relation or silently reuse private PCS masks.

This sequence is implementation direction, not a claim that ZK, succinctness,
arbitrary-depth UI support or universal boundary classification is complete.
