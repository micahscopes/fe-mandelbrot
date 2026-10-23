# Hiding transition: verifier-view inventory

Baseline: producer `600a5b1`, published receipts `2f68708`. This inventories
the implemented **non-hiding** eight-bit argument. It does not prescribe masks
or establish zero knowledge. The selected hiding construction must account for
every row below, including correlations between rows.

| Visible item | Current representation | Obligation for a hiding transition |
| --- | --- | --- |
| Public statement/profile | Weight, fixed domain/degree/field parameters | State intentional leakage; profile choice must not disclose a private execution length. |
| Trace commitment | Unsalted Merkle root of paired base-field b/a LDE values | Hide unopened leaves as well as account for opened values; deterministic hashing alone supplies no hiding argument. |
| Composition commitment | Unsalted Merkle root of extension-field R values | Account for dependence on the same trace, constraint challenges and source masks. |
| OOD answers | b(q), b(gq), a(q), a(gq), R(q), each in Ext4 | Count linear constraints over the actual mask coefficient field; an extension evaluation is not automatically one base-field constraint. |
| Initial source openings | Eight query records, each with two trace leaves and two composition leaves | At most sixteen distinct initial domain positions, often fewer; each trace leaf exposes both columns. Use actual repeated-position sets or a conservative bound. |
| Intermediate FRI commitments | Roots of length-16 and length-8 extension tables | Require hiding for unopened folded data; masking only source openings is insufficient. |
| Intermediate FRI openings | Each query opens a pair at both committed layers | Arity, repeated positions and correlation with initial openings must appear in the disclosure accounting. |
| Terminal polynomial | One extension-field constant | Its witness dependence must be covered even though degree checks pass. |
| Authentication paths | Trace, composition and both FRI-layer sibling digests | Include leaf salting/randomization and hash-model assumptions in the selected construction. |
| Transcript | All roots/answers/final value derive challenges and query indices | Derived values are part of the joint view. Do not assume independence merely because domain tags differ. |
| Abort/retry behavior | Invalid witness, capped sampler exhaustion, internal failure | Define observable errors and retry policy; fresh entropy per attempt, no selective public retries silently omitted from the model. |
| Application boundary | Proof bytes, public statement, timing/errors and exported diagnostics | Keep witness, coordinates, masks, source tables, coefficients and private opening state out of exports/logs. Timing is a separate implementation concern from an algebraic simulator argument. |

The current witness has eight bits and degree below eight. Consequently even
the small fixed OOD/query disclosure budget is material; masking cannot be
added while keeping every degree/domain parameter unchanged by assumption.
Any larger executable profile must specify its new degree bounds and preserve
the intended eight-bit relation, or explicitly name the changed relation.

Acceptance requires an independently reviewed construction mapping, mask-space
dimension and degree ledger, entropy/failure tests, independent proof-byte and
verification checks, and a simulator/model argument covering the joint view.
Different proof bytes for the same witness are a useful entropy diagnostic,
not a zero-knowledge test. No privacy claim follows from this inventory.
