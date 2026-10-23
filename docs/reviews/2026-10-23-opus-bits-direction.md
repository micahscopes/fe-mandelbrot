# Opus-guided bit-weight argument: review disposition

Requested model Opus, explicit alias through Claude Code print mode, high effort.
Read-only raw report: `/lab/argot/scratch/mb2-zk-protocol-direction-20261023/RAW-REPORT.md`.
Request/source snapshots are retained alongside it. No tests were run by Opus.
Astra/high independently read ethSTARKv1.2 §§3.9,5.3–5.4 from the primary PDF
text extraction and reviewed the proposed profile and transcript. Neither
review audited complete theorem proofs or established security parameters.

Disposition: ACCEPT FOR TEST-ONLY IMPLEMENTATION, oracle → Fe verifier → Fe
prover. Not production-format, soundness-bit, knowledge/FS or ZK acceptance.

The corrected implementation contract is `docs/private-circle/TOY-BITS-CONTRACT.md`
atf8d2d37. It pins all16 domain tags, the exact2456-word layout, capped samplers,
canonical decoding, status order, single-point quotient equations and FRI path
indices. Astra checked these concrete choices separately and found no blocking
error. It also verified the degree ledger (6,0,6,6), corrections(1,7,1,1),
virtual initial FRI layer and32→16→8→4 constant-terminal chain against source.

Corrections to the immutable raw report:

- Valid base-field OOD points outside0/H/D must be accepted.
- Query counters0..15, OOD counters0..7, explicit status2 exhaustion and uniformity
  conditional on ideal-random sampling success; capped aborts are not perfect
  completeness.
- ethSTARK chunks recompose as sum X^k P_k(X^a), not consecutive coefficient
  blocks; the distinction is masked only by split factor1 here.
- The whole proof depends on the witness. Only the INPUT boundary excludes a
  private witness/full trace/coefficient input; non-hiding queries can disclose
  or reconstruct it. Eight queries with replacement need not be distinct.
- Staged APIs must really consume private non-Copy stages if enforcement is
  claimed. The current implementation may instead document one sequenced
  derivation, without a type-enforcement claim.
- Inconsistent fixtures are concrete changed cases with oracle-predicted results,
  not universal rejection claims or estimates of soundness.
- Enlarging a hiding domain must preserve the relation by constraints or an
  explicitly changed public profile; honest zero padding is not enough.
- Hiding-paper extraction is now available, with malformed math spans; its
  theorem and implementation mapping remain unreviewed. Encoding unambiguity
  must not be confused with injectivity of a cryptographic hash.

The two-bit-column AIR is useful machinery for the complete private-region
objective, not a substitute for limb/carry/rounding/region and Mandelbrot
constraints. Every later hiding/interaction/decomposition change needs a new
independent protocol review. Existing application/demo remains unchanged.
