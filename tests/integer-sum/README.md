# Integer-defined binary32 addition

This probe tests `precision::integer_sum` independently of the floating expansion
primitives. Both sum and residual are constructed through integer bits, with
nearest-even rounding, canonical zero tails, and explicit overflow/nonfinite
behavior. It does not change the renderer's arithmetic or certify the remaining
expansion operations.

```sh
python3 tests/integer-sum/corpus.py /absolute/scratch/integer-sum-cases
/path/to/fe web build tests/integer-sum --out /absolute/scratch/integer-sum-bundle
PLAYWRIGHT_MODULE=/absolute/path/to/playwright-core/index.mjs \
  node tests/integer-sum/gpu.mjs \
  /absolute/scratch/integer-sum-bundle \
  /absolute/scratch/integer-sum-cases/INTEGER-SUM-CORPUS.json \
  /absolute/scratch/integer-sum-results
```

The4096-case independent rational corpus includes random finite operands,
subnormals, zeros, exponent-gap25 boundaries, rounding ties, carry, overflow and
nonfinite inputs.256 batches reuse one pipeline, bind group and readback buffer.
The runner saves every input and output plus hashes before asserting exact
head/tail bits. Old floating split results remain separate diagnostic evidence;
they are not included in the integer addition acceptance claim.

The isolated normal-CLI implementation passed all4096 actual Chrome155/AMD GPU
cases, without shader, validation or trap errors. This maintained ingot directly
imports the same helper. Composed recurrence, continuation partition, color
accuracy, performance and physical-phone behavior still require separate gates.
