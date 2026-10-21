//! Independent full-witness Q12 replay and experimental receipt consistency checker.
//! Reference arithmetic adapted from Fe's mandelbrot_proof_chunk_benchmark.rs at371dcb777.
//! This replays the witness; it is not a succinct verifier or a security certification.
#![allow(dead_code)]
use p3_baby_bear::{BabyBear,default_babybear_poseidon2_16};
use p3_field::{PrimeCharacteristicRing,PrimeField32};
use p3_symmetric::Permutation;

const MODULUS: u32 = 2_013_265_921;
const TWO_ADICITY: u32 = 27;
const MAIN_COLUMN_COUNT: usize = 17;
const AUXILIARY_COLUMN_COUNT: usize = 411;
const AIR_COLUMN_COUNT: usize = MAIN_COLUMN_COUNT + AUXILIARY_COLUMN_COUNT;
const POSEIDON_WIDTH: usize = 16;
const DIGEST_FIELDS: usize = 8;
const EXTENSION_WORDS: usize = 4;
const EXT_NONRESIDUE: u32 = 11;
const FRI_VARIANTS: usize = 2;
const ROW_FIELDS: usize = 7;
const AUXILIARY_FIELDS: usize = 14;
const PUBLIC_FIELDS: usize = 4;
const ESCAPES_BY_Q12_PUBLIC_WORDS: usize = 8;
const COMPUTE_PASSES: usize = 34;

#[allow(dead_code)]
#[derive(Clone, Copy, Debug)]
struct ChunkSpec {
    name: &'static str,
    sketch_dir: &'static str,
    trace: usize,
    lde: usize,
    trace_log: usize,
    fri_rounds: usize,
    c_re_q12: i32,
    c_im_q12: i32,
    bound: u32,
    expected_terminal_step: u32,
}


#[allow(dead_code)]
#[derive(Clone, Copy, Debug)]
struct ProofChunkLayout {
    air_trace: usize,
    packed_main_trace: usize,
    packed_auxiliary_trace: usize,
    packed_public: usize,
    canonical_public: usize,
    trace_valid: usize,
    air_lde_valid: usize,
    public_digest: usize,
    main_trace_root: usize,
    auxiliary_trace_root: usize,
    production_trace_digest_valid: usize,
    main_lde_root: usize,
    auxiliary_lde_root: usize,
    air_lde_root_valid: usize,
    air_transcript: usize,
    air_transcript_valid: usize,
    composition_challenge: usize,
    composition_values: usize,
    composition_value_valid: usize,
    composition_root: usize,
    composition_transcript: usize,
    composition_valid: usize,
    fri_clean: usize,
    fri_observed: usize,
    fri_challenges: usize,
    fri_roots: usize,
    fri_transcripts: usize,
    fri_challenge_valid: usize,
    fri_root_valid: usize,
    fri_transcript_valid: usize,
    fri_round_valid: usize,
    fri_status: usize,
    fri_query_indices: usize,
    fri_query_evaluations: usize,
    fri_query_siblings: usize,
    fri_query_index_valid: usize,
    fri_query_opening_valid: usize,
    fri_query_status: usize,
    status: usize,
    total_words: usize,
}

fn chunk_folded_evaluations(lde: usize) -> usize {
    lde.saturating_sub(1)
}

fn chunk_query_evaluations(fri_rounds: usize) -> usize {
    if fri_rounds == 0 {
        0
    } else {
        2 * fri_rounds - 1
    }
}

fn chunk_query_path_siblings(fri_rounds: usize) -> usize {
    if fri_rounds <= 2 {
        0
    } else {
        (fri_rounds - 2) * (fri_rounds - 1)
    }
}

