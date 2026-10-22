"""Deterministic small-field algebra oracle, NOT FRI, a PCS, or a ZK proof.

Exhaustive interpolation distinguishes an authentic polynomial opening from a
made-up out-of-domain claim. A real protocol replaces full-table interpolation
with authenticated openings plus analyzed proximity tests and transcript rules.
"""
import unittest

P = 97


def evaluate(coefficients, x):
    value = 0
    for coefficient in reversed(coefficients):
        value = (value * x + coefficient) % P
    return value


def product(a, b):
    result = [0] * (len(a) + len(b) - 1)
    for i, x in enumerate(a):
        for j, y in enumerate(b):
            result[i + j] = (result[i + j] + x * y) % P
    return result


def interpolate(xs, ys):
    result = [0] * len(xs)
    for i, x in enumerate(xs):
        basis, denominator = [1], 1
        for j, other in enumerate(xs):
            if j != i:
                basis = product(basis, [-other % P, 1])
                denominator = denominator * (x - other) % P
        factor = ys[i] * pow(denominator, -1, P) % P
        for j, coefficient in enumerate(basis):
            result[j] = (result[j] + coefficient * factor) % P
    return result


def degree(coefficients):
    return next((i for i in range(len(coefficients) - 1, -1, -1)
                 if coefficients[i] % P), -1)


def coset(size):
    root = pow(5, (P - 1) // size, P)
    points = [3 * pow(root, i, P) % P for i in range(size)]
    assert len(set(points)) == size
    return points


class AlgebraicBinding(unittest.TestCase):
    def test_pointwise_division_is_not_global_divisibility(self):
        # The invalid numerator is 1; it cannot be divisible by X^8-1.
        # Nonetheless every sampled pointwise division on this disjoint coset
        # succeeds. Checking those divisions alone would establish nothing.
        domain = coset(32)
        values = []
        for x in domain:
            zerofier = (pow(x, 8, P) - 1) % P
            self.assertNotEqual(zerofier, 0)
            value = pow(zerofier, -1, P)
            self.assertEqual(value * zerofier % P, 1)
            values.append(value)
        self.assertEqual(degree(interpolate(domain, values)), 24)
        # Under numerator degree<=15 and zerofier degree8, a VALID quotient
        # would have degree<=7. This particular invalid table fails that test.
        self.assertGreater(degree(interpolate(domain, values)), 7)

    def test_every_false_opening_fails_exact_quotient_degree(self):
        domain = coset(16)
        source = [7, 3, 2, 1]  # degree3, so an honest opening quotient has degree<=2
        checked = 0
        for z in range(P):
            if z in domain:
                continue
            authentic = evaluate(source, z)
            for claimed, valid in ((authentic, True), ((authentic + 1) % P, False)):
                quotient = [(evaluate(source, x) - claimed) * pow((x - z) % P, -1, P) % P
                            for x in domain]
                actual_degree = degree(interpolate(domain, quotient))
                self.assertEqual(actual_degree <= 2, valid)
                if not valid:
                    self.assertEqual(actual_degree, 15)
            checked += 1
        self.assertEqual(checked, 81)

    def test_unbound_claim_can_satisfy_an_unrelated_identity(self):
        z = 0  # Outside the multiplicative coset.
        source = [1, 0, 1]  # The actual committed polynomial X²+1 is NOT zero.
        fabricated = 0
        self.assertEqual(fabricated, 0)  # A verifier trusting this sees its desired identity.
        self.assertNotEqual(evaluate(source, z), fabricated)
        domain = coset(16)
        quotient = [(evaluate(source, x) - fabricated) * pow((x - z) % P, -1, P) % P
                    for x in domain]
        self.assertGreater(degree(interpolate(domain, quotient)), 1)


if __name__ == '__main__':
    unittest.main()
