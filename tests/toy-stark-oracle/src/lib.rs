//! Independent algebra/hash prework. No proof format or security claim is defined here.
use p3_baby_bear::{BabyBear, default_babybear_poseidon2_16};
use p3_field::{
    BasedVectorSpace, Field, PrimeCharacteristicRing, PrimeField32, TwoAdicField,
    extension::BinomialExtensionField,
};
use p3_symmetric::Permutation;
pub type F = BabyBear;
pub type K = BinomialExtensionField<F, 4>;
pub type Digest = [u32; 8];
pub const P: u32 = 2_013_265_921;
pub const N: usize = 8;
pub const D: usize = 32;
pub const SHIFT: u32 = 31;

pub fn canonical(x: u32) -> Option<F> {
    (x < P).then(|| F::from_u32(x))
}
pub fn ext(words: [u32; 4]) -> Option<K> {
    let values = words.map(canonical);
    if values.iter().any(Option::is_none) {
        return None;
    }
    K::from_basis_coefficients_slice(&values.map(Option::unwrap))
}
pub fn words(x: K) -> [u32; 4] {
    std::array::from_fn(|i| {
        <K as BasedVectorSpace<F>>::as_basis_coefficients_slice(&x)[i].as_canonical_u32()
    })
}
pub fn root(log: usize) -> F {
    F::two_adic_generator(log)
}
pub fn points(log: usize, shift: F) -> Vec<F> {
    let r = root(log);
    (0..1usize << log)
        .map(|i| shift * r.exp_u64(i as u64))
        .collect()
}
pub fn evaluate(coefficients: &[K], x: K) -> K {
    coefficients.iter().rev().fold(K::ZERO, |a, &c| a * x + c)
}
/// Direct evaluations rather than a radix-2 FFT, deliberately independent of Fe's NTT.
pub fn coset_evaluate(coefficients: &[K], log: usize, shift: F) -> Vec<K> {
    points(log, shift)
        .into_iter()
        .map(|x| evaluate(coefficients, K::from(x)))
        .collect()
}
/// Inverse DFT, including the inverse shift on each recovered coefficient.
pub fn coset_interpolate(values: &[K], shift: F) -> Vec<K> {
    assert!(values.len().is_power_of_two());
    assert_ne!(shift, F::ZERO);
    let n = values.len();
    let r_inv = root(n.ilog2() as usize).inverse();
    let scale = F::from_usize(n).inverse();
    let shift_inv = shift.inverse();
    (0..n)
        .map(|j| {
            let sum = values.iter().enumerate().fold(K::ZERO, |a, (i, &y)| {
                a + y * K::from(r_inv.exp_u64((i * j) as u64))
            });
            sum * K::from(scale * shift_inv.exp_u64(j as u64))
        })
        .collect()
}
fn permute(input: [F; 16]) -> [F; 16] {
    default_babybear_poseidon2_16().permute(input)
}
/// Explicit interoperability reference: tests/oracle-rust reference_field_commitment.
/// Overwrites rate words; an incomplete final block retains unoverwritten prior state.
pub fn commit(tag: [u8; 4], fields: &[u32]) -> Option<Digest> {
    let mut message = vec![u32::from_be_bytes(tag), u32::try_from(fields.len()).ok()?];
    message.extend_from_slice(fields);
    let mut state = [F::ZERO; 16];
    for block in message.chunks(8) {
        for (i, &value) in block.iter().enumerate() {
            state[i] = canonical(value)?;
        }
        state = permute(state);
    }
    Some(std::array::from_fn(|i| state[i].as_canonical_u32()))
}
pub fn compress(left: Digest, right: Digest) -> Option<Digest> {
    let mut state = [F::ZERO; 16];
    for (i, value) in left.into_iter().chain(right).enumerate() {
        state[i] = canonical(value)?;
    }
    let output = permute(state);
    Some(std::array::from_fn(|i| output[i].as_canonical_u32()))
}
#[derive(Debug)]
pub struct Tree {
    layers: Vec<Vec<Digest>>,
}
impl Tree {
    pub fn new(leaves: Vec<Digest>) -> Option<Self> {
        if !leaves.len().is_power_of_two() || leaves.iter().flatten().any(|&x| x >= P) {
            return None;
        }
        let mut layers = vec![leaves];
        while layers.last()?.len() > 1 {
            let next = layers
                .last()?
                .chunks_exact(2)
                .map(|x| compress(x[0], x[1]).unwrap())
                .collect();
            layers.push(next);
        }
        Some(Self { layers })
    }
    pub fn root(&self) -> Digest {
        self.layers.last().unwrap()[0]
    }
    pub fn path(&self, mut index: usize) -> Option<Vec<Digest>> {
        if index >= self.layers[0].len() {
            return None;
        }
        let mut path = Vec::new();
        for layer in &self.layers[..self.layers.len() - 1] {
            path.push(layer[index ^ 1]);
            index >>= 1;
        }
        Some(path)
    }
}
pub fn verify_path(mut leaf: Digest, mut index: usize, path: &[Digest], root: Digest) -> bool {
    if path.len() >= usize::BITS as usize || index >= (1usize << path.len()) {
        return false;
    }
    for &sibling in path {
        let value = if index & 1 == 0 {
            compress(leaf, sibling)
        } else {
            compress(sibling, leaf)
        };
        let Some(value) = value else {
            return false;
        };
        leaf = value;
        index >>= 1;
    }
    leaf == root && leaf.iter().all(|&x| x < P)
}
#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn domains() {
        let g = root(3);
        let w = root(5);
        let d = points(5, F::from_u32(SHIFT));
        assert_eq!(w.exp_u64(4), g);
        assert_ne!(F::from_u32(SHIFT).exp_u64(32), F::ONE);
        let h = points(3, F::ONE);
        for i in 0..D {
            assert!(!h.contains(&d[i]));
            assert_eq!(d[i] * g, d[(i + 4) % D]);
            assert_eq!(-d[i], d[(i + 16) % D]);
        }
        // Root convention is recorded explicitly; a different primitive root needs a mapping.
        assert_eq!(root(3), F::from_u32(31).exp_u64(u64::from(P - 1) / 8));
    }
    #[test]
    fn extension_relation_and_inverse() {
        let u = ext([0, 1, 0, 0]).unwrap();
        assert_eq!(u.exp_u64(4), K::from(F::from_u32(11)));
        for i in 1..50 {
            let a = ext([i, 2 * i + 1, 3 * i + 2, 4 * i + 3]).unwrap();
            assert_eq!(a * a.inverse(), K::ONE);
            assert_eq!(ext(words(a)), Some(a));
        }
    }
    #[test]
    fn transforms_roundtrip() {
        for log in 0..=5 {
            for shift in [F::ONE, F::from_u32(SHIFT)] {
                let c = (0..1usize << log)
                    .map(|i| ext([i as u32, 3 * i as u32 + 1, 0, 7]).unwrap())
                    .collect::<Vec<_>>();
                assert_eq!(coset_interpolate(&coset_evaluate(&c, log, shift), shift), c);
            }
        }
    }
    #[test]
    fn polynomial_against_integer_arithmetic() {
        let c = [7u32, 13, 29, 31, 101, 1009];
        let ck = c.map(|x| K::from(F::from_u32(x)));
        for x in points(5, F::from_u32(SHIFT)) {
            let z = u64::from(x.as_canonical_u32());
            let p = u64::from(P);
            let expected = c
                .iter()
                .rev()
                .fold(0u64, |a, &b| (a * z + u64::from(b)) % p);
            assert_eq!(words(evaluate(&ck, K::from(x))), [expected as u32, 0, 0, 0]);
        }
    }
    #[test]
    fn canonical_inputs() {
        for x in [P, u32::MAX] {
            assert!(canonical(x).is_none());
            assert!(ext([0, x, 0, 0]).is_none());
            assert!(commit(*b"TEST", &[x]).is_none());
            assert!(compress([x; 8], [0; 8]).is_none());
        }
        assert!(canonical(P - 1).is_some());
        assert!(Tree::new(vec![]).is_none());
    }
    #[test]
    fn paths_all_positions_and_mutations() {
        let leaves = (0..32)
            .map(|i| commit(*b"TEST", &[i, i + 1]).unwrap())
            .collect::<Vec<_>>();
        let tree = Tree::new(leaves.clone()).unwrap();
        for (i, &leaf) in leaves.iter().enumerate() {
            let path = tree.path(i).unwrap();
            assert!(verify_path(leaf, i, &path, tree.root()));
            assert!(!verify_path(leaf, i ^ 1, &path, tree.root()));
            let mut bad = path.clone();
            bad[0][0] ^= 1;
            assert!(!verify_path(leaf, i, &bad, tree.root()));
            assert!(!verify_path(leaf, i + 32, &path, tree.root()));
        }
    }
}