fn proof_chunk_layout(spec: &ChunkSpec) -> ProofChunkLayout {
    let trace = spec.trace;
    let lde = spec.lde;
    let fri_rounds = spec.fri_rounds;
    let air_trace = 0;
    let packed_main_trace = air_trace + AIR_COLUMN_COUNT * trace;
    let packed_auxiliary_trace = packed_main_trace + trace * ROW_FIELDS;
    let packed_public = packed_auxiliary_trace + trace * AUXILIARY_FIELDS;
    let canonical_public = packed_public + PUBLIC_FIELDS;
    let trace_valid = canonical_public + ESCAPES_BY_Q12_PUBLIC_WORDS;
    let air_lde_valid = trace_valid + 1;
    let public_digest = air_lde_valid + AIR_COLUMN_COUNT;
    let main_trace_root = public_digest + DIGEST_FIELDS;
    let auxiliary_trace_root = main_trace_root + DIGEST_FIELDS;
    let production_trace_digest_valid = auxiliary_trace_root + DIGEST_FIELDS;
    let main_lde_root = production_trace_digest_valid + 3;
    let auxiliary_lde_root = main_lde_root + DIGEST_FIELDS;
    let air_lde_root_valid = auxiliary_lde_root + DIGEST_FIELDS;
    let air_transcript = air_lde_root_valid + 2;
    let air_transcript_valid = air_transcript + DIGEST_FIELDS;
    let composition_challenge = air_transcript_valid + 1;
    let composition_values = composition_challenge + EXTENSION_WORDS;
    let composition_value_valid = composition_values + lde * EXTENSION_WORDS;
    let composition_root = composition_value_valid + lde;
    let composition_transcript = composition_root + DIGEST_FIELDS;
    let composition_valid = composition_transcript + DIGEST_FIELDS;
    let folded_evals = chunk_folded_evaluations(lde);
    let fri_clean = composition_valid + 3;
    let fri_observed = fri_clean + folded_evals * EXTENSION_WORDS;
    let fri_challenges = fri_observed + folded_evals * EXTENSION_WORDS;
    let fri_roots = fri_challenges + FRI_VARIANTS * fri_rounds * EXTENSION_WORDS;
    let fri_transcripts = fri_roots + FRI_VARIANTS * fri_rounds * DIGEST_FIELDS;
    let fri_challenge_valid = fri_transcripts + FRI_VARIANTS * (fri_rounds + 1) * DIGEST_FIELDS;
    let fri_root_valid = fri_challenge_valid + FRI_VARIANTS * fri_rounds;
    let fri_transcript_valid = fri_root_valid + FRI_VARIANTS * fri_rounds;
    let fri_round_valid = fri_transcript_valid + FRI_VARIANTS * (fri_rounds + 1);
    let fri_status = fri_round_valid + FRI_VARIANTS * fri_rounds;
    let fri_query_indices = fri_status + 3;
    let query_evals = chunk_query_evaluations(fri_rounds);
    let query_siblings = chunk_query_path_siblings(fri_rounds);
    let fri_query_evaluations = fri_query_indices + FRI_VARIANTS;
    let fri_query_siblings =
        fri_query_evaluations + FRI_VARIANTS * query_evals * EXTENSION_WORDS;
    let fri_query_index_valid =
        fri_query_siblings + FRI_VARIANTS * query_siblings * DIGEST_FIELDS;
    let fri_query_opening_valid = fri_query_index_valid + FRI_VARIANTS;
    let fri_query_status = fri_query_opening_valid + FRI_VARIANTS;
    let status = fri_query_status + 3;
    let total_words = status + 7;
    ProofChunkLayout {
        air_trace,
        packed_main_trace,
        packed_auxiliary_trace,
        packed_public,
        canonical_public,
        trace_valid,
        air_lde_valid,
        public_digest,
        main_trace_root,
        auxiliary_trace_root,
        production_trace_digest_valid,
        main_lde_root,
        auxiliary_lde_root,
        air_lde_root_valid,
        air_transcript,
        air_transcript_valid,
        composition_challenge,
        composition_values,
        composition_value_valid,
        composition_root,
        composition_transcript,
        composition_valid,
        fri_clean,
        fri_observed,
        fri_challenges,
        fri_roots,
        fri_transcripts,
        fri_challenge_valid,
        fri_root_valid,
        fri_transcript_valid,
        fri_round_valid,
        fri_status,
        fri_query_indices,
        fri_query_evaluations,
        fri_query_siblings,
        fri_query_index_valid,
        fri_query_opening_valid,
        fri_query_status,
        status,
        total_words,
    }
}


fn pow_mod(mut base: u64, mut exponent: u32) -> u32 {
    let modulus = u64::from(MODULUS);
    base %= modulus;
    let mut result = 1u64;
    while exponent != 0 {
        if exponent & 1 == 1 {
            result = result * base % modulus;
        }
        base = base * base % modulus;
        exponent >>= 1;
    }
    result as u32
}

fn add_mod(left: u32, right: u32) -> u32 {
    ((u64::from(left) + u64::from(right)) % u64::from(MODULUS)) as u32
}

fn sub_mod(left: u32, right: u32) -> u32 {
    ((u64::from(left) + u64::from(MODULUS) - u64::from(right)) % u64::from(MODULUS)) as u32
}

fn mul_mod(left: u32, right: u32) -> u32 {
    (u64::from(left) * u64::from(right) % u64::from(MODULUS)) as u32
}

#[derive(Clone, Copy, Debug, Eq, PartialEq)]
struct Ext4([u32; 4]);

#[allow(dead_code)]
impl Ext4 {
    fn zero() -> Self {
        Self([0; 4])
    }

    fn one() -> Self {
        Self::from_base(1)
    }

    fn from_base(value: u32) -> Self {
        Self([value % MODULUS, 0, 0, 0])
    }

    fn add(self, other: Self) -> Self {
        Self(std::array::from_fn(|index| {
            add_mod(self.0[index], other.0[index])
        }))
    }

