# Experimental bit-weight argument contract, v0

Status: selected for TEST-ONLY oracle / Fe verifier / Fe prover implementation
following Opus direction and independent Astra source review. Not zero knowledge,
not a production format, not a completed theorem mapping or security-bit claim.
No application proof interface or deployed artifact changes.

Source direction: `/lab/argot/scratch/mb2-zk-protocol-direction-20261023/RAW-REPORT.md`.
This file records the binding corrections to that immutable report, not an
endorsement of every statement in it. Primary source: [ethSTARK v1.2,
§§3.9,5.3–5.4](https://eprint.iacr.org/2021/582). The full source extract, request,
raw report and review notes remain in the scratch direction-review directory.

## Selected algebra and profile

Use ethSTARK §5.3 Eqs.(5),(7),(8), a=1, with independent coefficients rather than
powers of one batching challenge. This is NOT original DEEP-ALI Protocol6.4
and NOT Plonky3 uni-stark's composition/chunking. Future hiding requires a new
review of its changed degree/disclosure ledger and decomposition.

Base field BabyBear p=2013265921, extension U^4=11, H size8 generator g,
D=31*<omega> size32, omega^4=g. Public statement is canonical field weight S;
private witness eight bits of that weight. Trace columns b and inclusive prefix
accumulator a. Do NOT prefilter S>8 in the verifier: protocol tests include false
statements. The honest prover may reject invalid witness inputs.

Constraints are bool b0²-b0 on H; transition a1-a0-b1 on H except last row;
first a0-b0 on {1}; last a0-S on {g^-1}. Quotient degrees are (6,0,6,6),
dmax=8 and correction exponents (1,7,1,1). Compose each quotient with multiplier
r_k+r'_k*X^c_k. Coefficient order is interleaved
[r0,r0prime,r1,r1prime,r2,r2prime,r3,r3prime]. Mask order [b0,b1,a0,a1].

OOD answers order [b(q),b(gq),a(q),a(gq),R(q)]. Five independent DEEP weights
apply, in that order, to (b(x)-b(q))/(x-q), (b(x)-b(gq))/(x-gq),
(a(x)-a(q))/(x-q), (a(x)-a(gq))/(x-gq), (R(x)-R(q))/(x-q).
See the raw report for the expanded composition identity. Shared authoritative
Fe algebra modules are `tests/toy-stark-bits/src/{air,deep}.fe`.

Virtual initial FRI layer is derived from authenticated source/composition
queries; no separate root is sent. Arity(2,2,2) folds sizes32→16→8→4, with
degree bounds <8→<4→<2→<1. Commit layers1/2 and send a constant c for layer3.
The four values of the honest last layer must be equal. All sixteen initial
pair indices must be exercised by test-only checks.

## Transcript and domain tags

Use the raw report §3.6 exactly, with canonical statement S checked BEFORE
field conversion, and with the sampler rules below. T0 binds the full version1
profile: [1,3,5,31,11,8,3,1,1,4,1,S]. Both sampler caps are implied by this
version and may not change without a profile version change.

All tags are four-byte ASCII encoded as BIG-ENDIAN u32; each is <p. The tags,
field counts and value-major extension coordinates are part of the contract.

| Label | Canonical u32 |
|---|---|
| TKTL | 1414222924 |
| TKCL | 1414218572 |
| TKF1 | 1414219313 |
| TKF2 | 1414219314 |
| TKP0 | 1414221872 |
| TKT1 | 1414222897 |
| TKR1 | 1414222385 |
| TKC1 | 1414218545 |
| TKZ1 | 1414224433 |
| TKA1 | 1414218033 |
| TKG1 | 1414219569 |
| TKB1 | 1414218289 |
| TKL1 | 1414220849 |
| TKL2 | 1414220850 |
| TKE1 | 1414219057 |
| TKQ1 | 1414222129 |

Trace leaves use TKTL with2 base fields. Composition leaves use TKCL with1
Ext4 (4 base fields); FRI layers1/2 use TKF1/TKF2 with1 Ext4. Natural index
order and bottom-up Merkle paths; parent is existing Poseidon2 compress(left,
right). `commit_fields` / `commit_ext4_fields` use their existing tag+length
framing. Message encoding must be unambiguous; the hash is NOT injective.

Sample q with counters0..7 inclusive. Accept precisely q!=0, q^8!=1 and
(q/31)^32!=1; after eight invalid candidates return status2. A base-field q
OUTSIDE {0}∪H∪D IS VALID. Rejecting every base-field point is incorrect.

For query m=0..7, try counters0..15 inclusive. Payload is
[T6 fields(8),m,counter], tagTKQ1. Take first field e; reject e>=p-1;
accept j=e%16 otherwise. Exhaustion returns status2. Both samplers use canonical
counter words. Rejection sampling is uniform conditional on success under the
ideal-random model; finite caps add an abort case. Do not claim perfect
completeness for the capped implementation or literal uniformity of Poseidon.
Duplicates are verified independently; no deduplication.

Root/answer/final binding order from raw report is unchanged: profile+S,
trace root, constraint coefficients, composition root, q, answers, DEEP weights,
first fold challenge, layer1 root, second fold challenge, layer2 root, third
fold challenge, final constant, query indices. Staged Fe constructors/internals
must be private and consume previous stages with own/no Copy if advertised as
enforcing order; otherwise document intended order without a type-enforcement
claim. This is implementation discipline, not a Fiat-Shamir proof.

## Layout and verifier boundary

Keep the raw report fixed2456 canonical u32 words: roots8+8, answers20,
layer roots16, constant4, eight query records300. Each query record contains
trace pairs2*(2+5*8), composition pairs2*(4+5*8), layer1 pairs2*(4+4*8),
layer2 pairs2*(4+3*8). Authenticate the derived indices, not proof-supplied
indices. Exact-length and ALL word canonicality checks precede arithmetic.

Verifier input is only S and proof. No private witness argument, full trace,
coefficients, full composition, trusted challenges or producer success flag.
The whole proof can depend on the witness: roots, OOD answers, FRI values and
terminal constant, as well as derived challenges. This version is non-hiding;
query duplicates mean it does not necessarily reveal16 DISTINCT values, but it
can disclose or reconstruct the witness. Never describe this as ZK.

Verifier execution order is fixed for oracle status parity: validate length and
all canonical words/S; derive q and the rest of the transcript; derive all8
query indices (sampler aborts status2); check OOD identity once (status6); then
for each query authenticate trace pair, composition pair, layer1 pair, layer2
pair in that order before checking two intermediate folds and final constant.
Within a pair authenticate its lower index before upper index. Return the first
failure in this EXECUTION order, not numerical status order.

Canonical public entry uses `VerifyRequest { statement: Statement { weight:u32 },
proof: BrowserBytes }`, returning `VerifyResult { status:u32 }`. Proof bytes are
little-endian u32 words. BrowserBytes length must equal9824. This does not alter
the mathematical statement or fixed word layout; it supports exact malformed-
length tests with the existing generated interface. Private prover output may
use BrowserBytes with owned allocation; the proof excludes witness inputs.

Statuses:0accept;1malformed/noncanonical;2sampler exhausted;3trace path;
4composition path;5FRI path;6OOD identity;7intermediate fold;8final constant.
Tests may expose separate sampler/algebra functions; verifier cannot accept
injected challenges.

## Tests, scope and next transition

Follow raw report gates after the above corrections. C2–C8/E1 are named,
genuinely changed fixtures with oracle-predicted outcomes, not universal
rejection promises or a measured soundness probability. Identity swaps or
legitimate path reuse need not fail. Cover valid base q, all forbidden q types,
every sampler exhaustion branch, all initial pairs, two witnesses for S3,
S0/S8, falseS9 and canonical S/proof decoding. Independent oracle precedes
Fe verifier; Fe prover follows with byte equality. All three stay test-only.

Before hiding, fix the intended relation at enlarged domains. Honest zero
padding alone does NOT enforce an eight-bit language; extra logical rows must
be constrained, or public profile must explicitly define the larger relation.
New padding, mask domains, quotient splits and randomness require independent
protocol review. Existing PCS budget checks are not the STARK ZK theorem.

ethSTARK recombination is sum_k X^k P_k(X^a), NOT sum_j X^(jm)Q_j(X).
They coincide for one chunk only. Original DEEP-ALI uses multipoint quotienting
and separate proximity arguments; do not silently interchange these choices.

Remaining theorem gaps (IOP→hash→FS, quantitative parameters and full simulator)
remain explicit. Exa retrieved hiding-paper text, but malformed mathematical
spans and the unreviewed implementation mapping still prevent acceptance of
its theorem for this project. Timing, failures/retries, certificate choice and
reference selection also need a scoped privacy model.
