# Public-input-only Fe verifier checkpoint

Compiled source originald8e8a4258fc06ff1737b0f37ffcf98ad31039c35, integrated382d504.
Lead independently reran the exact emitted bundle:30 immutable oracle fixtures,
7 boundary/precedence cases,63 sampler cases and8 repeated honest calls pass.
The earlier385-call algebra suite also passes. Rustoracle13 tests were rerun
from the integrated source; its generated fixture bytes exactly reproduce SHA
b35d1f07520b7cdc119274f505d20adac39abf358ae3f3c2b06a0ef5ae5b10fe.

Public API takes only canonical statement weight and proof bytes. This is
experimental and NON-HIDING. No source/trace replay or witness input is passed
to the verifier. Concrete rejection cases do not establish security bits.

Setup/verification numbers in lead-results.json are Node/Wasm only, excluding
browser/GPU startup and proof generation. Repeated-call memory stays131072bytes.
Compiledbundle hashes are in receipt.json; bundle remains in scratch. Later
6234d96 changes source descriptions only, not executed behavior.