    fn sub(self, other: Self) -> Self {
        Self(std::array::from_fn(|index| {
            sub_mod(self.0[index], other.0[index])
        }))
    }

    fn scale(self, scalar: u32) -> Self {
        Self(self.0.map(|coefficient| mul_mod(coefficient, scalar)))
    }

    fn mul(self, other: Self) -> Self {
        let mut coefficients = [0u32; 7];
        for left in 0..4 {
            for right in 0..4 {
                coefficients[left + right] = add_mod(
                    coefficients[left + right],
                    mul_mod(self.0[left], other.0[right]),
                );
            }
        }
        for degree in (4..=6).rev() {
            coefficients[degree - 4] = add_mod(
                coefficients[degree - 4],
                mul_mod(coefficients[degree], EXT_NONRESIDUE),
            );
        }
        Self(
            coefficients[..4]
                .try_into()
                .expect("four extension coefficients"),
        )
    }
}

/// O(N log N) Cooley-Tukey radix-2 NTT over BabyBear for fast reference oracle LDEs.
fn fast_ntt(values: &[u32], inverse: bool) -> Vec<u32> {
    let n = values.len();
    assert!(n.is_power_of_two());
    let log_n = n.ilog2();
    let mut a = values.to_vec();
    for i in 0..n {
        let j = i.reverse_bits() >> (usize::BITS - log_n);
        if i < j {
            a.swap(i, j);
        }
    }
    let maximal_root = pow_mod(31, 15);
    let mut root = pow_mod(u64::from(maximal_root), 1 << (TWO_ADICITY - log_n));
    if inverse {
        root = pow_mod(u64::from(root), MODULUS - 2);
    }
    let mut len = 2usize;
    while len <= n {
        let half = len / 2;
        let step_exp = (n / len) as u32;
        let wlen = pow_mod(u64::from(root), step_exp);
        for start in (0..n).step_by(len) {
            let mut w = 1u32;
            for k in 0..half {
                let u = a[start + k];
                let v = mul_mod(a[start + k + half], w);
                a[start + k] = add_mod(u, v);
                a[start + k + half] = sub_mod(u, v);
                w = mul_mod(w, wlen);
            }
        }
        len <<= 1;
    }
    if inverse {
        let inv_n = pow_mod(n as u64, MODULUS - 2);
        for x in &mut a {
            *x = mul_mod(*x, inv_n);
        }
    }
    a
}

fn fast_coset_lde(values: &[u32], output_len: usize, shift: u32) -> Vec<u32> {
    let mut coeffs = fast_ntt(values, true);
    let mut shift_pow = 1u32;
    for c in &mut coeffs {
        *c = mul_mod(*c, shift_pow);
        shift_pow = mul_mod(shift_pow, shift);
    }
    coeffs.resize(output_len, 0);
    fast_ntt(&coeffs, false)
}

fn fast_ext4_coset_interpolate_degree(values: &[Ext4], shift: u32) -> usize {
    let inv_shift = pow_mod(u64::from(shift), MODULUS - 2);
    let mut max_deg = 0usize;
    for coeff_lane in 0..4 {
        let lane_vals = values.iter().map(|v| v.0[coeff_lane]).collect::<Vec<_>>();
        let mut coeffs = fast_ntt(&lane_vals, true);
        let mut inv_pow = 1u32;
        for (deg, c) in coeffs.iter_mut().enumerate() {
            *c = mul_mod(*c, inv_pow);
            inv_pow = mul_mod(inv_pow, inv_shift);
            if *c != 0 && deg > max_deg {
                max_deg = deg;
            }
        }
    }
    max_deg
}

fn signed_magnitude(value: i32) -> (u32, u32) {
    if value < 0 {
        (1, value.unsigned_abs())
    } else {
        (0, value as u32)
    }
}

