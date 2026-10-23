#!/usr/bin/env python3
"""Old radix kernel / array candidate / independent rational-value oracle."""
import argparse
import hashlib
import json
import random
import struct
from fractions import Fraction
from pathlib import Path

B = 8192
MASK = B - 1
U32 = (1 << 32) - 1
SEED = 0x20261021


def f32(value):
    return struct.unpack('<f', struct.pack('<f', value))[0]


def decode(bits):
    return struct.unpack('<f', struct.pack('<I', bits))[0]


def rational(bits):
    exponent, fraction = (bits >> 23) & 255, bits & 0x7fffff
    significand = fraction if exponent == 0 else fraction | (1 << 23)
    shift = -149 if exponent == 0 else exponent - 150
    value = Fraction(significand) * Fraction(2) ** shift
    return -value if bits >> 31 else value


def digits(integer, width):
    return [(integer >> (13 * i)) & MASK for i in range(width)]


def integer(words):
    return sum(word << (13 * i) for i, word in enumerate(words))


def checked(value):
    assert 0 <= value <= U32
    return value


def old_parse(bits, width):
    value = decode(bits)
    sign = int(value < 0)
    remaining = abs(value)
    high_first = []
    for _ in range(width):
        whole = int(remaining)
        high_first.append(whole)
        remaining = f32(f32(remaining - f32(whole)) * 8192.0)
    return sign, list(reversed(high_first))


def new_parse(bits, width):
    magnitude = bits & 0x7fffffff
    assert 2 <= width <= 10 and magnitude < 0x46000000
    sign = int(bits >> 31 != 0 and magnitude != 0)
    exponent = magnitude >> 23
    result = [0] * width
    if exponent:
        significand = (magnitude & 0x7fffff) | (1 << 23)
        source_bit = -(exponent - 150 + 13 * (width - 1))
        for index in range(width):
            if 0 <= source_bit < 24:
                result[index] = (significand >> source_bit) & MASK
            elif -13 < source_bit < 0:
                result[index] = ((significand << -source_bit) & U32) & MASK
            source_bit += 13
    return sign, result


def exact_parse(bits, width):
    value = rational(bits)
    magnitude = int(abs(value) * (1 << (13 * (width - 1))))
    return int(value < 0), digits(magnitude, width)


def old_add(a, b):
    sa, aw = a
    sb, bw = b

    def plus(aa, bb, carry=0):
        s = checked(checked(aa[0] + bb[0]) + carry)
        low, carry = s & MASK, s >> 13
        return [low] if len(aa) == 1 else [low] + plus(aa[1:], bb[1:], carry)

    def minus(aa, bb, borrow=0):
        # Same biased borrow recurrence as field::SubBorrow.
        s = checked(checked(checked(B + aa[0]) - bb[0]) - borrow)
        low, borrow = s & MASK, 1 - (s >> 13)
        if len(aa) == 1:
            return [low], borrow
        tail, final = minus(aa[1:], bb[1:], borrow)
        return [low] + tail, final

    same = plus(aw, bw)
    ab, borrow = minus(aw, bw)
    ba, _ = minus(bw, aw)
    diff = [checked((1 - borrow) * x + borrow * y) for x, y in zip(ab, ba)]
    diff_sign = (1 - borrow) * sa + borrow * sb
    opposite = sa + sb - 2 * sa * sb
    result = [checked((1 - opposite) * x + opposite * y) for x, y in zip(same, diff)]
    return (1 - opposite) * sa + opposite * diff_sign, result


def new_add(a, b):
    sa, aw = a
    sb, bw = b
    if sa == sb:
        carry = 0
        result = []
        for x, y in zip(aw, bw):
            total = checked(checked(x + y) + carry)
            result.append(total & MASK)
            carry = total >> 13
        return sa, result
    # Lexicographic digit ordering, independent of bigint conversion.
    less = False
    for x, y in zip(reversed(aw), reversed(bw)):
        if x != y:
            less = x < y
            break
    sign, larger, smaller = (sb, bw, aw) if less else (sa, aw, bw)
    borrow = 0
    result = []
    for x, y in zip(larger, smaller):
        biased = checked(checked(checked(B + x) - y) - borrow)
        result.append(biased & MASK)
        borrow = 1 - (biased >> 13)
    return sign, result


def exact_add(a, b):
    sa, aw = a
    sb, bw = b
    ai, bi = integer(aw), integer(bw)
    if sa == sb:
        return sa, digits((ai + bi) % B ** len(aw), len(aw))
    return (sb, digits(bi - ai, len(aw))) if ai < bi else (sa, digits(ai - bi, len(aw)))


