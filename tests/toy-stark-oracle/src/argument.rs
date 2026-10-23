//! Experimental, non-hiding argument from TOY-BITS-CONTRACT.md. Not a production protocol.
use crate::*;
use p3_field::{Field, PrimeCharacteristicRing};
pub const PROOF_WORDS: usize = 2456;
pub const QUERY_WORDS: usize = 300;
#[derive(Clone, Debug)]
pub struct Transcript {
    pub r: [K; 8],
    pub q: K,
    pub rf: [K; 5],
    pub beta: [K; 3],
    pub queries: [usize; 8],
}
fn hash(tag: [u8; 4], fields: &[u32]) -> Digest {
    commit(tag, fields).expect("canonical internal hash input")
}
fn bind(tag: [u8; 4], a: Digest, b: Digest) -> Digest {
    hash(tag, &[a.as_slice(), b.as_slice()].concat())
}
fn squeeze(tag: [u8; 4], t: Digest, index: u32) -> K {
    let h = hash(tag, &[t.as_slice(), &[index]].concat());
    ext(h[..4].try_into().unwrap()).unwrap()
}
fn flatten(values: &[K]) -> Vec<u32> {
    values.iter().flat_map(|&v| words(v)).collect()
}
fn digest(proof: &[u32], offset: usize) -> Digest {
    proof[offset..offset + 8].try_into().unwrap()
}
fn extension(proof: &[u32], offset: usize) -> K {
    ext(proof[offset..offset + 4].try_into().unwrap()).unwrap()
}
fn seed(s: u32, trace: Digest) -> (Digest, [K; 8]) {
    let t0 = hash(*b"TKP0", &[1, 3, 5, 31, 11, 8, 3, 1, 1, 4, 1, s]);
    let t1 = bind(*b"TKT1", t0, trace);
    (t1, std::array::from_fn(|i| squeeze(*b"TKR1", t1, i as u32)))
}
/// Injectable only for sampler tests, never accepted by the verifier.
pub fn sample_q(mut candidate: impl FnMut(u32) -> K) -> Result<K, u32> {
    for counter in 0..8 {
        let q = candidate(counter);
        if valid_q(q) {
            return Ok(q);
        }
    }
    Err(2)
}
pub fn valid_q(q: K) -> bool {
    q != K::ZERO
        && q.exp_u64(8) != K::ONE
        && (q / K::from(F::from_u32(SHIFT))).exp_u64(32) != K::ONE
}
/// Injectable only for sampler tests. Candidates must already be canonical field words.
pub fn sample_query(mut candidate: impl FnMut(u32) -> u32) -> Result<usize, u32> {
    for counter in 0..16 {
        let e = candidate(counter);
        if e < P - 1 {
            return Ok((e % 16) as usize);
        }
    }
    Err(2)
}
fn q_stage(t1: Digest, composition: Digest) -> Result<(Digest, K), u32> {
    let t2 = bind(*b"TKC1", t1, composition);
    Ok((t2, sample_q(|i| squeeze(*b"TKZ1", t2, i))?))
}
fn answer_stage(t2: Digest, answers: [K; 5]) -> (Digest, [K; 5], K) {
    let t3 = hash(
        *b"TKA1",
        &[t2.as_slice(), flatten(&answers).as_slice()].concat(),
    );
    (
        t3,
        std::array::from_fn(|i| squeeze(*b"TKG1", t3, i as u32)),
        squeeze(*b"TKB1", t3, 1),
    )
}
fn rest_stage(t3: Digest, l1: Digest, l2: Digest, c: K) -> Result<([K; 2], [usize; 8]), u32> {
    let t4 = bind(*b"TKL1", t3, l1);
    let b2 = squeeze(*b"TKB1", t4, 2);
    let t5 = bind(*b"TKL2", t4, l2);
    let b3 = squeeze(*b"TKB1", t5, 3);
    let t6 = hash(*b"TKE1", &[t5.as_slice(), words(c).as_slice()].concat());
    let mut queries = [0; 8];
    for (m, j) in queries.iter_mut().enumerate() {
        *j = sample_query(|counter| {
            hash(*b"TKQ1", &[t6.as_slice(), &[m as u32, counter]].concat())[0]
        })?;
    }
    Ok(([b2, b3], queries))
}
pub fn derive(s: u32, proof: &[u32]) -> Result<(Transcript, [K; 5]), u32> {
    if proof.len() != PROOF_WORDS || s >= P || proof.iter().any(|&x| x >= P) {
        return Err(1);
    }
    let (t1, r) = seed(s, digest(proof, 0));
    let (t2, q) = q_stage(t1, digest(proof, 8))?;
    let answers = std::array::from_fn(|i| extension(proof, 16 + 4 * i));
    let (t3, rf, b1) = answer_stage(t2, answers);
    let (b, queries) = rest_stage(
        t3,
        digest(proof, 36),
        digest(proof, 44),
        extension(proof, 52),
    )?;
    Ok((
        Transcript {
            r,
            q,
            rf,
            beta: [b1, b[0], b[1]],
            queries,
        },
        answers,
    ))
}
/// Eq.(5), including degree corrections, in interleaved coefficient order.
pub fn composition(x: K, mask: [K; 4], r: [K; 8], s: u32) -> K {
    let [b0, b1, a0, a1] = mask;
    let last = K::from(root(3).inverse());
    let zh = x.exp_u64(8) - K::ONE;
    let quotients = [
        (b0 * b0 - b0) / zh,
        (a1 - a0 - b1) * (x - last) / zh,
        (a0 - b0) / (x - K::ONE),
        (a0 - K::from(F::from_u32(s))) / (x - last),
    ];
    let powers = [x, x.exp_u64(7), x, x];
    (0..4).fold(K::ZERO, |sum, i| {
        sum + (r[2 * i] + r[2 * i + 1] * powers[i]) * quotients[i]
    })
}
pub fn deep(x: K, y: [K; 3], answers: [K; 5], rf: [K; 5], q: K) -> K {
    let gq = q * K::from(root(3));
    let sources = [y[0], y[0], y[1], y[1], y[2]];
    (0..5).fold(K::ZERO, |sum, i| {
        sum + rf[i] * (sources[i] - answers[i]) / (x - if i == 1 || i == 3 { gq } else { q })
    })
}
pub fn fold(positive: K, negative: K, x: F, beta: K) -> K {
    let half = K::from(F::from_u32(2).inverse());
    (positive + negative) * half + beta * (positive - negative) * half / K::from(x)
}
fn folded(values: &[K], shift: F, beta: K) -> Vec<K> {
    let half = values.len() / 2;
    let domain = points(values.len().ilog2() as usize, shift);
    (0..half)
        .map(|i| fold(values[i], values[i + half], domain[i], beta))
        .collect()
}
fn ext_tree(tag: [u8; 4], values: &[K]) -> Tree {
    Tree::new(values.iter().map(|&v| hash(tag, &words(v))).collect()).unwrap()
}
fn append_opening(out: &mut Vec<u32>, value: &[u32], tree: &Tree, index: usize) {
    out.extend_from_slice(value);
    for sibling in tree.path(index).unwrap() {
        out.extend_from_slice(&sibling);
    }
}
#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub enum Mode {
    Honest,
    FalseStatement,
    FalseStatementOodRepaired,
    AdaptiveZero,
    WrongAnswer,
    HighDegreeSource,
    UnrelatedComposition,
    WrongLayer1,
    WrongLayer2,
    WrongFinal,
}
#[derive(Debug)]
pub struct Audit {
    pub trace_coefficients: [Vec<K>; 2],
    pub composition_coefficients: Vec<K>,
    pub layer_coefficients: Vec<Vec<K>>,
    pub composition_matches_all_points: bool,
    pub final_is_constant: bool,
    pub all_merkle_paths_valid: bool,
    pub coefficient_folds_match: bool,
}
#[derive(Debug)]
pub struct Generated {
    pub proof: Vec<u32>,
    pub transcript: Transcript,
    pub audit: Audit,
}
pub fn prove(s: u32, bits: [u32; 8]) -> Result<Generated, &'static str> {
    prove_mode(s, bits, Mode::Honest)
}
pub fn prove_mode(s: u32, bits: [u32; 8], mode: Mode) -> Result<Generated, &'static str> {
    if s >= P || bits.iter().any(|&b| b > 1) {
        return Err("invalid witness");
    }
    if mode == Mode::Honest && bits.iter().sum::<u32>() != s {
        return Err("weight mismatch");
    }
    let mut sum = 0;
    let b = bits.map(|x| K::from(F::from_u32(x)));
    let a = bits.map(|x| {
        sum += x;
        K::from(F::from_u32(sum))
    });
    let mut bc = coset_interpolate(&b, F::ONE);
    let mut ac = coset_interpolate(&a, F::ONE);
    if mode == Mode::AdaptiveZero {
        bc = vec![K::ZERO; 8];
        ac = vec![K::ZERO; 8];
    }
    if mode == Mode::HighDegreeSource {
        bc.resize(10, K::ZERO);
        bc[1] -= K::ONE;
        bc[9] += K::ONE;
    }
    let shift = F::from_u32(SHIFT);
    let domain = points(5, shift);
    let bv = coset_evaluate(&bc, 5, shift);
    let av = coset_evaluate(&ac, 5, shift);
    let trace = Tree::new(
        (0..32)
            .map(|i| hash(*b"TKTL", &[words(bv[i])[0], words(av[i])[0]]))
            .collect(),
    )
    .unwrap();
    let (t1, r) = seed(s, trace.root());
    let mut cv = (0..32)
        .map(|i| {
            composition(
                K::from(domain[i]),
                [bv[i], bv[(i + 4) % 32], av[i], av[(i + 4) % 32]],
                r,
                s,
            )
        })
        .collect::<Vec<_>>();
    if mode == Mode::AdaptiveZero || mode == Mode::UnrelatedComposition {
        cv = vec![K::ZERO; 32];
    }
    let cc = coset_interpolate(&cv, shift);
    let comp = ext_tree(*b"TKCL", &cv);
    let (t2, q) = q_stage(t1, comp.root()).map_err(|_| "q sampler exhausted")?;
    let gq = q * K::from(root(3));
    let mut answers = [
        evaluate(&bc, q),
        evaluate(&bc, gq),
        evaluate(&ac, q),
        evaluate(&ac, gq),
        evaluate(&cc, q),
    ];
    if mode == Mode::WrongAnswer {
        answers[3] += K::ONE;
    }
    if mode == Mode::AdaptiveZero
        || mode == Mode::WrongAnswer
        || mode == Mode::FalseStatementOodRepaired
    {
        answers[4] = composition(q, [answers[0], answers[1], answers[2], answers[3]], r, s);
    }
    let (t3, rf, b1) = answer_stage(t2, answers);
    let virtual_values = (0..32)
        .map(|i| deep(K::from(domain[i]), [bv[i], av[i], cv[i]], answers, rf, q))
        .collect::<Vec<_>>();
    let mut l1v = folded(&virtual_values, shift, b1);
    if mode == Mode::WrongLayer1 {
        for v in &mut l1v {
            *v += K::ONE;
        }
    }
    let l1 = ext_tree(*b"TKF1", &l1v);
    let t4 = bind(*b"TKL1", t3, l1.root());
    let b2 = squeeze(*b"TKB1", t4, 2);
    let mut l2v = folded(&l1v, shift.exp_u64(2), b2);
    if mode == Mode::WrongLayer2 {
        for v in &mut l2v {
            *v += K::ONE;
        }
    }
    let l2 = ext_tree(*b"TKF2", &l2v);
    let t5 = bind(*b"TKL2", t4, l2.root());
    let b3 = squeeze(*b"TKB1", t5, 3);
    let l3v = folded(&l2v, shift.exp_u64(4), b3);
    let c = l3v[0]
        + if mode == Mode::WrongFinal {
            K::ONE
        } else {
            K::ZERO
        };
    let (_, queries) =
        rest_stage(t3, l1.root(), l2.root(), c).map_err(|_| "query sampler exhausted")?;
    let mut proof = Vec::with_capacity(PROOF_WORDS);
    proof.extend(trace.root());
    proof.extend(comp.root());
    proof.extend(flatten(&answers));
    proof.extend(l1.root());
    proof.extend(l2.root());
    proof.extend(words(c));
    for &j in &queries {
        for i in [j, j + 16] {
            append_opening(&mut proof, &[words(bv[i])[0], words(av[i])[0]], &trace, i);
        }
        for i in [j, j + 16] {
            append_opening(&mut proof, &words(cv[i]), &comp, i);
        }
        for i in [j % 8, j % 8 + 8] {
            append_opening(&mut proof, &words(l1v[i]), &l1, i);
        }
        for i in [j % 4, j % 4 + 4] {
            append_opening(&mut proof, &words(l2v[i]), &l2, i);
        }
    }
    assert_eq!(proof.len(), PROOF_WORDS);
    let layers = vec![
        coset_interpolate(&virtual_values, shift),
        coset_interpolate(&l1v, shift.exp_u64(2)),
        coset_interpolate(&l2v, shift.exp_u64(4)),
        coset_interpolate(&l3v, shift.exp_u64(8)),
    ];
    let all_merkle_paths_valid = [
        (
            &trace,
            (0..32)
                .map(|i| hash(*b"TKTL", &[words(bv[i])[0], words(av[i])[0]]))
                .collect::<Vec<_>>(),
        ),
        (
            &comp,
            cv.iter().map(|&v| hash(*b"TKCL", &words(v))).collect(),
        ),
        (
            &l1,
            l1v.iter().map(|&v| hash(*b"TKF1", &words(v))).collect(),
        ),
        (
            &l2,
            l2v.iter().map(|&v| hash(*b"TKF2", &words(v))).collect(),
        ),
    ]
    .into_iter()
    .all(|(tree, leaves)| {
        leaves
            .iter()
            .enumerate()
            .all(|(i, &leaf)| verify_path(leaf, i, &tree.path(i).unwrap(), tree.root()))
    });
    let coefficient_folds_match = [b1, b2, b3].into_iter().enumerate().all(|(round, beta)| {
        let expected = layers[round]
            .chunks_exact(2)
            .map(|c| c[0] + beta * c[1])
            .collect::<Vec<_>>();
        expected == layers[round + 1]
    });
    let matches = (0..32).all(|i| {
        cv[i]
            == composition(
                K::from(domain[i]),
                [bv[i], bv[(i + 4) % 32], av[i], av[(i + 4) % 32]],
                r,
                s,
            )
    });
    Ok(Generated {
        proof,
        transcript: Transcript {
            r,
            q,
            rf,
            beta: [b1, b2, b3],
            queries,
        },
        audit: Audit {
            trace_coefficients: [coset_interpolate(&bv, shift), coset_interpolate(&av, shift)],
            composition_coefficients: cc,
            layer_coefficients: layers,
            composition_matches_all_points: matches,
            final_is_constant: l3v.iter().all(|&v| v == c),
            all_merkle_paths_valid,
            coefficient_folds_match,
        },
    })
}
fn read_opening(
    proof: &[u32],
    cursor: &mut usize,
    width: usize,
    depth: usize,
    tag: [u8; 4],
    index: usize,
    root: Digest,
) -> Result<Vec<u32>, ()> {
    let value = proof[*cursor..*cursor + width].to_vec();
    *cursor += width;
    let path = (0..depth)
        .map(|_| {
            let x = digest(proof, *cursor);
            *cursor += 8;
            x
        })
        .collect::<Vec<_>>();
    if verify_path(hash(tag, &value), index, &path, root) {
        Ok(value)
    } else {
        Err(())
    }
}
pub fn verify(s: u32, proof: &[u32]) -> u32 {
    let (t, answers) = match derive(s, proof) {
        Ok(x) => x,
        Err(status) => return status,
    };
    if composition(
        t.q,
        [answers[0], answers[1], answers[2], answers[3]],
        t.r,
        s,
    ) != answers[4]
    {
        return 6;
    }
    let shift = F::from_u32(SHIFT);
    let domain = points(5, shift);
    let d1 = points(4, shift.exp_u64(2));
    let d2 = points(3, shift.exp_u64(4));
    let c = extension(proof, 52);
    for (m, &j) in t.queries.iter().enumerate() {
        let mut cursor = 56 + m * QUERY_WORDS;
        let mut trace = [K::ZERO; 4];
        let mut comp = [K::ZERO; 2];
        let mut l1 = [K::ZERO; 2];
        let mut l2 = [K::ZERO; 2];
        for side in 0..2 {
            let Ok(v) = read_opening(
                proof,
                &mut cursor,
                2,
                5,
                *b"TKTL",
                j + 16 * side,
                digest(proof, 0),
            ) else {
                return 3;
            };
            trace[2 * side] = K::from(F::from_u32(v[0]));
            trace[2 * side + 1] = K::from(F::from_u32(v[1]));
        }
        for side in 0..2 {
            let Ok(v) = read_opening(
                proof,
                &mut cursor,
                4,
                5,
                *b"TKCL",
                j + 16 * side,
                digest(proof, 8),
            ) else {
                return 4;
            };
            comp[side] = ext(v.try_into().unwrap()).unwrap();
        }
        for side in 0..2 {
            let Ok(v) = read_opening(
                proof,
                &mut cursor,
                4,
                4,
                *b"TKF1",
                j % 8 + 8 * side,
                digest(proof, 36),
            ) else {
                return 5;
            };
            l1[side] = ext(v.try_into().unwrap()).unwrap();
        }
        for side in 0..2 {
            let Ok(v) = read_opening(
                proof,
                &mut cursor,
                4,
                3,
                *b"TKF2",
                j % 4 + 4 * side,
                digest(proof, 44),
            ) else {
                return 5;
            };
            l2[side] = ext(v.try_into().unwrap()).unwrap();
        }
        assert_eq!(cursor, 56 + (m + 1) * QUERY_WORDS);
        let positive = deep(
            K::from(domain[j]),
            [trace[0], trace[1], comp[0]],
            answers,
            t.rf,
            t.q,
        );
        let negative = deep(
            K::from(domain[j + 16]),
            [trace[2], trace[3], comp[1]],
            answers,
            t.rf,
            t.q,
        );
        if fold(positive, negative, domain[j], t.beta[0]) != l1[j / 8] {
            return 7;
        }
        if fold(l1[0], l1[1], d1[j % 8], t.beta[1]) != l2[(j % 8) / 4] {
            return 7;
        }
        if fold(l2[0], l2[1], d2[j % 4], t.beta[2]) != c {
            return 8;
        }
    }
    0
}
pub fn degree(coefficients: &[K]) -> Option<usize> {
    coefficients.iter().rposition(|&x| x != K::ZERO)
}
#[cfg(test)]
mod tests {
    use super::*;
    const B: [u32; 8] = [1, 0, 1, 0, 0, 1, 0, 0];
    #[test]
    fn honest_cases_and_audit() {
        let cases = [
            (3, B),
            (3, [0, 1, 1, 0, 0, 0, 0, 1]),
            (0, [0; 8]),
            (8, [1; 8]),
        ];
        let mut proofs = Vec::new();
        for (s, b) in cases {
            let g = prove(s, b).unwrap();
            assert_eq!(verify(s, &g.proof), 0);
            assert!(g.audit.composition_matches_all_points);
            assert!(g.audit.final_is_constant);
            assert!(g.audit.all_merkle_paths_valid);
            assert!(g.audit.coefficient_folds_match);
            for c in &g.audit.trace_coefficients {
                assert!(degree(c).is_none_or(|d| d < 8));
            }
            assert!(degree(&g.audit.composition_coefficients).is_none_or(|d| d < 8));
            for (c, bound) in g.audit.layer_coefficients.iter().zip([7, 4, 2, 1]) {
                assert!(degree(c).is_none_or(|d| d < bound));
            }
            proofs.push(g.proof);
        }
        assert_ne!(proofs[0], proofs[1]);
    }
    #[test]
    fn sampler_controls() {
        for invalid in [K::ZERO, K::ONE, K::from(root(3)), K::from(F::from_u32(31))] {
            let mut count = 0;
            assert_eq!(
                sample_q(|_| {
                    count += 1;
                    invalid
                }),
                Err(2)
            );
            assert_eq!(count, 8);
        }
        assert!(valid_q(K::from(F::from_u32(2))));
        assert_eq!(
            sample_q(|i| if i == 7 {
                K::from(F::from_u32(2))
            } else {
                K::ZERO
            }),
            Ok(K::from(F::from_u32(2)))
        );
        let mut count = 0;
        assert_eq!(
            sample_query(|_| {
                count += 1;
                P - 1
            }),
            Err(2)
        );
        assert_eq!(count, 16);
        assert_eq!(sample_query(|i| if i == 15 { 31 } else { P - 1 }), Ok(15));
        assert_eq!(sample_query(|_| P - 2), Ok(15));
    }
    #[test]
    fn malformed_and_named_attacks() {
        let honest = prove(3, B).unwrap();
        assert_ne!(verify(4, &honest.proof), 0);
        for mode in [
            Mode::FalseStatement,
            Mode::FalseStatementOodRepaired,
            Mode::AdaptiveZero,
            Mode::WrongAnswer,
            Mode::HighDegreeSource,
            Mode::UnrelatedComposition,
            Mode::WrongLayer1,
            Mode::WrongLayer2,
            Mode::WrongFinal,
        ] {
            let false_statement =
                matches!(mode, Mode::FalseStatement | Mode::FalseStatementOodRepaired);
            let s = if false_statement { 9 } else { 3 };
            let bits = if false_statement { [1; 8] } else { B };
            let g = prove_mode(s, bits, mode).unwrap();
            let status = verify(s, &g.proof);
            println!("{mode:?}: {status}");
            let expected = match mode {
                Mode::FalseStatement | Mode::UnrelatedComposition => 6,
                Mode::WrongLayer1 | Mode::WrongLayer2 => 7,
                _ => 8,
            };
            assert_eq!(status, expected);
        }
        for offset in [
            0, 8, 16, 36, 44, 52, 56, 58, 140, 144, 228, 232, 300, 304, 2455,
        ] {
            for value in [P, u32::MAX] {
                let mut p = honest.proof.clone();
                p[offset] = value;
                assert_eq!(verify(3, &p), 1);
            }
        }
        assert_eq!(verify(P, &honest.proof), 1);
        assert_eq!(verify(3, &honest.proof[..2455]), 1);
        let mut longer = honest.proof.clone();
        longer.push(0);
        assert_eq!(verify(3, &longer), 1);
    }
}