fn reference_air_rows(spec: &ChunkSpec) -> (Vec<[u32; MAIN_COLUMN_COUNT]>, [u32; 8]) {
    const Q12_SCALE: i32 = 4_096;
    const ESCAPE_RADIUS_SQUARED_Q24: i32 = 67_108_864;
    let mut rows = Vec::with_capacity(spec.trace);
    let mut z_re = 0i32;
    let mut z_im = 0i32;
    let mut terminal_step = 0u32;
    let mut reached_terminal = false;

    for step in 0..spec.trace {
        let rr = z_re * z_re;
        let ii = z_im * z_im;
        let magnitude = rr + ii;
        let real_numerator = rr - ii;
        let q_re = real_numerator >> 12;
        let r_re = real_numerator - q_re * Q12_SCALE;
        let imaginary_numerator = (z_re * 2) * z_im;
        let q_im = imaginary_numerator >> 12;
        let r_im = imaginary_numerator - q_im * Q12_SCALE;
        let (zr_sign, zr) = signed_magnitude(z_re);
        let (zi_sign, zi) = signed_magnitude(z_im);
        let (q_re_sign, q_re_magnitude) = signed_magnitude(q_re);
        let (q_im_sign, q_im_magnitude) = signed_magnitude(q_im);
        let terminal = u32::from(magnitude >= ESCAPE_RADIUS_SQUARED_Q24);
        let row = [
            step as u32,
            zr_sign,
            zr,
            zi_sign,
            zi,
            rr as u32,
            ii as u32,
            magnitude as u32,
            q_re_sign,
            q_re_magnitude,
            r_re as u32,
            q_im_sign,
            q_im_magnitude,
            r_im as u32,
            terminal,
            1,
            terminal,
        ];
        rows.push(row);
        if terminal == 1 {
            terminal_step = step as u32;
            reached_terminal = true;
            let mut pad_row = row;
            pad_row[15] = 0;
            pad_row[16] = 0;
            while rows.len() < spec.trace {
                rows.push(pad_row);
            }
            break;
        }
        z_re = q_re + spec.c_re_q12;
        z_im = q_im + spec.c_im_q12;
    }
    assert!(reached_terminal, "{} must reach escape terminal", spec.name);
    assert_eq!(terminal_step, spec.expected_terminal_step);
    let (c_re_sign, c_re_mag) = signed_magnitude(spec.c_re_q12);
    let (c_im_sign, c_im_mag) = signed_magnitude(spec.c_im_q12);
    let trace_length = terminal_step + 1;
    let public_words = [
        c_re_sign,
        c_re_mag,
        c_im_sign,
        c_im_mag,
        spec.bound,
        terminal_step,
        trace_length,
        spec.trace as u32,
    ];
    (rows, public_words)
}

fn append_range_witness(output: &mut Vec<u32>, value: u32, width: usize) {
    for bit in 0..width {
        output.push((value >> bit) & 1);
    }
    let mut seen = 0;
    for bit in 0..width {
        seen |= (value >> bit) & 1;
        output.push(seen);
    }
}

fn reference_auxiliary_row(row: &[u32; MAIN_COLUMN_COUNT]) -> Vec<u32> {
    let mut output = Vec::with_capacity(AUXILIARY_COLUMN_COUNT);
    for (column, width) in [
        (0, 21),
        (2, 15),
        (4, 15),
        (5, 30),
        (6, 30),
        (7, 31),
        (9, 18),
        (10, 12),
        (12, 19),
        (13, 12),
    ] {
        append_range_witness(&mut output, row[column], width);
    }
    let mut terminal_high_any = 0;
    for bit in 26..31 {
        terminal_high_any |= (row[7] >> bit) & 1;
        output.push(terminal_high_any);
    }
    assert_eq!(output.len(), AUXILIARY_COLUMN_COUNT);
    output
}

fn reference_air_trace_and_lde(spec: &ChunkSpec) -> (Vec<u32>, Vec<u32>, [u32; 8]) {
    let (rows, public_words) = reference_air_rows(spec);
    let auxiliary = rows.iter().map(reference_auxiliary_row).collect::<Vec<_>>();
    let mut trace = Vec::with_capacity(AIR_COLUMN_COUNT * spec.trace);
    for column in 0..MAIN_COLUMN_COUNT {
        trace.extend(rows.iter().map(|row| row[column]));
    }
    for column in 0..AUXILIARY_COLUMN_COUNT {
        trace.extend(auxiliary.iter().map(|row| row[column]));
    }
    let lde = trace
        .chunks_exact(spec.trace)
        .flat_map(|col| fast_coset_lde(col, spec.lde, 7))
        .collect::<Vec<_>>();
    (trace, lde, public_words)
}

fn reference_permutation(input: [u32; POSEIDON_WIDTH]) -> [u32; POSEIDON_WIDTH] {
    let mut state = input.map(BabyBear::from_u32);
    default_babybear_poseidon2_16().permute_mut(&mut state);
    state.map(|value| value.as_canonical_u32())
}

fn reference_prefixed_commitment(tag: &[u8; 4], prefix: u32, fields: &[u32]) -> [u32; 8] {
    let mut message = vec![u32::from_be_bytes(*tag), prefix];
    message.extend_from_slice(fields);
    let mut state = [0u32; POSEIDON_WIDTH];
    for block in message.chunks(8) {
        state[..block.len()].copy_from_slice(block);
        state = reference_permutation(state);
    }
    state[..8].try_into().expect("eight digest fields")
}

fn reference_field_commitment(tag: &[u8; 4], fields: &[u32]) -> [u32; 8] {
    reference_prefixed_commitment(tag, fields.len() as u32, fields)
}

fn reference_compress(left: &[u32; 8], right: &[u32; 8]) -> [u32; 8] {
    let mut state = [0u32; POSEIDON_WIDTH];
    state[..8].copy_from_slice(left);
    state[8..].copy_from_slice(right);
    reference_permutation(state)[..8]
        .try_into()
        .expect("eight digest fields")
}

