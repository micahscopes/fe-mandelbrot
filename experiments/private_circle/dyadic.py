"""Independent numerical experiment, NOT a proof protocol or production arithmetic.

Numbers are m * 2**e. Directed integer rounding never materializes 2**abs(e).
Interval laws are checked against a separate Fraction oracle in test_dyadic.py.
"""
from dataclasses import dataclass
from functools import total_ordering


@total_ordering
@dataclass(frozen=True)
class Dyadic:
    m: int
    e: int = 0

    def __post_init__(self):
        if self.m == 0:
            object.__setattr__(self, 'e', 0)
        else:
            shift = (abs(self.m) & -abs(self.m)).bit_length() - 1
            object.__setattr__(self, 'm', self.m >> shift)
            object.__setattr__(self, 'e', self.e + shift)

    def __neg__(self):
        return Dyadic(-self.m, self.e)

    def __lt__(self, other):
        if self.m < 0 <= other.m:
            return True
        if other.m < 0 <= self.m:
            return False
        if self.m == 0 or other.m == 0:
            return self.m < other.m
        a, b = abs(self.m), abs(other.m)
        ta, tb = a.bit_length() + self.e, b.bit_length() + other.e
        if ta != tb:
            less = ta < tb
        elif self.e >= other.e:
            less = (a << (self.e - other.e)) < b
        else:
            less = a < (b << (other.e - self.e))
        return less if self.m > 0 else (not less and self != other)


ZERO, TWO, FOUR = Dyadic(0), Dyadic(2), Dyadic(4)


def scaled_integer(x, exponent, up):
    """Floor/ceil x / 2**exponent. Caller bounds positive shifts by precision."""
    shift = x.e - exponent
    if shift >= 0:
        return x.m << shift
    return -((-x.m) >> -shift) if up else x.m >> -shift


def rounded(x, bits, up):
    if bits < 2:
        raise ValueError('precision must be at least two bits')
    shift = max(0, abs(x.m).bit_length() - bits)
    if shift == 0:
        return x
    return Dyadic(scaled_integer(x, x.e + shift, up), x.e + shift)


def add(a, b, bits, up):
    if a == -b:
        return ZERO
    if a.m == 0:
        return rounded(b, bits, up)
    if b.m == 0:
        return rounded(a, bits, up)
    grid = max(abs(a.m).bit_length() + a.e,
               abs(b.m).bit_length() + b.e) - bits
    value = Dyadic(scaled_integer(a, grid, up) + scaled_integer(b, grid, up), grid)
    return rounded(value, bits, up)


def mul(a, b, bits, up):
    return rounded(Dyadic(a.m * b.m, a.e + b.e), bits, up)


@dataclass(frozen=True)
class Interval:
    lo: Dyadic
    hi: Dyadic
    bits: int = 128

    def __post_init__(self):
        if self.hi < self.lo or self.bits < 2:
            raise ValueError('invalid interval or precision')

    @classmethod
    def exact(cls, x, bits=128):
        return cls(rounded(x, bits, False), rounded(x, bits, True), bits)

    def compatible(self, other):
        if self.bits != other.bits:
            raise ValueError('explicit precision conversion required')

    def __neg__(self):
        return Interval(-self.hi, -self.lo, self.bits)

    def __add__(self, other):
        self.compatible(other)
        return Interval(add(self.lo, other.lo, self.bits, False),
                        add(self.hi, other.hi, self.bits, True), self.bits)

    def __sub__(self, other):
        return self + -other

    def __mul__(self, other):
        self.compatible(other)
        products = [(a, b) for a in (self.lo, self.hi) for b in (other.lo, other.hi)]
        return Interval(min(mul(a, b, self.bits, False) for a, b in products),
                        max(mul(a, b, self.bits, True) for a, b in products), self.bits)

    def square(self):
        lower = ZERO if self.lo <= ZERO <= self.hi else min(
            mul(self.lo, self.lo, self.bits, False),
            mul(self.hi, self.hi, self.bits, False))
        upper = max(mul(self.lo, self.lo, self.bits, True),
                    mul(self.hi, self.hi, self.bits, True))
        return Interval(lower, upper, self.bits)

    def contains(self, x):
        return self.lo <= x <= self.hi


