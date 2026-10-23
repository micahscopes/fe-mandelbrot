# Limb arithmetic: distinguish the carry schedule

Status: integer accounting for a future AIR; no implemented AIR or protocol
soundness claim. Source semantic oracle: `app/certified_escape/src/lib.fe`,
`Engine::product`. Independent executable model:
`experiments/private_circle/limb_air_budget.py`.

The existing Fe native schoolbook multiplication carries after every
multiply-add. With base B, digit and carry ranges [0,B-1], each equality is

    accumulator_digit + a_digit*b_digit + carry = output_digit + B*next_carry

Both sides are at most B^2-1. The integer equality follows from a BabyBear field
equality only if BOTH sides' integer ranges are below p=2013265921, and the
individual digit/carry ranges are constrained. The bound is independent of
limb count. For B=8192, B^2-1=67108863<p; 13-bit limbs are therefore not ruled
out by increasing precision alone. This is a range argument for one operation,
not proof that every accumulator update or memory access is constrained.

A different layout adds all products on a diagonal before carrying. With at
most L products and conservative carry bound L*(B-1), the larger side is bounded
by (B-1)*(L*B+1). This can exceed p. At4096 significant bits, L=316 for13-bit
limbs; the conservative bound is21203820543>p. At11 bits/L373 it is1563713535<p.
These are DIFFERENT layouts; the smaller diagonal sum is not mandatory if we
retain explicit per-operation carries or split partial sums.

The independent integer model checks30 full schoolbook products, including
all-maximal limbs and seeded inputs across32–4096 bits, and reconstructs each
product against Python integers. Its profile table records L^2 multiply-adds;
these are not actual AIR rows, constraint counts, GPU operations or timings.
No boundary checks, comparisons, memory argument, outward rounding or signed
arithmetic gadget is supplied by that model.

Next design comparison: keep13-bit per-MAC carries, split sums into bounded
chunks, or use smaller limbs with whole diagonals. Measure rows, widths, range
lookups, degree and prover cost for complete layouts before choosing. The
range checks and memory consistency may dominate; operation counts alone do
not predict proof performance.