#[allow(dead_code)]
fn reference_digest_root(mut layer: Vec<[u32; 8]>) -> [u32; 8] {
    assert!(!layer.is_empty());
    assert!(layer.len().is_power_of_two());
    while layer.len() > 1 {
        layer = layer
            .chunks_exact(2)
            .map(|children| reference_compress(&children[0], &children[1]))
            .collect();
    }
    layer[0]
}

fn protocol_round_tag(prefix: [u8; 2], round: usize) -> [u8; 4] {
    assert!((1..100).contains(&round));
    [
        prefix[0],
        prefix[1],
        b'0' + (round / 10) as u8,
        b'0' + (round % 10) as u8,
    ]
}

fn reference_fri_pair(positive: Ext4, negative: Ext4, challenge: Ext4, point: u32) -> Ext4 {
    let inverse_two = pow_mod(2, MODULUS - 2);
    let inverse_point = pow_mod(u64::from(point), MODULUS - 2);
    let even = positive.add(negative).scale(inverse_two);
    let odd = positive
        .sub(negative)
        .scale(inverse_two)
        .scale(inverse_point);
    challenge.mul(odd).add(even)
}

/// Fast independent verifier of a chunk proof receipt:
/// 1. Checks all GPU internal validity flags and canonical public statement words.
/// 2. Reconstructs the Fiat-Shamir transcript from `public_digest`, `main_trace_root`,
///    `auxiliary_trace_root`, `main_lde_root`, `auxiliary_lde_root`, and `composition_root`,
///    verifying `air_transcript`, `composition_challenge`, `composition_transcript`,
///    and every round's `fri_transcripts[r]`, `fri_challenges[r]`, and `fri_query_indices`.
/// 3. Verifies the Merkle authentication paths across all `FRI_ROUNDS` layers.
/// 4. Verifies degree-bounded FRI fold consistency (`max_degree = T - 1`, checking
///    exact Mersenne bound `max_degree + 1 == T == 2^{TRACE_LOG}`) across all
///    `FRI_ROUNDS` layers down to the constant layer!
fn verify_chunk_proof_receipt(spec: &ChunkSpec, proof: &[u32], tampered: bool) -> bool {
    let layout = proof_chunk_layout(spec);
    if proof.len() != layout.total_words {
        return false;
    }

    // Exact Mersenne degree bound check: max_degree = T - 1 => max_degree + 1 == T == 2^{trace_log}
    let max_degree = spec.trace - 1;
    if !(max_degree + 1).is_power_of_two() || (max_degree + 1) * 4 != spec.lde {
        return false;
    }

    // 1. Public claim check
    let (c_re_sign, c_re_mag) = signed_magnitude(spec.c_re_q12);
    let (c_im_sign, c_im_mag) = signed_magnitude(spec.c_im_q12);
    let expected_public = [
        c_re_sign,
        c_re_mag,
        c_im_sign,
        c_im_mag,
        spec.bound,
        spec.expected_terminal_step,
        spec.expected_terminal_step + 1,
        spec.trace as u32,
    ];
    if proof[layout.canonical_public..layout.canonical_public + 8] != expected_public {
        return false;
    }

    // 2. Fiat-Shamir transcript chain verification
    let slice8 = |start: usize| -> [u32; 8] {
        proof[start..start + 8].try_into().expect("8 digest words")
    };
    let bind = |tag: &[u8; 4], left: &[u32; 8], right: &[u32; 8]| -> [u32; 8] {
        let fields = left.iter().chain(right).copied().collect::<Vec<_>>();
        reference_field_commitment(tag, &fields)
    };

    let public_digest = slice8(layout.public_digest);
    let main_trace_root = slice8(layout.main_trace_root);
    let aux_trace_root = slice8(layout.auxiliary_trace_root);
    let main_lde_root = slice8(layout.main_lde_root);
    let aux_lde_root = slice8(layout.auxiliary_lde_root);
    let air_transcript = slice8(layout.air_transcript);
    let composition_root = slice8(layout.composition_root);
    let composition_transcript = slice8(layout.composition_transcript);

    let statement = bind(b"BS01", &public_digest, &main_trace_root);
    let trace_tr = bind(b"BT01", &statement, &aux_trace_root);
    let main_lde_tr = bind(b"BL02", &trace_tr, &main_lde_root);
    let expected_air_tr = bind(b"BY02", &main_lde_tr, &aux_lde_root);
    if air_transcript != expected_air_tr {
        return false;
    }

    let expected_comp_challenge = reference_field_commitment(b"BC01", &air_transcript);
    if proof[layout.composition_challenge..layout.composition_challenge + 4]
        != expected_comp_challenge[..4]
    {
        return false;
    }

    let expected_comp_tr = bind(b"BC03", &air_transcript, &composition_root);
    if composition_transcript != expected_comp_tr {
        return false;
    }

    // 3. Verify FRI transcript chain, Merkle authentication paths, and layer fold equations
    //    for variant 0 (clean) and variant 1 (observed).
    let query_evals_per_variant = chunk_query_evaluations(spec.fri_rounds);
    let query_siblings_per_variant = chunk_query_path_siblings(spec.fri_rounds);
    let maximal_root = pow_mod(31, 15);

    for variant in 0..FRI_VARIANTS {
        let tr_base = layout.fri_transcripts + variant * (spec.fri_rounds + 1) * 8;
        if slice8(tr_base) != composition_transcript {
            return false;
        }
        for round_index in 0..spec.fri_rounds {
            let round = round_index + 1;
            let cur_tr = slice8(tr_base + round_index * 8);
            let expected_chal =
                reference_field_commitment(&protocol_round_tag(*b"FC", round), &cur_tr);
            let chal_base =
                layout.fri_challenges + (variant * spec.fri_rounds + round_index) * 4;
            if proof[chal_base..chal_base + 4] != expected_chal[..4] {
                return false;
            }
            let root = slice8(layout.fri_roots + (variant * spec.fri_rounds + round_index) * 8);
            let expected_next_tr = {
                let fields = cur_tr.iter().chain(&root).copied().collect::<Vec<_>>();
                reference_field_commitment(&protocol_round_tag(*b"FT", round), &fields)
            };
            if slice8(tr_base + (round_index + 1) * 8) != expected_next_tr {
                return false;
            }
        }

        // Verify sampled query index
        let final_tr = slice8(tr_base + spec.fri_rounds * 8);
        let mut q_msg = final_tr.to_vec();
        q_msg.push(1);
        let expected_query_index =
            reference_field_commitment(b"FQ02", &q_msg)[0] & ((spec.lde as u32 / 2) - 1);
        let actual_query_index = proof[layout.fri_query_indices + variant];
        if actual_query_index != expected_query_index {
            return false;
        }

        // Verify Merkle authentication paths across all `FRI_ROUNDS` layers
        let eval_slot = |slot: usize| -> Ext4 {
            let start = layout.fri_query_evaluations
                + (variant * query_evals_per_variant + slot) * EXTENSION_WORDS;
            Ext4(proof[start..start + 4].try_into().expect("ext4"))
        };
        let mut query_index = actual_query_index as usize;
        let mut sibling_cursor = variant * query_siblings_per_variant;
        for round_index in 0..spec.fri_rounds {
            let round = round_index + 1;
            let width = spec.lde >> (round_index + 1);
            let tag = protocol_round_tag(*b"FR", round);
            let slot = 2 * round_index;
            let reconstructed_root = if width > 1 {
                let pair_width = width / 2;
                let pair_depth = if width > 2 {
                    width.ilog2() as usize - 1
                } else {
                    0
                };
                let pair = query_index & (pair_width - 1);
                let mut sides = [
                    reference_field_commitment(&tag, &eval_slot(slot).0),
                    reference_field_commitment(&tag, &eval_slot(slot + 1).0),
                ];
                for side in 0..2 {
                    let leaf = pair + side * pair_width;
                    for level in 0..pair_depth {
                        let sib_start = layout.fri_query_siblings + sibling_cursor * 8;
                        let sibling = slice8(sib_start);
                        sides[side] = if ((leaf >> level) & 1) == 0 {
                            reference_compress(&sides[side], &sibling)
                        } else {
                            reference_compress(&sibling, &sides[side])
                        };
                        sibling_cursor += 1;
                    }
                }
                query_index = pair;
                reference_compress(&sides[0], &sides[1])
            } else {
                reference_field_commitment(&tag, &eval_slot(slot).0)
            };
            let expected_root =
                slice8(layout.fri_roots + (variant * spec.fri_rounds + round_index) * 8);
            if reconstructed_root != expected_root {
                return false;
            }
        }
        if sibling_cursor != (variant + 1) * query_siblings_per_variant {
            return false;
        }

        // Verify inter-layer FRI fold equations across all `FRI_ROUNDS - 1` transitions
        query_index = actual_query_index as usize;
        for transition in 0..spec.fri_rounds - 1 {
            let input_width = spec.lde >> (transition + 1);
            let pair_width = input_width / 2;
            let pair = query_index & (pair_width - 1);
            let slot = 2 * transition;
            let chal_start =
                layout.fri_challenges + (variant * spec.fri_rounds + transition + 1) * 4;
            let challenge = Ext4(proof[chal_start..chal_start + 4].try_into().expect("chal"));
            let mut shift = 7u32;
            for _ in 0..transition + 1 {
                shift = mul_mod(shift, shift);
            }
            let root = pow_mod(
                u64::from(maximal_root),
                1 << (TWO_ADICITY - input_width.ilog2()),
            );
            let point = mul_mod(shift, pow_mod(u64::from(root), pair as u32));
            let folded =
                reference_fri_pair(eval_slot(slot), eval_slot(slot + 1), challenge, point);
            let next_width = input_width / 2;
            let next_slot = 2 * (transition + 1);
            let expected = if next_width == 1 || pair < next_width / 2 {
                eval_slot(next_slot)
            } else {
                eval_slot(next_slot + 1)
            };
            if folded != expected {
                return false;
            }
            query_index = pair;
        }

        // Verify round-0 fold from initial composition polynomial at `actual_query_index`
        let pair0 = actual_query_index as usize;
        let pair_width0 = spec.lde / 4;
        let chal0_start = layout.fri_challenges + (variant * spec.fri_rounds) * 4;
        let chal0 = Ext4(proof[chal0_start..chal0_start + 4].try_into().expect("chal0"));
        let root0 = pow_mod(
            u64::from(maximal_root),
            1 << (TWO_ADICITY - spec.lde.ilog2()),
        );
        for side in 0..2 {
            let leaf = (pair0 & (pair_width0 - 1)) + side * pair_width0;
            let pos_start = layout.composition_values + leaf * 4;
            let neg_start = layout.composition_values + (leaf + spec.lde / 2) * 4;
            let pos = Ext4(proof[pos_start..pos_start + 4].try_into().expect("pos"));
            let neg = Ext4(proof[neg_start..neg_start + 4].try_into().expect("neg"));
            let point = mul_mod(7, pow_mod(u64::from(root0), leaf as u32));
            let folded0 = reference_fri_pair(pos, neg, chal0, point);
            if variant == 0 && folded0 != eval_slot(side) {
                return false;
            }
        }
    }

    // Check status words match expected mode
    let trace_valid = proof[layout.status] == 1;
    let fri_equal = proof[layout.status + 1] == 1;
    let mode_correct = proof[layout.status + 2] == 1;
    let query_equal = proof[layout.fri_query_status] == 1;
    let query_correct = proof[layout.fri_query_status + 1] == 1;

    if !trace_valid || !mode_correct || !query_correct {
        return false;
    }
    if tampered {
        !fri_equal && !query_equal
    } else {
        fri_equal && query_equal
    }
}


