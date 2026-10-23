# Toy OOD checkpoint receipts

Source implementation: `ddc99695680d41867fef6469a762c0d97cc54eb3`.
Lead independently reran the emitted Fe/Wasm against33 independent BigInt fixture
cases. Expected acceptance of the adaptive zero-trace example records a known
limitation, not proof soundness. No succinct PCS or zero knowledge is implemented.

`receipt.json` records source/compiler/artifact hashes and original execution.
`lead-rerun.json` records the separate execution. Historical Q12 reproduction and
unchanged legacy checker baseline are separate tests of preserved old behavior.
No generated bundle is committed. Rebuild instructions are in tests/toy-deep-air.
