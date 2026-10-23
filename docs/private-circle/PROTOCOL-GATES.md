# Path from local checking to a private proof

Status: experimental implementation sequence, not a complete protocol or a
zero-knowledge claim. Existing deployed artifacts remain unchanged.
Base application: `c9908bc0f5889f10fef800da8a9e6add39e314e4`.

## Meaning to preserve

Public input identifies a profile, independently drawn region, claim and public
iteration budget. Private input is an exact dyadic point and a computation or
boundedness certificate. The verifier receives only public input plus proof.
Circle containment is closed; escape requires a strict lower bound above4.
No escape within N is distinct from bounded forever. Failure to establish a
claim is Unknown. A persistent point commitment is an optional additional
statement, not a prerequisite for the existential statement.

All application, prover and verifier implementation stays in Fe. JavaScript,
Python and Rust are permitted as independent test drivers/oracles, not runtime
application replacements. GPU placement remains a required integration gate.

## Gate1: execute the algebraic boundary in Fe

Use a four-row toy recurrence and independent interpolation oracle. Let H be the
fourth roots of unity, generator g, and l=g^3 the last row. T(gX)-T(X)-1 vanishes
on H except l; its divisor is Z_trans=(X^4-1)/(X-l). Boundary T(1)=0 has divisor
X-1. At z outside H and the evaluation coset, check:

    T(gz)-T(z)-1 = Z_trans(z) * Q_trans(z)
    T(z) = (z-1) * Q_boundary(z)

Specified inconsistent shifted openings, fixed unrelated quotients, incorrect
boundaries and forbidden points must fail in the emitted Fe/Wasm. This is not
a statement about arbitrary adaptively chosen polynomials. For this isolated exercise, source
values are checked against explicit polynomial coefficients. This is a test
oracle, NOT a polynomial commitment, succinct proof, DEEP-ALI or ZK protocol.
Base-field test challenges do not establish extension-field security.

An explicit EXPECTED-ACCEPT limitation fixture chooses T=0 and Q_boundary=0,
then after seeing z sets Q_trans=-1/Z_trans(z). The arithmetic equations pass
although every transition row is false. This demonstrates why fixed source and
quotient commitments must PRECEDE the challenge. Coefficient consistency at one
point does not fix that missing chronology. Rejecting a few fixed wrong values
must never be reported as a soundness result.

## Gate2: replace coefficient access with an authenticated polynomial opening

Before committing to a receipt format, specify and independently review:

- trace and auxiliary LDE commitments; column order, row encoding and phase;
- extension challenge field, domains, cosets and forbidden challenge points;
- constraints, zerofiers, numerator/quotient degrees and chunk reconstruction;
- openings for each source at z and each required shift such as gz;
- batched DEEP quotient and its degree, authenticated query values, FRI schedule,
  terminal polynomial and transcript order;
- profile and public-input encoding before interaction challenges; canonical
  encodings, rejection sampling and deterministic duplicate-query handling.

Commit to the source LDE before the relevant challenges. Commit to auxiliary
columns after their interaction challenges. Sample AIR batching alpha only after
all challenged trace phases are committed, and before quotient commitments.
Commit to quotient chunks before z.
Absorb the claimed out-of-domain values before sampling their batching challenge.
FRI queries must verify both source openings and the matching DEEP relation.
A low-degree composition alone must not substitute for low-degree source binding.

The concrete multipoint opening and quotient/chunk reconstruction construction
is still UNSELECTED. The multipoint quotient in DEEP-ALI and independently
batched single-point quotients are not interchangeable merely because both use
OOD points. Name one exact construction and map its theorem/hypotheses to the
source/shift degree ledger before implementing the PCS format. Name whether
the target is interactive soundness, Fiat-Shamir computational soundness,
knowledge soundness and/or computational/statistical zero knowledge, with each
model and assumption; honest transcripts do not supply those arguments.

Use a tiny complete nonprivate argument first: statement plus proof only, no
full trace/table/coefficient disclosure and no replay. Validate both honest and
intentionally inconsistent traces/openings. A small toy profile has no production
security claim. Byte-identical scalar/GPU transcripts under a test seed are an
integration test, not a soundness argument.

## Gate3: hiding on the same complete toy argument