pub const CAPACITY:usize=1024;
fn point_valid(re:i32,im:i32)->bool{(-8192..4096).contains(&re)&&(-6144..6144).contains(&im)}
/// u32::MAX means outside this profile; u32::MAX-1 means no escape by1023.
#[unsafe(no_mangle)]
pub extern "C" fn point_escape(re:i32,im:i32)->u32{
 if !point_valid(re,im){return u32::MAX;}
 let(mut x,mut y)=(0i64,0i64);
 for step in 0..CAPACITY as u32 {
  if x*x+y*y>=67108864{return step;}
  (x,y)=(((x*x-y*y)>>12)+i64::from(re),((2*x*y)>>12)+i64::from(im));
 }
 u32::MAX-1
}
fn spec_for(re:i32,im:i32)->Option<ChunkSpec>{
 let terminal=point_escape(re,im);if terminal>=CAPACITY as u32{return None;}
 Some(ChunkSpec{name:"viewer-capacity-q12-v1",sketch_dir:"",trace:CAPACITY,lde:CAPACITY*4,trace_log:10,fri_rounds:12,c_re_q12:re,c_im_q12:im,bound:1023,expected_terminal_step:terminal})
}
fn pack(words:&[u32],widths:&[u32])->Vec<u32>{
 let mut result=Vec::new();let(mut current,mut used)=(0u32,0u32);
 for(&word,&width)in words.iter().zip(widths){for bit in 0..width{current|=((word>>bit)&1)<<used;used+=1;if used==30{result.push(current);current=0;used=0;}}}
 if used>0{result.push(current);}result
}
/// Stable reason codes:0 accepted;1 input/profile;2 size;3 witness;
///4 public packing/digest;5 trace commitments;6 transcript/FRI;7 composition degree/root.
pub fn check(proof:&[u32],re:i32,im:i32)->u32{
 let Some(spec)=spec_for(re,im)else{return 1;};let layout=proof_chunk_layout(&spec);
 if proof.len()!=layout.total_words{return 2;}
 let(rows,public)=reference_air_rows(&spec);
 let aux=rows.iter().map(reference_auxiliary_row).collect::<Vec<_>>();
 for col in 0..AIR_COLUMN_COUNT{for row in 0..CAPACITY{let expected=if col<17{rows[row][col]}else{aux[row][col-17]};if proof[col*CAPACITY+row]!=expected{return 3;}}}
 if proof[layout.canonical_public..layout.canonical_public+8]!=public{return 4;}
 let packed=pack(&public,&[1,14,1,13,21,21,21,22]);
 if proof[layout.packed_public..layout.packed_public+4]!=packed||proof[layout.public_digest..layout.public_digest+8]!=reference_prefixed_commitment(b"BP01",114,&packed){return 4;}
 let widths=[21,1,15,1,15,30,30,31,1,18,12,1,19,12,1,1,1];
 let(mut main_leaves,mut aux_leaves)=(Vec::new(),Vec::new());
 for row in 0..CAPACITY{
  let m=pack(&rows[row],&widths);let a=pack(&aux[row],&[1;411]);
  if proof[layout.packed_main_trace+row*7..layout.packed_main_trace+(row+1)*7]!=m||proof[layout.packed_auxiliary_trace+row*14..layout.packed_auxiliary_trace+(row+1)*14]!=a{return 5;}
  main_leaves.push(reference_prefixed_commitment(b"BR01",210,&m));aux_leaves.push(reference_prefixed_commitment(b"BA01",411,&a));
 }
 if proof[layout.main_trace_root..layout.main_trace_root+8]!=reference_digest_root(main_leaves)||proof[layout.auxiliary_trace_root..layout.auxiliary_trace_root+8]!=reference_digest_root(aux_leaves){return 5;}
 // Reject noncanonical field values before interpreting the arithmetic.
 for index in layout.packed_main_trace..layout.fri_query_status{if index!=layout.fri_status+2 && proof[index]>=MODULUS{return 6;}}
 if !verify_chunk_proof_receipt(&spec,proof,false){return 6;}
 let values=(0..spec.lde).map(|i|Ext4(proof[layout.composition_values+i*4..layout.composition_values+(i+1)*4].try_into().unwrap())).collect::<Vec<_>>();
 if fast_ext4_coset_interpolate_degree(&values,7)>3*(CAPACITY-1){return 7;}
 let leaves=values.iter().map(|x|reference_field_commitment(b"BC02",&x.0)).collect();
 if proof[layout.composition_root..layout.composition_root+8]!=reference_digest_root(leaves){return 7;}
 0
}
#[unsafe(no_mangle)]
pub extern "C" fn proof_words()->usize{proof_chunk_layout(&spec_for(1076,12).unwrap()).total_words}
#[unsafe(no_mangle)]
pub extern "C" fn proof_alloc(words:usize)->*mut u32{if words!=proof_words(){return std::ptr::null_mut();}let mut v=Vec::<u32>::with_capacity(words);let p=v.as_mut_ptr();std::mem::forget(v);p}
#[unsafe(no_mangle)]
pub unsafe extern "C" fn proof_free(ptr:*mut u32,words:usize){if words==proof_words()&&!ptr.is_null(){unsafe{drop(Vec::from_raw_parts(ptr,0,words));}}}
#[unsafe(no_mangle)]
pub unsafe extern "C" fn proof_check(ptr:*const u32,words:usize,re:i32,im:i32)->u32{if words!=proof_words()||ptr.is_null(){return 2;}check(unsafe{std::slice::from_raw_parts(ptr,words)},re,im)}