def negate(value):
    return 1 - value[0], value[1]


def old_word(words, index):
    if index < 0:
        return 0
    if len(words) == 1:
        return words[0] >> index if index < 13 else 0
    if index < 13:
        return ((words[0] >> index) | (old_word(words[1:], 0) << (13 - index))) & U32
    return old_word(words[1:], index - 13)


def new_word(words, index):
    if index < 0:
        return 0
    slot, shift = divmod(index, 13)
    if slot >= len(words):
        return 0
    result = words[slot] >> shift
    slot, position = slot + 1, 13 - shift
    while slot < len(words) and position < 32:
        result |= (words[slot] << position) & U32
        slot, position = slot + 1, position + 13
    return result


def view_projection(value, window):
    sign, words = value
    high = -1
    for i, word in enumerate(words):
        if word:
            high = i * 13 + word.bit_length() - 1
    if high < 0:
        return 0
    exponent = high - 13 * (len(words) - 1) + 127
    shift = high - 23
    retained = window(words, 0) << -shift if shift < 0 else window(words, shift)
    guard_index = high - 24
    guard = 0 if guard_index < 0 else (words[guard_index // 13] >> (guard_index % 13)) & 1
    sticky = 0
    for i, word in enumerate(words):
        count = min(13, max(0, guard_index - i * 13))
        sticky |= word & ((1 << count) - 1)
    rounded = retained + (int(sticky != 0) if guard and sticky else (retained & 1) if guard else 0)
    if rounded == (1 << 24):
        rounded, exponent = 1 << 23, exponent + 1
    return (sign << 31) | (exponent << 23) | (rounded & 0x7fffff)


def rational_projection(value):
    sign, words = value
    magnitude = integer(words)
    if not magnitude:
        return 0
    fraction = Fraction(magnitude, 1 << (13 * (len(words) - 1)))
    exponent = fraction.numerator.bit_length() - fraction.denominator.bit_length()
    if fraction < Fraction(2) ** exponent:
        exponent -= 1
    scaled = fraction / Fraction(2) ** (exponent - 23)
    quotient, remainder = divmod(scaled.numerator, scaled.denominator)
    twice = 2 * remainder
    if twice > scaled.denominator or (twice == scaled.denominator and quotient & 1):
        quotient += 1
    if quotient == (1 << 24):
        quotient >>= 1
        exponent += 1
    assert -126 <= exponent <= 127
    return (sign << 31) | ((exponent + 127) << 23) | (quotient & 0x7fffff)


def expansion(bits, width, parse, add):
    result = parse(bits[0], width)
    for word in bits[1:] + [0]:
        result = add(result, parse(word, width))
    return result


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--out', type=Path, required=True)
    parser.add_argument('--vectors', type=Path)
    parser.add_argument('--runtime-cases', type=Path)
    args = parser.parse_args()
    rng = random.Random(SEED)
    digest = hashlib.sha256()
    counts = dict(parse=0, arithmetic=0, projection=0, expansions=0, window=0)
    runtime_cases = []

    def record(kind, data):
        counts[kind] += 1
        digest.update(json.dumps([kind, data], separators=(',', ':')).encode() + b'\n')

    def check_projection(value):
        expected = rational_projection(value)
        assert view_projection(value, old_word) == expected
        assert view_projection(value, new_word) == expected
        record('projection', [value, expected])
        return expected

    vector_source = ['//! Generated exact rational conversion cases; see oracle.py.\n',
                     'use precision::array_fixed::ArrayFixed\n']
    for width in range(2, 11):
        parse_cases = [0, 0x80000000, 1, 0x80000001, 0x7fffff, 0x807fffff,
                       0x45ffffff, 0xc5ffffff]
        for e in range(1, 140):
            for mantissa in (0, 1, 0x3fffff, 0x7fffff):
                parse_cases += [(e << 23) | mantissa, 0x80000000 | (e << 23) | mantissa]
        parse_cases += [rng.randrange(0x46000000) | (rng.getrandbits(1) << 31) for _ in range(1024)]
        for bits in parse_cases:
            expected = exact_parse(bits, width)
            assert old_parse(bits, width) == expected
            assert new_parse(bits, width) == expected
            record('parse', [width, bits, expected])
            check_projection(expected)
            if width == 10:
                runtime_cases.append(dict(name='single-word', **{'from': [0, 0, 0, 0]},
                                          to=[bits, 0, 0, 0], expected=rational_projection(expected)))

        modulus = B ** width
        cases = [0, 1, MASK, B, modulus - 1, modulus - 2]
        for bit in range(13 * width):
            cases += [1 << bit, (1 << bit) - 1]
            if bit >= 24:
                # Both tie parities, guard+sticky, and rounding across a binade.
                half = 1 << (bit - 24)
                cases += [(1 << bit) + half, (1 << bit) + 3 * half,
                          (1 << bit) + half + 1, (1 << bit) - half]
        cases += [rng.randrange(modulus) for _ in range(1024)]
        for magnitude in cases:
            words = digits(magnitude, width)
            for sign in (0, 1):
                a = sign, words
                check_projection(a)
                b = rng.getrandbits(1), digits(rng.randrange(modulus), width)
                for operand in (b, negate(b), a, negate(a), (0, [0] * width), (1, [0] * width)):
                    expected = exact_add(a, operand)
                    assert old_add(a, operand) == expected
                    assert new_add(a, operand) == expected
                    record('arithmetic', [a, operand, expected])
                for index in (-2147483648, -1, 0, 12, 13, 31, 32, 13 * width - 1, 13 * width, 2147483647):
                    expected = (magnitude >> index) & U32 if 0 <= index < 13 * width else 0
                    assert old_word(words, index) == expected == new_word(words, index)
                    record('window', [width, words, index, expected])

        for trial in range(512):
            # Include overlap, mixed signs and cancellation; no non-overlap
            # assumption is used by either fixed accumulation.
            a_bits = [rng.randrange(0x46000000) | (rng.getrandbits(1) << 31) for _ in range(4)]
            b_bits = a_bits.copy() if trial % 8 == 0 else [rng.randrange(0x46000000) | (rng.getrandbits(1) << 31) for _ in range(4)]
            exact_a = expansion(a_bits, width, exact_parse, exact_add)
            exact_b = expansion(b_bits, width, exact_parse, exact_add)
            result = exact_add(exact_b, negate(exact_a))
            for parse, add in ((old_parse, old_add), (new_parse, new_add)):
                a = expansion(a_bits, width, parse, add)
                b = expansion(b_bits, width, parse, add)
                assert (a, b) == (exact_a, exact_b)
                assert add(b, negate(a)) == result
            record('expansions', [width, a_bits, b_bits, result, check_projection(result)])
            if width == 10:
                runtime_cases.append(dict(name='ordered-four-word', **{'from': a_bits},
                                          to=b_bits, expected=rational_projection(result)))

        if width in (2, 8, 10):
            vector_source += [f'\n#[test]\nfn exact_binary32_conversion_l{width}() {{\n']
            chosen = parse_cases[:8] + [((e << 23) | m) ^ s
                for e in (1, 10, 32, 33, 36, 58, 114, 127, 139)
                for m in (1, 0x7fffff) for s in (0, 0x80000000)]
            for bits in chosen:
                sign, words = exact_parse(bits, width)
                expected_bits = rational_projection((sign, words))
                vector_source += [f'    let expected = ArrayFixed<{width}>::from_digits({str(bool(sign)).lower()}, {words})\n',
                                  f'    let actual = ArrayFixed<{width}>::from_binary32_bits({bits})\n',
                                  '    assert(actual == expected)\n',
                                  f'    assert(actual.to_binary32_bits() == {expected_bits})\n']
            vector_source += ['}\n']

    receipt = dict(passed=True, seed=SEED, counts=counts, total=sum(counts.values()),
                   casesSha256=digest.hexdigest(), scriptSha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
                   widths=list(range(2, 11)), domain='canonical 13-bit limbs; finite binary32 sources with absolute value below 8192',
                   feExecution='not run', gpuExecution='not run')
    args.out.parent.mkdir(parents=True, exist_ok=True)
    args.out.write_text(json.dumps(receipt, indent=2) + '\n')
    if args.vectors:
        args.vectors.write_text(''.join(vector_source))
    if args.runtime_cases:
        # Explicit accepted-camera cases: identity and signed movement below
        # the reference's 91-bit lattice, around a nonzero center.
        for power in (-90, -91, -95, -100, -117, -118):
            for sign in (0, 1):
                tail = ((power + 127) << 23) | (sign << 31)
                a_bits, b_bits = [0x3f800000, 0, 0, 0], [0x3f800000, tail, 0, 0]
                a = expansion(a_bits, 10, exact_parse, exact_add)
                b = expansion(b_bits, 10, exact_parse, exact_add)
                runtime_cases.append(dict(name=f'camera-tail-{power}', **{'from': a_bits},
                                          to=b_bits, expected=rational_projection(exact_add(b, negate(a)))))
        args.runtime_cases.write_text(json.dumps(dict(width=10, seed=SEED, cases=runtime_cases), indent=2) + '\n')
    print(json.dumps(receipt, indent=2))


if __name__ == '__main__':
    main()
