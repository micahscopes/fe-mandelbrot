# Array fixed-point arithmetic

`precision::array_fixed::ArrayFixed<L>` is a signed fixed-point value with
private canonical radix-8192 digits, for widths2..10. Camera differences use
117 fractional bits; reference recurrence uses91. It implements Add, Sub,
Neg, Mul and representation Eq. Reference buffer layouts remain unchanged.

## Numerical contract

- Magnitude is an integer times8192^(-(L-1)); magnitude arithmetic wraps
  modulo8192^L.
- Canonical digits are below8192. Invalid widths/digits and nonfinite or
  out-of-range binary32 inputs are rejected.
- Binary32 input conversion decodes integer bits and quantizes toward zero.
  It does not depend on floating reassociation or denormal retention.
- Expansion conversion adds all four words in their original order, then
  positive zero. Opposite-sign cancellation retains the left zero sign.
- Multiplication rounds discarded magnitude half upward, retains L digits,
  and uses the XOR sign, including signed zero. Each MAC fits in26 bits.
- Scalar projection uses integer round-to-nearest, ties-to-even. Reference
  packing uses four fixed descending24-bit windows, preserving empty slots.
  These are different observations; packing is not successive scalar rounding.
- Escape remains strict magnitude greater than4, including a nonzero
  fractional suffix at4.

All arithmetic and indexing remain checked. Source loop bounds and canonical
values keep intermediate arithmetic withinu32. No float EFT, wrapping switch,
unchecked indexing or hand-edited production WGSL is used.

## Checks

```sh
python tests/frame-array-difference/oracle.py --out /tmp/array-oracle.json
fe test tests/frame-array-difference --grouped --jobs 1
fe test app/renderer --grouped --jobs 1 --filter reference_step
```

The modeled arithmetic oracle covers476820 observations. Actual Fe tests
compare old recursive and array operations, including multiplication at
widths2/8/10, both zero signs, carry/rounding boundaries, displacement, exact
binary32 conversion vectors and reference checkpoints. See
[the actual-GPU reference probe](../reference-kernel/README.md) for runtime
word, escape and packing checks against independent integer expectations.
The separate frame-array-difference-wasm fixture also compares complete
float-input paths with independent Fraction expectations.

Build and pipeline receipts are separate from numerical evidence. Earlier
experiments, failed compiler histories and the first incorrect packing oracle
remain in Git or in the lab's dated scratch receipts. Neither source size nor
software-GPU timings establish a physical Pixel fix.
