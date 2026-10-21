# Numerical correction baseline

The compiler bitcast repair and reference-origin correction changed some settled
Mandelbrot history values. The old default512 oracle was
`f65af2c90be815c577f481fdeeb22491bd0f844f92b1a78594d1e3f5ea8bbe12`.
The corrected oracle is
`75cf6799dcc7c405db672d54a0a7abf3c2c72b43b7e3bb48efdf3114cb3e6f1d`.

These receipts examine every changed default/deep tuple in actual128×128 and
512×512 production GPU captures. Independent Decimal iteration at80 and120 digits
agrees. No changed sample introduces an escape/iteration disagreement or increases
iteration error. In the default512 view, pixel(255,276) correctly escapes at1333
rather than1332. The128 deep view also corrects one false escape. Approximate deep
iteration residuals remain: one iteration in the changed128 samples and five in
the changed512 samples. This is a bounded regression check, not a proof of every
pixel, escape magnitude, accepted zoom depth, or physical-phone behavior.

Regenerate a receipt from the binary captures produced by the production runner:

```sh
python3 tests/numeric-oracle.py /absolute/production-captures /tmp/oracle.json
```

The compact-only checkpoint passed strict old/new image comparisons before these
numerical changes. The production runner deliberately retains strict equality;
a comparison spanning a numerical correction must preserve that failed receipt
and assess the changed samples independently rather than report it as an exact
parity pass. Within-build snapshot/AA/reference/visibility invariants remain exact.
