# Experimental bit-weight argument oracle

Independent Rust implementation of the test-only `TOY-BITS-CONTRACT.md` at
contract commit `f8d2d37`. This is a non-hiding, small-parameter argument. It is
not a production proof format, a zero-knowledge proof or a security-bit claim.
The verifier accepts only a public weight and proof words, without a witness.

The arithmetic uses Plonky3 0.6.3 BabyBear and its degree-four binomial extension.
Polynomial evaluation and interpolation use direct quadratic-time formulas, not
the Fe implementation or its FFT. The domain controls are n=8, D=32 and coset
shift 31. Tests check root mapping and u⁴=11 explicitly. The argument follows
the contract's constraint multipliers, separate single-point DEEP quotients,
commitment-before-challenge order and binary FRI ending at a constant.

Hashing follows the public interoperability reference in
`tests/oracle-rust/src/lib.rs`: the Poseidon2 width 16 permutation, rate 8,
overwrite absorption of `[big_endian_tag, field_count, fields...]`, and digest
compression without an additional tag. A partial final block retains prior
state in positions that are not overwritten. All tags and input words must be
canonical BabyBear elements. This is interoperability, not a hash-injectivity
claim. Merkle paths are bottom-up natural-index paths; a zero index bit places
the current node on the left. High index bits are rejected.

Run only this crate, with builds outside the checkout and two compiler jobs:

```sh
export CARGO_BUILD_BUILD_DIR=/lab/argot/scratch/mb2-bits-oracle-20261023/build
export CARGO_TARGET_DIR=/lab/argot/scratch/mb2-bits-oracle-20261023/target
cargo test --offline -j2 --manifest-path tests/toy-stark-oracle/Cargo.toml
cargo run --offline -j2 --manifest-path tests/toy-stark-oracle/Cargo.toml \
  -- fixtures > /lab/argot/scratch/mb2-bits-oracle-20261023/fixtures.json
```

The JSON document contains `metadata` and `cases`. Each case has `name`,
`statement`, `expectedStatus` and `proof`, an array of canonical u32 words
(except intentional malformed cases). A browser driver must encode each word
little-endian. Normal proofs contain 2456 words. Truncated and extended fixtures
exercise exact-length checks. Diagnostics and degree summaries go to stderr.

Fixtures cover four honest witnesses, changed/false statements, repaired OOD
answer forgery, adaptive zero commitments, excessive source degree, unrelated
composition, authenticated wrong FRI folds, wrong final constant, altered paths,
noncanonical words/public input and wrong lengths. Expected statuses are those
of this fixed transcript, not a universal rejection guarantee. Tests additionally
exercise capped sampler branches, valid base-field OOD points, every initial
pair index and duplicate queries. The verifier never accepts injected challenges.

The non-succinct audit checks source/composition/layer degrees, the composition
formula at every domain point, every path in each committed table, coefficient
fold identities and the final constant. The audit is prover-side test evidence,
not a path accepted by the verifier and not a soundness measurement.