#[cfg(test)]
mod interoperability {
    use super::*;
    /// Deliberately mirrors the previously shipped oracle's public framing, not Fe proof code.
    fn existing_reference(tag: [u8; 4], fields: &[u32]) -> Digest {
        let mut message = vec![u32::from_be_bytes(tag), fields.len() as u32];
        message.extend_from_slice(fields);
        let mut state = [0u32; 16];
        for block in message.chunks(8) {
            state[..block.len()].copy_from_slice(block);
            let mut field_state = state.map(F::from_u32);
            default_babybear_poseidon2_16().permute_mut(&mut field_state);
            state = field_state.map(|v| v.as_canonical_u32());
        }
        state[..8].try_into().unwrap()
    }
    #[test]
    fn hash_block_boundaries_match_existing_oracle() {
        for length in [0, 1, 5, 6, 7, 8, 13, 14, 15, 16, 31, 32] {
            let fields = (0..length).map(|i| 19 * i + 7).collect::<Vec<_>>();
            assert_eq!(
                commit(*b"TEST", &fields),
                Some(existing_reference(*b"TEST", &fields))
            );
        }
    }
    #[test]
    fn extension_multiplication_against_integer_convolution() {
        let modulus = u64::from(P);
        for i in 1..40u32 {
            let a = [P - i, 7 * i, i * i, 13];
            let b = [37, P - 2 * i, 11 * i, 5];
            let mut product = [0u64; 7];
            for j in 0..4 {
                for k in 0..4 {
                    product[j + k] = (product[j + k] + u64::from(a[j]) * u64::from(b[k])) % modulus;
                }
            }
            for degree in (4..7).rev() {
                product[degree - 4] = (product[degree - 4] + 11 * product[degree]) % modulus;
            }
            assert_eq!(
                words(ext(a).unwrap() * ext(b).unwrap()),
                std::array::from_fn(|j| product[j] as u32)
            );
        }
    }
}
