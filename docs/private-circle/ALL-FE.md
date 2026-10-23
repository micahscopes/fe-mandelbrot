# Application ownership

All application behavior is authored in Fe: page composition, controls,
pointer policy, exact-point construction, region construction, claim selection,
arithmetic, and result state. The compiler generates generic browser bindings.
The application page loads no handwritten geometry or workflow modules.

`app/studio` composes the page. The renderer is the single authoritative owner
of camera, public region, local witness, evaluation revision and result.
`app/claim_controls` is a standalone resident-component fixture, not a second
live selection owner. The preserved `web/proof` modules belong to the earlier
GPU proof demonstration; migrating that proof workflow remains unfinished.
They are excluded from the current application distribution.

Selecting a witness never changes the public region. Camera navigation changes
the display projection, not the mathematical selection. Raw pointer coordinates
are normalized to a binary32 grid; the exact selected value then retains the
four camera coefficients and a factored exact binary32 product. Display-only
fixed arithmetic must never reconstruct the certificate input.

Drafts pause evaluation and suppress results. A committed change of region,
witness, claim or arithmetic profile creates a new revision. Cancellation
restores only the current committed statement. URL camera changes cancel drafts
and refresh projection. Public view suppresses the local witness marker; it is
not cryptographic hiding, and no public ZK export is implemented.

# Resident memory

The original pinned compiler emits reset-only memory for zero-task scheduled
surfaces. That invalidates allocations retained from initialization. The
recorded generic `resident-surface-memory.patch` selects the backend's existing
checked-stack contract for scheduled surfaces. Initialization retains storage;
event epochs rewind temporary storage. `tests/resident-memory` reproduces the
old corruption and checks the corrected runtime boundary.

This patch is scoped to scheduled surfaces. It does not establish lifetime
acceptance for every no-task resident component. Mixed scheduled-surface and
canonical-message exports need separate compatibility work; the current GPU
actor-graph builder already rejects that combination. Standalone canonical
arithmetic/checker bundles keep their existing ABI.

# Remaining gates

The local checker receives a witness and is not a zero-knowledge proof.
The full hiding commitment/DEEP/FRI protocol, GPU proof workflow migration,
arbitrary-depth visual camera and exact coordinate editor remain unfinished.
Working arithmetic precision does not enlarge the four-term visual camera.
Rich button/status composition requires a generic attachment to that same
resident owner; a handwritten JavaScript mailbox is not an acceptable bridge.

Independent source reviews are retained under `docs/reviews`. Their findings
are source-level checks, not cryptographic protocol acceptance. Publication
must also pass the emitted-bundle lifetime canary, actual renderer transition
checks, arithmetic regressions and a browser/GPU presentation gate.