#[cfg(test)]mod tests{
 use super::*;
 #[test]fn profile_boundaries(){assert_eq!(point_escape(0,0),u32::MAX-1);assert_eq!(point_escape(4096,0),u32::MAX);assert_eq!(point_escape(-8193,0),u32::MAX);assert_eq!(point_escape(1076,12),1001);assert!(point_escape(3500,3000)<1024);assert_eq!(check(&[],3500,3000),2);}
}

#[cfg(test)]mod captured {
 use super::*;
 #[test]fn captured_gpu_receipt(){
 let Some(path)=std::env::var_os("MB2_POINT_PROOF")else{return;};
 let bytes=std::fs::read(path).unwrap();let proof=bytes.chunks_exact(4).map(|x|u32::from_le_bytes(x.try_into().unwrap())).collect::<Vec<_>>();
 let spec=spec_for(3500,3000).unwrap();let l=proof_chunk_layout(&spec);
 println!("check={} status={:?} query={:?} noncanonical={:?}",check(&proof,3500,3000),&proof[l.status..],&proof[l.fri_query_status..l.status],proof[l.packed_main_trace..l.fri_query_status].iter().enumerate().find(|(_,x)|**x>=MODULUS));
 assert_eq!(check(&proof,3500,3000),0);
 for index in [0,l.canonical_public,l.fri_query_evaluations]{let mut copy=proof.clone();copy[index]^=1;assert_ne!(check(&copy,3500,3000),0,"mutation at{index}");}
 for index in [l.main_lde_root,l.auxiliary_lde_root]{let mut copy=proof.clone();copy[index]+=MODULUS;assert_ne!(check(&copy,3500,3000),0,"noncanonical alias at{index}");}
 assert_ne!(check(&proof,3501,3000),0);
 assert_ne!(check(&proof,0,0),0);
 }
}
