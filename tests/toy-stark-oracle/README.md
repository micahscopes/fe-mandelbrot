# Toy argument arithmetic oracle

Independent Rust prework for the small bit-weight argument. This crate defines no
proof layout, transcript, verifier, privacy guarantee or soundness bound.

The arithmetic uses Plonky3 0.6.3 BabyBear and its degree-four binomial extension.
Polynomial evaluation and interpolation use direct quadratic-time formulas, not
the Fe implementation or its FFT. The fixed domain controls are n=8, D=32 and
coset shift 31. Tests check the root mapping and the relation u⁴=11 explicitly.

Hashing intentionally follows the public interoperability reference in
`tests/oracle-rust/src/lib.rs`: the Poseidon2 width 16 permutation, rate 8,
overwrite absorption of `[big_endian_tag, field_count, fields...]`, and digest
compression without an additional tag. A partial final block retains the prior
state in positions that are not overwritten. This is an interoperability choice,
not a claim that arbitrary framing is collision free. Tags and all input words
must be canonical BabyBear elements.

Run only this crate, with build products outside the checkout:

```sh
CARGO_BUILD_BUILD_DIR=/lab/argot/scratch/mb2-bits-oracle-20261023/build \
CARGO_TARGET_DIR=/lab/argot/scratch/mb2-bits-oracle-20261023/target \
  cargo test --offline -j2 --manifest-path tests/toy-stark-oracle/Cargo.toml
```

Merkle leaves are caller-supplied digests. Paths are bottom-up, natural-index
binary paths; a zero index bit places the current node on the left. Verification
rejects out-of-range indices rather than silently discarding high bits.
