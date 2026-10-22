"""Generate deterministic independent endpoint fixtures for actual Fe/Wasm tests."""
import argparse
import json
import random
from pathlib import Path
from dyadic import Dyadic, add, mul


def words(value):
    magnitude = abs(value)
    result = []
    while magnitude:
        result.append(magnitude & 8191)
        magnitude >>= 13
    return result


def generate():
    rng = random.Random(22)
    result = []
    for i in range(292):
        if i < 220:
            left, right = (rng.randrange(-2**25, 2**25) for _ in range(2))
            le, re = (rng.randrange(-80, 80) for _ in range(2))
            bits = rng.choice([2, 3, 8, 13, 32, 128, 256, 4096])
        else:
            size = [128, 256, 1024, 4096][i % 4]
            left, right = (rng.getrandbits(size) * rng.choice([-1, 1]) for _ in range(2))
            le, re = rng.choice([(-1000000, 1000000), (-20, -23), (0, 0)])
            bits = rng.choice([32, 128, 256, 1024, 4096])
        a, b = Dyadic(left, le), Dyadic(right, re)
        operation = i % 2
        fn = add if operation == 0 else mul
        lo, hi = fn(a, b, bits, False), fn(a, b, bits, True)
        result.append({'request': {'left': words(left), 'right': words(right),
                                   'left_exp': le, 'right_exp': re,
                                   'left_negative': left < 0, 'right_negative': right < 0,
                                   'precision': bits, 'operation': operation},
                       'lower': {'m': str(lo.m), 'e': lo.e},
                       'upper': {'m': str(hi.m), 'e': hi.e}})
    return result


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--out', required=True, type=Path)
    args = parser.parse_args()
    args.out.write_text(json.dumps(generate(), separators=(',', ':')) + '\n')
