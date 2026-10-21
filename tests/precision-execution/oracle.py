"""Check the fixture's recorded expectations with exact rational arithmetic."""
import json
import struct
from fractions import Fraction
from pathlib import Path


def value(word):
    return Fraction(struct.unpack('<f', struct.pack('<I', word))[0])


def nearest(value_to_round):
    if not value_to_round:
        return Fraction(0)
    sign = -1 if value_to_round < 0 else 1
    magnitude = abs(value_to_round)
    exponent = magnitude.numerator.bit_length() - magnitude.denominator.bit_length()
    if magnitude < Fraction(2) ** exponent:
        exponent -= 1
    quantum = Fraction(2) ** max(exponent - 23, -149)
    quotient = magnitude // quantum
    remainder = magnitude / quantum - quotient
    if remainder > Fraction(1, 2) or remainder == Fraction(1, 2) and quotient & 1:
        quotient += 1
    return sign * quotient * quantum


cases = json.loads(Path(__file__).with_name('cases.json').read_text())['cases']
for case in cases:
    a, b = map(value, case['inputBits'])
    total, error, ah, al, bh, bl, product, product_error = map(value, case['words'])
    assert Fraction(case['exactSum']) == a + b
    assert Fraction(case['exactProduct']) == a * b
    assert total == nearest(a + b)
    assert error == nearest(a + b - total)
    assert product == nearest(a * b)
    assert product_error == nearest(a * b - product)
    assert (total + error == a + b) == case['sumPairExact']
    assert (product + product_error == a * b) == case['productPairExact']
    assert ah + al == a and case['splitAExact']
    assert bh + bl == b and case['splitBExact']
print(json.dumps({'exactRationalCases': len(cases), 'passed': True,
                  'scope': 'Recorded finite expectations; no GPU execution claim'}))
