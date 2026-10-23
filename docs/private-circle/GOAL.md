# Active delivery goal

Micah asked on2026-10-23 to drive the project through and use Opus for guidance.
The active goal is an independently reviewed all-Fe private point-in-region
proof integrated with the existing Mandelbrot viewer: GPU prover, Fe/Wasm
verifier, public circle/box independent of the secret point, exact mathematical
meaning, positive extreme-depth evidence and measured performance.

## Completion evidence

- The verifier consumes only a public statement and proof. Point coordinates,
  witness/orbit, full source/composition tables and private escape index are not
  verifier inputs.
- Exact escape is proved with strict inequalities; no-escape-within-N and
  sufficient bounded-forever certificates are separately named relations.
- One explicit polynomial-opening, AIR and FRI construction is implemented,
  with fixed transcript chronology and independently checked degree accounting.
- A selected published hiding construction covers the complete verifier view,
  with fresh cryptographic randomness, salted commitments, sufficient masking
  freedom and a reviewed simulator/model argument. Tests alone do not establish
  soundness or zero knowledge.
- A designated positive deep perturbation fixture actually certifies; always
  returning Unknown is not acceptance. Public reference validation and its cost
  are explicit.
- Fe scalar/GPU correspondence, Fe/Wasm verification, proof export/import and a
  real hardware-browser round trip are executed and recorded. Cold startup,
  shader compilation, warm proving, proof bytes and verification are measured
  separately for named precision/domain profiles.
- Source, tests, reports and receipts are published in a reviewable branch;
  existing viewer/demo/research histories remain available.

## Current ground

`c8d11c0` is the published arithmetic-only OOD exercise and protocol-gates
checkpoint; all33 Fe/Wasm fixtures pass. No complete private proof is claimed.
The deployed viewer/checker remains `c9908bc`. [Protocol gates](PROTOCOL-GATES.md)
name the gap between those checkpoints and the completion evidence above.

Opus chooses and critiques the next protocol/architecture slice. The lead
verifies its findings against source and executed tests, obtains an independent
review before adopting protocol changes, and owns integration and status.
Implementation work stays isolated until its stated gate passes. Builds/cache
stay under `/lab/argot/scratch`; heavy compiler rebuilds are not a default step.
