# Array-native frame differences

This candidate starts at main `10d7495`, with none of the earlier mask,
multiply-loop, leading-bit or word-window experiments. Only renderer
`cache::center_delta` selects the new interpretation. Reference arithmetic,
packing, all resource layouts and precision limits remain unchanged.

`precision::array_fixed::ArrayFixed<L>` is a whole signed fixed-point value
with private canonical radix-8192 digits and `2 <= L <= 10`. It implements
ordinary `Add`, `Sub`, `Neg` and representation `Eq`; there is no multiplication
or new generic arithmetic framework. The existing binary32 projection body
is shared through `fixed::project_binary32<V: Binary32View + Copy>`; the old
`to_f32_bits<L>` signature and its operation order remain intact.

## Exact contract

- The magnitude denotes an integer times `2^(-13*(L-1))`. `L=10` preserves
  the existing 117 fractional bits and accepted minimum camera zoom.
- Constructor digits must be below 8192. Malformed digits, invalid widths,
  nonfinite float sources and `abs(source) >= 8192` are rejected. This new
  type makes no promise to emulate old helpers outside their valid domain.
- A finite binary32 source is quantized toward zero independently. Integer
  exponent/significand decoding equals the old repeated integer-part / radix
  extraction. It does not require floating EFTs, round modes or denormal
  retention. Both input zero encodings parse positive zero; a negative nonzero
  value below the lattice retains a negative zero internally.
- Four expansion words are added in their original left-associated order,
  followed by positive zero, exactly as `from_qf_offset(..., 0.0)`. No
  non-overlap assumption or reassociation is used.
- Same-sign addition wraps magnitude modulo `8192^L`. Opposite signs subtract
  the smaller magnitude and keep the larger's sign; equal magnitudes keep the
  left sign. Subtraction negates the right sign before addition. Thus signed
  zero is retained, and representation equality distinguishes its sign.
  These are the existing kernel's rules, not a claim of a new field/group law.
- Projection is integer round-to-nearest, ties-to-even, including guard,
  sticky and significand carry. Zero projects to positive zero. All nonzero
  values at these widths project to normal finite binary32 numbers.

All arithmetic remains checked. Canonical sum and biased-difference
intermediates fit in 14 bits; every borrow/carry is zero or one. Skipping the
old unused alternate add/sub branches cannot remove a valid-input trap,
because those branches also cannot overflow on canonical digits. Array
indices and counters are bounded by ten. Every loop header is a plain
comparison (or conjunction of comparisons), with checked increments inside
the body. Signed bit positions are checked before conversion to array indices;
bit shifts stay in 0..31. Two private conversion helpers assert the source
range before a same-width u32/i32 bitcast. All runtime counters are u32;
`as usize` only widens at array indexing. The const array dimension uses a
range assertion followed by the existing intrinsic truncation, as in the
gesture library's capacity boundary. Widths are bound before loop headers.
No wrapping switch or unchecked indexing is used.

## Evidence and execution gates

The independent Python oracle compares the original recursive arithmetic,
the array algorithm, and exact integer/Fraction meaning. It includes every
width 2..10, 19,296 binary32 quantizations, 151,416 signed arithmetic cases,
49,140 projections, 4,608 ordered expansion differences and 252,360 windows:
**476,820 observations pass**. This is modeled evidence, not compiled Fe.

```
python3 tests/frame-array-difference/oracle.py \
  --out /tmp/frame-array-INTEGER-RECEIPT.json \
  --runtime-cases /tmp/frame-array-RUNTIME-CASES.json
```

The eight actual Fe test fixtures cover old/new arithmetic and projection at
L2/L8/L10, signed zero, 2^-95/2^-117 displacement, guard/sticky/tie/carry cases,
and 132 generated exact-rational binary32 conversion vectors. Regenerate
those checked-in vectors by additionally supplying
`--vectors tests/frame-array-difference/src/conversion.fe`.

```
fe check tests/frame-array-difference
fe test tests/frame-array-difference --jobs 1
```

No f32 instructions occur in those integer tests. A separate actual Wasm
fixture calls both complete old and new float-input paths, observes their
binary32 results, and compares 2,668 runtime cases against independent
Fraction expectations. Its JavaScript only transports bits and checks outputs:

```
fe web build tests/frame-array-difference-wasm --out /tmp/frame-array-wasm
node tests/frame-array-difference-wasm/verify.mjs \
  /tmp/frame-array-wasm /tmp/frame-array-RUNTIME-CASES.json \
  /tmp/frame-array-WASM-RECEIPT.json
```

Then rebuild the actual renderer. Run the existing camera-difference Wasm
gate, exact camera-state traces and default/deep GPU oracles; compare resource
manifests and reference/orbit bytes. Inspect pass001 for removal of recursive
L10 arithmetic/projection; pass002 still intentionally uses recursive L8
reference arithmetic. Measure both native pipeline creations with the same
zero-app-buffer procedure. Neither WGSL byte size nor modeled arithmetic
alone establishes a driver improvement or a physical Pixel fix.

The first actual renderer, native-test and Wasm build attempts all stopped
at the same nine frontend lossless-cast diagnostics in `array_fixed.fe`.
The checked-downcast follow-up passed all eight actual Fe tests, but both
renderer and Wasm lowering rejected its reachable `IntWord::from_word(u256)`
signature. The next source checkpoint replaces only that conversion route
and runtime counter width with explicit checked scalar boundaries. Its
renewed compiled/GPU gates are pending; both failed histories are preserved.
The lead owns those gates and the source-viewer/catalog addition for the new
module. Previous failed experiments and receipts remain intact.
