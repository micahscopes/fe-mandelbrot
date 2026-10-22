"""Reproducible arithmetic-only deep-boundary probe; no GPU, proof or privacy.

Run: python3 experiments/private_circle/depth_probe.py
The exact point is c=i+2^-k, inside the closed circle centered at i with radius
2^(1-k). The reference orbit at i is exactly periodic after a short prefix.
"""
import json
import platform
import time
from dyadic import (Dyadic, ZERO, FOUR, ComplexBox, circle_membership,
                    perturbation_orbit, add)


def run(depth, bits):
    reference = ComplexBox.exact(ZERO, Dyadic(1), bits)
    delta = ComplexBox.exact(Dyadic(1, -depth), bits=bits)
    result = {'offsetExponent': -depth, 'mantissaBits': bits,
              'budget': 2 * depth + 32,
              'circle': circle_membership((ZERO, Dyadic(1)), delta,
                                          (ZERO, Dyadic(1)), Dyadic(1, 1-depth)),
              'status': 'unknown', 'escapeByStep': None}
    start = time.perf_counter()
    max_width = ZERO
    for step, box in enumerate(perturbation_orbit(reference, delta, result['budget'])):
        for coordinate in (box.re, box.im):
            max_width = max(max_width, add(coordinate.hi, -coordinate.lo, bits, True))
        norm = box.norm_squared()
        if norm.lo > FOUR:
            result.update(status='escape-certified', escapeByStep=step,
                          normSquaredLower={'m': norm.lo.m, 'e': norm.lo.e})
            break
    result['maxCoordinateWidthUpper'] = {'m': max_width.m, 'e': max_width.e}
    result['elapsedSeconds'] = time.perf_counter() - start
    return result


if __name__ == '__main__':
    results = [run(k, bits) for k, bits in [(128, 128), (1024, 128),
                                           (1024, 256), (4096, 4096)]]
    assert all(result['circle'] == 'inside' for result in results)
    assert [r['status'] for r in results] == ['escape-certified', 'unknown',
                                             'escape-certified', 'escape-certified']
    print(json.dumps({'kind': 'arithmetic-model-only', 'python': platform.python_version(),
                      'reference': 'i', 'point': 'i+2^offsetExponent',
                      'cases': results}, indent=2))
