# All-Fe experimental producer / verifier checkpoint

Producer source originalca97dfc4fc8c01eae0393e1f1773a6f22eb87c7f, integrated600a5b1.
The lead independently reran the emitted bundle: four Fe-generated proofs are
byte-identical to the independent Rust fixtures, with public Fe verification,
changed statements, invalid witnesses and repeated-call memory checked.
All108 verifier/sampler/repeat checks and385 algebra calls also pass on the
producer-enabled bundle after the shared transcript-prefix refactor.

The relation is EIGHT BITS WITH A PUBLIC SUM. It is NON-HIDING, not a Mandelbrot
proof, and has no accepted security-bit or complete theorem claim. Verifier
input is only statement and proof. Generator input is private bits plus statement.
No handwritten application JavaScript generates or checks the proof.

Node/Wasm timings in the receipts separate module setup, proof generation and
verification. They exclude browser/GPU startup and Mandelbrot proving. Warm
proof generation around16ms and verification around20ms are toy-profile data,
not forecasts for private-region or extreme-depth proofs. Repeated memory is
131072bytes. The full generated bundle/proofs remain in scratch; exact hashes
and independently regenerated proof hashes are preserved here.

Astra independently reviewed source600a5b1 and generated response lifetime,
finding no blocking issue. That is source review, not execution or protocol
security acceptance. See docs/reviews/2026-10-23-bits-prover.md.
