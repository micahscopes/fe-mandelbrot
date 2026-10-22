# Independent private-circle arithmetic experiments

These standard-library Python models test the proposed numerical meaning before
implementing Fe constraints or choosing proof parameters. They generate **no ZK
proof**, provide no privacy, and are not used by the browser.

```
python3 -m unittest discover -s experiments/private_circle -v
python3 experiments/private_circle/depth_probe.py
```

`dyadic.py` represents endpoints as signed integer mantissa times a binary power.
Directed rounding uses bounded shifts instead of materializing the exponent gap.
Intervals and complex boxes enclose exact arithmetic. Shared anchors are cancelled
before circle tests. Both enclosed-reference and residual-corrected sampled
perturbation implement the same exact Mandelbrot recurrence. Tests use a separate
`Fraction` oracle at small sizes, including signed rounding, cancellation, complex
orbits, strict escape, forged references and ambiguous circle boundaries.

`depth_probe.py` uses the exact periodic reference at `i` and hidden-offset-model
points `i + 2^-k`. At k1024,128-bit mantissas yield Unknown within the bounded run;
256-bit mantissas certify escape. At k4096,4096-bit mantissas certify escape.
These are selected arithmetic cases, not universal depth/performance guarantees,
not first-escape-time proofs, and not GPU/proof timings. The separate billion-bit
exponent stress test establishes representation range, not billion-bit fractal
resolution. Arbitrary high-information centers still cost coordinate bits.

`test_algebraic_link.py` independently interpolates toy finite-field tables. It
shows why valid pointwise division does not imply constraint divisibility and why
an unauthenticated out-of-domain claim is not an opening of a committed polynomial.
Honest opening quotients have the derived degree; forged claims violate it in the
exhaustively checked small instances. This is NOT a PCS, FRI implementation,
production exploit, soundness bound, or security/privacy proof.

See [the proposed relation](../../docs/private-circle/RELATION.md) for the public
statement, private witness, architecture and remaining proof gates.

The optional `limb_probe.fe` / `run_fe_probe.py` experiment stages a standalone
Fe ingot into a **new** scratch directory using an existing pinned compiler/core
(and its sibling std). See the runner's help for arguments. It checks runtime
20/316-word multiply-accumulate loops, canonical signed dyadic encodings,
precision top limbs and explicit exponent limits. It is not the full Fe
arithmetic/certificate port. No compiler rebuild or application asset change is
needed. The Python-only CI jobs do not run this compiler experiment.
