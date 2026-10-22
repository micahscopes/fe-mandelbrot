# Private point, public circle, certified escape

Status: proposed mathematical relation and implementation boundary. This is NOT
an implemented ZK protocol. The working browser remains the nonprivate Q12 demo.
Baseline: `e4ee74e22d2dee7d6ed59adfa5fb454f52239f32`.

The target statement is: **I know an exact dyadic complex point in this public
closed circle whose exact Mandelbrot orbit escapes within the public budget.**
A future implementation must prove knowledge of that point, not merely an
unbound low-degree polynomial or a successful rounded simulation.

## Meaning before representation

For public center `C`, radius `r >= 0`, and iteration budget `N`, a witness
contains an exact offset `d`, so `c = C + d`, and a finite arithmetic certificate.
The relation requires `|d|^2 <= r^2` and `z[0]=0`, `z[n+1]=z[n]^2+c` with
`|z[k]|^2 > 4` for some `k <= N`. The circle is closed. Escape is STRICT: using
`>= 4` would incorrectly accept the bounded orbit at `c=-2`.

The certificate need not materialize exact rational orbits of exponentially
growing bit length. It supplies finite outward enclosures proving those facts.
A verifier of the relation checks enclosure-preserving local arithmetic. Failure
to certify means Unknown, never Mandelbrot membership or convergence.

First public inputs:

- Protocol/relation version and arithmetic/work profile.
- Exact dyadic center and nonnegative radius, with canonical encodings.
- Maximum iteration budget and public resource limits.
- Optional separate hiding commitment identifying the same secret point.

Private witness:

- Exact offset (or equivalent exact point representation, linked algebraically).
- Reference/error/residual certificates as required by the chosen profile.
- Orbit enclosures, arithmetic carries/range witnesses and escape certificate.
- Opening randomness if a separate point-identity commitment is used.

No raw point, witness tape, intermediate orbit, or exact escape time need become
public. Public work profiles and reference choice can themselves reveal
information; padding and reference reuse must be intentional and documented.
A prover may return no proof/Unknown; the verifier accepts only a valid proof of
the positive escape statement. This does not implement private nonmembership in
an arbitrary language, nor boundedness forever.

## Extreme depth is part of the relation

Exact scalars have meaning `m * 2^e`. Separate signed exponent range, significant
mantissa bits, coordinate information and iteration count. A compact exponent
can represent a tiny offset without allocating a billion zero bits. It cannot
compress an arbitrary billion-bit center or guarantee fixed-cost resolution of
all boundary features. No single finite profile supports literally unlimited
precision; profiles must admit larger limb/exponent/work budgets without
changing the meaning of the statement.

Use reference-relative coordinates; subtract common anchors BEFORE rounding.
Circle membership is evaluated from the offset, not by subtracting two rounded
absolute positions. Field arithmetic alone does not give integer comparison:
limb ranges, signs, carries, exponent bounds, normalization and comparison must
be constrained so modular wraparound cannot satisfy a false distance inequality.

The prototype's endpoint arithmetic uses directed integer rounding. Each
operation encloses its exact real result. Complex interval boxes are sound but
can widen unnecessarily due to lost dependencies. More precision, rebasing or a
better enclosure representation may be needed; these change cost, not meaning.
No heuristic glitch threshold may narrow a mathematical enclosure.

## One local law for rounded references

Choose samples `A[n]` associated with the public center `C`. Define

```
rho[n] = A[n]^2 + C - A[n+1]
delta[0] = 0                         # require A[0] = 0

delta[n+1] = 2*A[n]*delta[n] + delta[n]^2 + d + rho[n]
z[n] = A[n] + delta[n]
```

These identities hold for ANY samples, including rounded or poor references.
The certificate must enclose/check each residual. Ignoring reference error,
dropping a nonlinear term, or supplying an unvalidated reference hash does not
satisfy the law. Exact-reference enclosures and residual-corrected sampled
references are two routes to the same mathematical orbit, not separate claims.
A public reference should be chosen independently of the private location;
the circle center is the initial policy. Public reference validation can
potentially be amortized, but the proof must bind the validated reference.

## Architectural boundaries

1. **Relation/certificate:** exact point, circle and escape meaning, with local
   enclosure laws and explicit bounds. Independent executable oracle here.
2. **Arithmetization:** integer/limb/rounding constraints implementing those laws.
   This replaces the Q12-specific relation rather than silently rebranding it.
3. **Proof protocol:** complete algebraic linking, hiding commitments/FRI,
   transcript, degree/disclosure ledger and soundness/privacy argument. Current
   receipt format is not this protocol. A published construction must guide it.
4. **Placement:** CPU/reference work, generic GPU limb kernels, Fe/Wasm checking.
   Precision is runtime bounded data where practical, not a separately unrolled
   shader family for every depth. This is a design target, not measured yet.
5. **Application:** viewer selection, public circles, local secrets and proof
   exchange. No witness/debug tape exported with a purported private proof.

A separate randomized point commitment may identify the same point across fresh
proofs. A masked polynomial/trace commitment is NOT automatically reusable across
queries. Unlimited precise circle answers can locate a point even if each proof
is ZK; answer leakage is part of the application contract.

## Completion gates

- Independent exact-rational tests for bounded arithmetic and local recurrence.
- Extreme-exponent stress distinguished from real deep-boundary certificates.
- Forged residuals, overflow/carry errors and circle-boundary ambiguity rejected.
- Fe certificate checker agrees with the independent model under explicit budgets.
- Complete source-grounded protocol specification with degree and disclosure
  accounting; independent review before production proof-format implementation.
- Authenticated AIR/DEEP linkage and analyzed proximity checks replace replay.
- Fresh cryptographic masking/randomness covers the complete verifier view.
- Only public statement plus proof reaches the verifier; no point/orbit replay.
- GPU/Fe parity, adversarial tests and browser execution for the new protocol.

Passing numerical tests or generic FRI folds alone does not discharge the last
five gates. No security-bit, privacy or end-to-end performance claim is made.

## Grounding

- Current checker: `app/proof_checker/src/lib.fe` calls witness replay before
  selected FRI/composition checks; README describes the incomplete AIR linkage.
- Current profile/public statement: `lib/mandelbrot_proof_profile` and
  `lib/mandelbrot_proof_kernel` remain fixed Q12 machinery for regression.
- [DEEP-FRI/DEEP-ALI, section6](https://arxiv.org/html/1903.12243): protocol linkage
  and proximity testing; not an automatic theorem for a custom batching variant.
- [Haboeck–Kindi, ePrint2024/1037](https://eprint.iacr.org/2024/1037): zero-knowledge
  randomization and quotient-decomposition pitfalls in small-field STARKs.
- [Deep zoom theory and practice](https://mathr.co.uk/blog/2021-05-14_deep_zoom_theory_and_practice.html):
  perturbation identity, rescaling, finite precision and glitches. Its rendering
  optimizations do not by themselves provide certified enclosures.
