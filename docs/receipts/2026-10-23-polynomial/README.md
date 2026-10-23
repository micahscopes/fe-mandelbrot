# Polynomial and integer accounting checkpoint

Generic Fe helpers were implemented at9091067 and integrated atc081ec8.
The lead independently reran the source-aligned emitted Wasm:24 extension-field
cases,24 false claims,16 base-field cases and4 invalid inputs pass.
`receipt.json` records original source/compiler/bundle hashes; `lead-rerun.json`
records the second execution. No protocol or toolchain change is included.

`limb-budget.json` is a separate exact-integer accounting model:45 products and
conservative range bounds for two carry schedules. It does not run an AIR or
measure proof performance. See private-circle/ARITHMETIC-CONSTRAINTS.md.
