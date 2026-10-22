"""Run: python3 -m unittest discover -s experiments/private_circle -v"""
import random
import unittest
from fractions import Fraction
from dyadic import (Dyadic, ZERO, FOUR, Interval, ComplexBox, add, mul,
                    circle_membership, direct_orbit, perturbation_orbit, escape_step,
                    reference_residuals, certified_reference_orbit)


def rational(x):
    # Only used for bounded-exponent independent tests, never huge-depth cases.
    return Fraction(x.m) * Fraction(2) ** x.e


def encloses(interval, value):
    return rational(interval.lo) <= value <= rational(interval.hi)


class DirectedArithmetic(unittest.TestCase):
    def test_independent_fraction_oracle(self):
        rng = random.Random(20261022)
        for _ in range(2000):
            a, b = [Dyadic(rng.randrange(-2**25, 2**25), rng.randrange(-80, 80))
                    for _ in range(2)]
            bits = rng.randrange(2, 129)
            self.assertEqual(a < b, rational(a) < rational(b))
            self.assertEqual(a == b, rational(a) == rational(b))
            for operation, expected in [(add, rational(a) + rational(b)),
                                        (mul, rational(a) * rational(b))]:
                self.assertLessEqual(rational(operation(a, b, bits, False)), expected)
                self.assertGreaterEqual(rational(operation(a, b, bits, True)), expected)

    def test_interval_extrema_against_fraction_oracle(self):
        rng = random.Random(127)
        for _ in range(500):
            values = [Dyadic(rng.randrange(-100, 100), rng.randrange(-10, 10))
                      for _ in range(4)]
            a = Interval(*sorted(values[:2]), bits=16)
            b = Interval(*sorted(values[2:]), bits=16)
            for x in (rational(a.lo), rational(a.hi)):
                for y in (rational(b.lo), rational(b.hi)):
                    self.assertTrue(encloses(a + b, x + y))
                    self.assertTrue(encloses(a - b, x - y))
                    self.assertTrue(encloses(a * b, x * y))
            for x in (rational(a.lo), rational(a.hi)):
                self.assertTrue(encloses(a.square(), x * x))
            if a.lo <= ZERO <= a.hi:
                self.assertEqual(a.square().lo, ZERO)

    def test_extreme_exponent_without_giant_mantissas(self):
        tiny = Dyadic(1, -1_000_000_000)
        offset = ComplexBox.exact(tiny, -tiny, bits=128)
        reference = (Dyadic(1), ZERO)
        self.assertEqual(circle_membership(reference, offset, reference,
                                          Dyadic(1, -999_999_999)), 'inside')
        self.assertEqual(circle_membership(reference, offset, reference,
                                          Dyadic(1, -1_000_000_001)), 'outside')
        orbit = list(perturbation_orbit(ComplexBox.exact(*reference), offset, 3))
        self.assertEqual(escape_step(iter(orbit)), 3)
        # This checks exponent RANGE, not billion-bit boundary resolution.
        self.assertTrue(all(abs(v.m).bit_length() <= 128 for z in orbit
                            for i in (z.re, z.im) for v in (i.lo, i.hi)))

    def test_cancelled_anchor_is_not_lost_to_rounding(self):
        reference = (Dyadic(123456789, -27), Dyadic(-77777, -18))
        tiny = Dyadic(1, -100000)
        self.assertEqual(circle_membership(reference, ComplexBox.exact(tiny),
                                          reference, tiny), 'inside')
        self.assertEqual(circle_membership(reference, ComplexBox.exact(Dyadic(3, -100000)),
                                          reference, tiny), 'outside')

    def test_overlapping_circle_bounds_are_unknown(self):
        offset = ComplexBox(Interval(Dyadic(0), Dyadic(2)), Interval.exact(ZERO))
        self.assertEqual(circle_membership((ZERO, ZERO), offset, (ZERO, ZERO),
                                          Dyadic(1)), 'unknown')
        with self.assertRaises(ValueError):
            circle_membership((ZERO, ZERO), offset, (ZERO, ZERO), Dyadic(-1))
        with self.assertRaises(ValueError):
            Interval(Dyadic(1), ZERO)

    def test_direct_and_perturbed_orbits_enclose_exact_recurrence(self):
        cases = [(Dyadic(-3, -2), Dyadic(1, -3), Dyadic(1, -15), Dyadic(-1, -16)),
                 (Dyadic(1), ZERO, Dyadic(1, -20), Dyadic(3, -21)),
                 (Dyadic(-2), ZERO, Dyadic(-1, -18), ZERO)]
        for cr, ci, dr, di in cases:
            reference, delta = ComplexBox.exact(cr, ci, 80), ComplexBox.exact(dr, di, 80)
            c = (rational(cr) + rational(dr), rational(ci) + rational(di))
            exact = (Fraction(0), Fraction(0))
            direct = list(direct_orbit(reference + delta, 8))
            perturbed = list(perturbation_orbit(reference, delta, 8))
            for step in range(9):
                for boxes in (direct, perturbed):
                    self.assertTrue(encloses(boxes[step].re, exact[0]))
                    self.assertTrue(encloses(boxes[step].im, exact[1]))
                    if boxes[step].norm_squared().lo > FOUR:
                        self.assertGreater(exact[0]**2 + exact[1]**2, 4)
                exact = (exact[0]**2 - exact[1]**2 + c[0],
                         2 * exact[0] * exact[1] + c[1])

    def test_rounded_reference_residual_is_checked(self):
        reference = ComplexBox.exact(Dyadic(1))
        offset = ComplexBox.exact(Dyadic(1, -12))
        # Intentionally very inaccurate reference: zero at EVERY step.
        samples = [(ZERO, ZERO)] * 4
        residuals = reference_residuals(reference, samples)
        boxes = list(certified_reference_orbit(reference, offset, samples, residuals))
        exact = Fraction(0)
        for box in boxes:
            self.assertTrue(encloses(box.re, exact))
            self.assertTrue(encloses(box.im, Fraction(0)))
            exact = exact * exact + Fraction(4097, 4096)
        self.assertEqual(escape_step(iter(boxes)), 2)
        with self.assertRaises(ValueError):
            list(certified_reference_orbit(reference, offset, samples,
                                          [ComplexBox.exact()] * 3))
        with self.assertRaises(ValueError):
            list(certified_reference_orbit(reference, offset, samples, residuals[:-1]))
        with self.assertRaises(ValueError):
            reference_residuals(reference, [(Dyadic(1), ZERO)] * 4)

    def test_strict_escape_and_unknown_are_not_membership(self):
        self.assertIsNone(escape_step(direct_orbit(ComplexBox.exact(Dyadic(-2)), 20)))
        self.assertIsNone(escape_step(direct_orbit(ComplexBox.exact(), 20)))
        self.assertEqual(escape_step(direct_orbit(ComplexBox.exact(Dyadic(1)), 3)), 3)


if __name__ == '__main__':
    unittest.main()
