# Application ownership

All application behavior is authored in Fe: the page composition, controls,
pointer policy, camera-to-exact-point mapping, region construction, claim
selection, arithmetic, prover, verifier, cancellation, and result presentation.
Compiler-generated generic browser bindings realize browser APIs. They must
not contain Mandelbrot-specific selection, arithmetic, or workflow policy.

The existing handwritten modules under `web/proof` are migration work still
remaining; their presence is not an accepted application architecture.
The unshipped JavaScript region implementation was removed from the worktree
and preserved as a scratch design reference. It is not a delivery path.

`app/claim_controls` starts the resident Fe component migration. It owns
shape, interaction mode, and claim selection and projects its own controls.
It is a standalone migration fixture, not yet wired to the renderer or checker.
Do not present it as the integrated point-and-region application.

Next integration boundary: one coherent Fe owner must connect the renderer's
camera/contact state to the selection state. Reading private runtime uniforms
or dispatching application-specific DOM messages from handwritten JavaScript
is not an acceptable substitute. The public region must remain fixed when
the witness changes, and public export must exclude the witness.

The local `evaluate_region` arithmetic checker is not a zero-knowledge proof.
Its containment, strict escape, and sufficient boundedness certificates need
to remain distinct from the unfinished hiding proof protocol.