@dataclass(frozen=True)
class ComplexBox:
    re: Interval
    im: Interval

    def __post_init__(self):
        self.re.compatible(self.im)

    @classmethod
    def exact(cls, re=ZERO, im=ZERO, bits=128):
        return cls(Interval.exact(re, bits), Interval.exact(im, bits))

    def __add__(self, other):
        return ComplexBox(self.re + other.re, self.im + other.im)

    def __sub__(self, other):
        return ComplexBox(self.re - other.re, self.im - other.im)

    def __mul__(self, other):
        return ComplexBox(self.re * other.re - self.im * other.im,
                          self.re * other.im + self.im * other.re)

    def square(self):
        product = self.re * self.im
        return ComplexBox(self.re.square() - self.im.square(), product + product)

    def norm_squared(self):
        return self.re.square() + self.im.square()


def circle_membership(reference, offset, center, radius):
    """Three-valued enclosure result for a CLOSED circle; never infer from center.

    reference/center are exact dyadic pairs. Subtract them BEFORE enclosing or
    adding tiny offsets, to preserve shared-anchor cancellation at extreme depth.
    """
    if radius < ZERO:
        raise ValueError('negative radius')
    bits = offset.re.bits
    differences = [Interval(add(a, b.__neg__(), bits, False),
                            add(a, b.__neg__(), bits, True), bits)
                   for a, b in zip(reference, center)]
    displacement = ComplexBox(*differences) + offset
    distance = displacement.norm_squared()
    radius_squared = Interval.exact(radius, bits).square()
    if distance.hi <= radius_squared.lo:
        return 'inside'
    if distance.lo > radius_squared.hi:
        return 'outside'
    return 'unknown'


def direct_orbit(point, steps):
    z = ComplexBox.exact(bits=point.re.bits)
    yield z
    for _ in range(steps):
        z = z.square() + point
        yield z


def perturbation_orbit(reference, offset, steps):
    """Enclose the exact orbit at c=C+dc; reference orbit ALSO enclosed here.

    Independent interval dependencies enlarge bounds but cannot justify narrowing.
    No heuristic glitch threshold, omitted nonlinear term, or unchecked reference.
    """
    z = ComplexBox.exact(bits=reference.re.bits)
    delta = ComplexBox.exact(bits=reference.re.bits)
    yield z + delta
    for _ in range(steps):
        cross = z * delta
        delta = cross + cross + delta.square() + offset
        z = z.square() + reference
        yield z + delta


def escape_step(orbit):
    for step, z in enumerate(orbit):
        # Strict > is essential: c=-2 reaches modulus exactly 2 and is bounded.
        if z.norm_squared().lo > FOUR:
            return step
    return None  # Unknown, NEVER membership or nonescape forever.


def reference_residuals(reference, samples):
    """Conservative local certificates rho[n] contains A[n]^2+C-A[n+1].

    Samples are exact dyadic pairs, not implicitly trusted orbit values.
    This reference implementation recomputes the bounds; a future proof must
    constrain the SAME residual relation rather than trusting supplied samples.
    """
    if not samples or samples[0] != (ZERO, ZERO):
        raise ValueError('reference must start at zero')
    bits = reference.re.bits
    return [ComplexBox.exact(*a, bits).square() + reference -
            ComplexBox.exact(*b, bits) for a, b in zip(samples, samples[1:])]


def contains_box(outer, inner):
    outer.re.compatible(inner.re)
    return all(a.lo <= b.lo and b.hi <= a.hi
               for a, b in ((outer.re, inner.re), (outer.im, inner.im)))


def certified_reference_orbit(reference, offset, samples, residuals):
    """Perturb around rounded/arbitrary samples, with CHECKED residual correction.

    A hash/commitment to samples cannot replace the residual validation here.
    """
    required = reference_residuals(reference, samples)
    if len(residuals) != len(required) or any(
            not contains_box(given, needed) for given, needed in zip(residuals, required)):
        raise ValueError('reference residual certificate rejected')
    delta = ComplexBox.exact(bits=reference.re.bits)
    yield delta
    for index, rho in enumerate(residuals):
        a = ComplexBox.exact(*samples[index], reference.re.bits)
        cross = a * delta
        delta = cross + cross + delta.square() + offset + rho
        yield ComplexBox.exact(*samples[index + 1], reference.re.bits) + delta
