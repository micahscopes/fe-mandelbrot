#!/usr/bin/env python3
"""Expected words for the camera-delta GPU probe, from exact rational arithmetic.

Reuses the independent Fraction model of tests/frame-array-difference/oracle.py.
Each case is a `from` and `to` four-word expansion (binary32 bits). Expected
output has 16 words per case; see src/lib.fe for their meaning.
"""
import argparse
import hashlib
import importlib.util
import json
import random
import struct
from fractions import Fraction
from pathlib import Path

HERE = Path(__file__).resolve().parent
spec = importlib.util.spec_from_file_location('array_oracle', HERE.parent / 'frame-array-difference/oracle.py')
model = importlib.util.module_from_spec(spec)
spec.loader.exec_module(model)

WIDTH = 10
CASES = 512
SEED = 0x20261023

# Camera centres the Pixel reported in shared URLs (x words, then y words).
PHONE_X = [
    'bf960edd 31e8fdd0 253e3631 17a3a810', 'bf960edd 32e929c0 253e3631 17a3a810',
    'bf960edd b173fbf7 a483939e 17a3a810', 'bf960edd 32d24e18 a6507274 198a3a81',
    'bf960edd b2758c41 253e3631 17a3a810', 'bf960ede b3122f13 2697c6c6 198a3a81',
    'bf960edd b214a970 253e3631 17a3a810',
]
PHONE_Y = [
    '3e977630 b2621ccb 258256dc 19db8db0', '3e977631 311a4ce8 a63ed492 19db8db0',
    '3e97762f 32664ea8 a63ed492 19db8db0', '3e977631 3235c3fe a63ed492 19db8db0',
    '3e97762e 30a56f1a 2295b740 9891c941', '3e977634 b1877771 a57b5246 9891c941',
    '3e97762f b1928121 a57b5246 9891c941',
]


def bits_of(value):
    return struct.unpack('<I', struct.pack('<f', value))[0]


def words(text):
    return [int(part, 16) for part in text.split()]


def quad(fraction):
    """Greedy non-overlapping binary32 expansion of a rational."""
    out, rest = [], fraction
    for _ in range(4):
        word = struct.unpack('<f', struct.pack('<f', float(rest)))[0]
        out.append(bits_of(word))
        rest -= Fraction(word)
    return out


def digest(digits):
    folded = 0
    for index, digit in enumerate(digits):
        folded ^= digit << ((index * 7) % 19)
    return folded


def lanes_digest(seed):
    return digest([(seed >> i) & 8191 for i in range(10)])


def expected(from_bits, to_bits):
    origin = model.expansion(from_bits, WIDTH, model.exact_parse, model.exact_add)
    target = model.expansion(to_bits, WIDTH, model.exact_parse, model.exact_add)
    diff = model.exact_add(target, model.negate(origin))
    return [
        model.rational_projection(diff), *target[1], target[0],
        model.rational_projection(origin), model.rational_projection(target),
        diff[0], digest(diff[1]),
        # Canaries and isolated primitives; see src/lib.fe words 16..26.
        0xC0FFEE, from_bits[0], to_bits[0], from_bits[0] >> 31,
        digest(model.exact_parse(from_bits[0], WIDTH)[1]), model.exact_parse(from_bits[0], WIDTH)[0],
        model.rational_projection(model.exact_parse(from_bits[0], WIDTH)),
        lanes_digest(from_bits[0]), lanes_digest(from_bits[0]), from_bits[0] >> 31,
        digest(model.exact_parse(to_bits[0], WIDTH)[1]),
        0, 0, 0, 0, 0,
    ]


def corpus():
    rng = random.Random(SEED)
    cases = []

    def add(name, from_bits, to_bits):
        cases.append(dict(name=name, input=[*from_bits, *to_bits], expected=expected(from_bits, to_bits)))

    for axis, cameras in (('x', PHONE_X), ('y', PHONE_Y)):
        for i, a in enumerate(cameras):
            for j, b in enumerate(cameras):
                add(f'phone-{axis}{i}-{axis}{j}', words(a), words(b))
    for power in (-90, -91, -95, -100, -117, -118):
        for sign in (0, 1):
            tail = ((power + 127) << 23) | (sign << 31)
            add(f'camera-tail-{power}', [0x3f800000, 0, 0, 0], [0x3f800000, tail, 0, 0])
    for _ in range(200):
        # A plausible deep camera and a pan of 2^-20 .. 2^-80 of its magnitude.
        centre = Fraction(rng.uniform(-2, 2)) + Fraction(rng.getrandbits(60), 1 << 85)
        pan = Fraction(rng.choice((-1, 1)) * rng.randrange(1, 1 << 24), 1 << rng.randrange(46, 112))
        add('pan', quad(centre), quad(centre + pan))
    for _ in range(100):
        a = [rng.randrange(0x46000000) | (rng.getrandbits(1) << 31) for _ in range(4)]
        b = [rng.randrange(0x46000000) | (rng.getrandbits(1) << 31) for _ in range(4)]
        add('ordered-four-word', a, b)
    for exponent in range(1, 140, 3):
        for sign in (0, 1):
            add(f'single-word-{exponent}', [0, 0, 0, 0], [(sign << 31) | (exponent << 23) | 0x7fffff, 0, 0, 0])
    assert len(cases) <= CASES, len(cases)
    return cases


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--out', type=Path, default=HERE / 'corpus.json')
    args = parser.parse_args()
    cases = corpus()
    payload = dict(width=WIDTH, seed=SEED, wordsPerCase=32, capacity=CASES, cases=cases)
    text = json.dumps(payload, separators=(',', ':')) + '\n'
    args.out.write_text(text)
    print(json.dumps(dict(cases=len(cases), sha256=hashlib.sha256(text.encode()).hexdigest())))


if __name__ == '__main__':
    main()