#[cfg(test)]
mod coverage {
    use super::*;
    #[test]
    fn tags_and_status_execution_order() {
        for (tag, value) in [
            (*b"TKTL", 1414222924),
            (*b"TKCL", 1414218572),
            (*b"TKF1", 1414219313),
            (*b"TKF2", 1414219314),
            (*b"TKP0", 1414221872),
            (*b"TKT1", 1414222897),
            (*b"TKR1", 1414222385),
            (*b"TKC1", 1414218545),
            (*b"TKZ1", 1414224433),
            (*b"TKA1", 1414218033),
            (*b"TKG1", 1414219569),
            (*b"TKB1", 1414218289),
            (*b"TKL1", 1414220849),
            (*b"TKL2", 1414220850),
            (*b"TKE1", 1414219057),
            (*b"TKQ1", 1414222129),
        ] {
            assert_eq!(u32::from_be_bytes(tag), value);
            assert!(value < P);
        }
        let mut bad = prove(3, [1, 0, 1, 0, 0, 1, 0, 0]).unwrap().proof;
        bad[16] ^= 1;
        bad[58] ^= 1;
        assert_eq!(verify(3, &bad), 6);
        bad[58] = P;
        assert_eq!(verify(3, &bad), 1);
        let mut bad = prove_mode(3, [1, 0, 1, 0, 0, 1, 0, 0], Mode::WrongLayer1)
            .unwrap()
            .proof;
        assert_eq!(verify(3, &bad), 7);
        bad[304] ^= 1;
        assert_eq!(verify(3, &bad), 5);
    }
    #[test]
    fn honest_witnesses_exercise_all_initial_pairs_and_duplicates() {
        let mut seen = [false; 16];
        let mut duplicate = false;
        for mask in 0u32..256 {
            if mask.count_ones() != 3 {
                continue;
            }
            let bits = std::array::from_fn(|i| (mask >> i) & 1);
            let g = prove(3, bits).unwrap();
            assert_eq!(verify(3, &g.proof), 0);
            for &j in &g.transcript.queries {
                seen[j] = true;
            }
            for i in 0..8 {
                for j in i + 1..8 {
                    duplicate |= g.transcript.queries[i] == g.transcript.queries[j];
                }
            }
            if seen.iter().all(|&x| x) && duplicate {
                return;
            }
        }
        panic!("missing pairs {seen:?}, duplicates={duplicate}");
    }
}