Select ONE published construction and reproduce its assumptions before porting.
Read the complete masking and quotient-decomposition treatment, then review its
mapping to our actual AIR and proof format. Maintain a ledger for every base-
field and extension-field disclosure, including shifted openings, quotient
chunks, all FRI layers and the final polynomial. No independent numeric security
claim is adopted from the old demo.

The pinned Plonky3 hiding PCS at208b647 is a reference with executable checks:
its conservative requirement uses mask height M, distinct from the Mandelbrot
iteration budget N: M>=2*(queries+extension_degree*opening_points), at least extension_degree random codewords, hiding input AND
FRI commitment schemes, unpredictable cryptographic seeding, and single-use
private opening data. These are requirements of that implementation and do not
by themselves specify our STARK. Its source explicitly says they do not replace
STARK randomization or out-of-domain sampling.

Implement fresh entropy through a generic Fe host capability; deterministic
seeds only belong in test harnesses. Mask private auxiliary columns as well as
main columns. Randomize quotient decomposition and the FRI batch according to
the selected construction. Unsalted leaf hashes are not a hiding commitment.
Independent review covers the ENTIRE verifier view and the selected theorem,
not just trace masking. Pad the tiny test trace to a separate public domain
large enough for the chosen disclosure budget; the four-row algebra fixture is
not automatically a feasible hiding profile. Fixed public profiles and padded execution keep escape
index, data shape and mask reuse out of the exported witness interface.

## Gate4: exact Mandelbrot constraints

Start with a bounded fixed-precision profile whose constraints prove an enclosure
of the EXACT recurrence, not merely a rounded recurrence. Compare all arithmetic
against the existing exact oracle. Enforce limb ranges, signedness, carries,
comparison, outward error bounds and strictly positive region sizes. Derive the
field/no-wrap bound for each accumulator; native13-bit limb arithmetic is not
automatically a valid BabyBear constraint. Choose limb width or split partial
sums from a checked ledger. Test circle/box boundary equality and c=-2.

Then implement and validate the public-reference perturbation identity. Public
reference validation is explicit work; a reference hash is insufficient. A
public scaling schedule and ball arithmetic require separate correctness and
cost experiments. Designated positive deep fixtures (including i+2^-1024 at a sufficient public
precision/budget) must actually certify and agree with the existing interval
checker. Boundary/insufficient-precision cases may return Unknown; returning
Unknown for everything must fail acceptance. Exponent range alone is not
evidence of useful deep precision. Keep direct and perturbation arithmetic semantically equivalent.

Bounded-forever certificates form a separate relation profile, initially the
existing sufficient certificates. General attracting-cycle certificates and
recursion are later extensions; neither is needed to finish private escape.

## Gate5: GPU and viewer acceptance

Move validated transforms, salted Merkle construction, FRI and AIR evaluation
onto generic GPU kernels. Preserve same-source Fe scalar reference execution.
Measure cold code/module startup separately from shader compilation, warm
proving, public-reference validation and Wasm verification. Record dimensions,
precision, rows/columns, degree/blowup, proof bytes and Unknown outcomes.

Integrate export/import into the existing independent point/region selection.
Inspect serialized proof and verifier request: no point, trace, full composition,
private reference or escape index. Execute a fresh hardware-browser round trip.
The Sonatina shared-loop-return repair is a compiler prerequisite candidate;
its performance improvement is measured separately from protocol correctness.

## Primary sources and unresolved access

- [DEEP-FRI / DEEP-ALI](https://arxiv.org/abs/1903.12243), especially the ALI
  construction. Primary abstract retrieved2026-10-23; full construction still
  needs a recorded read and protocol mapping.
- [Haboeck-Kindi](https://eprint.iacr.org/2024/1037), small-field masking and
  quotient decomposition. Abstract retrieved; full PDF request still returns403.
  Indexed excerpts do NOT discharge the full-paper review gate.
- [Pinned Plonky3 hiding PCS](https://github.com/Plonky3/Plonky3/blob/208b64744cf56fe8eeb6afcb7be37ed669d9d6eb/fri/src/hiding_pcs.rs).
  Local reference bytes and SHA are recorded in reference-sources.json.

No production format, parameter set, ZK theorem or proof timing is accepted by
this plan. Each gate produces executable evidence and a separately reviewed
protocol decision before moving to the next.
