"""Independent integer accounting for future BabyBear limb constraints.

Not an AIR implementation or proof-system parameter calculator. Application
arithmetic remains Fe. This model records two explicitly different carry
schedules; a native u32 implementation does not choose an AIR layout for us.
"""
import json
import random

P = 2013265921


def budget(precision, limb_bits):
    base = 1 << limb_bits
    limbs = (precision + limb_bits - 1) // limb_bits
    # Per-MAC: digit + a*b + carry, with each digit/carry in [0,B-1].
    # Both sides of digit+B*next_carry are at most B^2-1.
    per_mac_max = base * base - 1
    # Whole diagonal: <=L products and carry <=L*(B-1).
    # Use the larger right-hand bound as well, so field equality cannot hide
    # an integer wrap on either side. This bound is deliberately conservative.
    diagonal_max = (base - 1) * (limbs * base + 1)
    return dict(precision=precision, limb_bits=limb_bits, limbs=limbs,
                product_macs=limbs * limbs, per_mac_max=per_mac_max,
                per_mac_no_wrap=per_mac_max < P,
                diagonal_max=diagonal_max, diagonal_no_wrap=diagonal_max < P)


def schoolbook(a, b, bits):
    base = 1 << bits
    out = [0] * (len(a) + len(b))
    for i, x in enumerate(a):
        carry = 0
        for j, y in enumerate(b):
            total = out[i+j] + x*y + carry
            assert 0 <= total <= base*base-1
            digit, next_carry = total % base, total // base
            assert 0 <= digit < base and 0 <= next_carry < base
            assert total == digit + base*next_carry
            out[i+j], carry = digit, next_carry
        # This word has not yet been touched by a previous outer iteration.
        assert out[i+len(b)] == 0
        out[i+len(b)] = carry
    return out


def value(words, bits):
    return sum(word << (i*bits) for i, word in enumerate(words))


def run():
    rng = random.Random(20261023)
    count = 0
    for precision in [32, 128, 256, 1024, 4096]:
        for bits in [11, 13, 15]:
            n = (precision+bits-1)//bits
            bound = (1 << bits)-1
            for a, b in [([bound]*n, [bound]*n),
                         ([rng.randrange(bound+1) for _ in range(n)],
                          [rng.randrange(bound+1) for _ in range(n)])]:
                product = schoolbook(a, b, bits)
                assert value(product, bits) == value(a, bits)*value(b, bits)
                count += 1
    profiles = [budget(p, b) for p in [128, 256, 1024, 4096]
                for b in [11, 13, 15, 16]]
    assert budget(4096, 13)['per_mac_no_wrap']
    assert not budget(4096, 13)['diagonal_no_wrap']
    assert budget(4096, 11)['diagonal_no_wrap']
    assert not budget(4096, 16)['per_mac_no_wrap']
    return dict(pass_checks=True, integer_product_checks=count, modulus=P,
                profiles=profiles,
                limits='Requires explicit range constraints on every digit and carry; no AIR, ZK, soundness-bit or timing claim. Counts are schoolbook MACs, not actual prover rows or GPU work.')


if __name__ == '__main__':
    print(json.dumps(run(), indent=2))
