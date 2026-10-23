//! JSON fixtures for an independent Fe/Wasm driver. Diagnostics go to stderr.
use toy_stark_oracle::{
    P,
    argument::{Mode, PROOF_WORDS, degree, prove, prove_mode, verify},
};
fn emit(name: &str, statement: u32, proof: &[u32], comma: &mut bool) {
    if *comma {
        println!(",");
    }
    *comma = true;
    print!(
        "{{\"name\":\"{name}\",\"statement\":{statement},\"expectedStatus\":{},\"proof\":{proof:?}}}",
        verify(statement, proof)
    );
}
fn main() {
    if std::env::args().nth(1).as_deref() != Some("fixtures") {
        eprintln!("usage: toy-stark-oracle fixtures > fixtures.json");
        std::process::exit(2);
    }
    println!(
        "{{\"metadata\":{{\"profile\":\"toy-stark-bits-v0\",\"contractCommit\":\"f8d2d37\",\"proofWords\":{PROOF_WORDS},\"encoding\":\"canonical-u32-little-endian\",\"zeroKnowledge\":false,\"scope\":\"algebra/implementation evidence; no security claim\"}},\"cases\":["
    );
    let mut comma = false;
    let cases = [
        ("honest-weight3-a", 3, [1, 0, 1, 0, 0, 1, 0, 0]),
        ("honest-weight3-b", 3, [0, 1, 1, 0, 0, 0, 0, 1]),
        ("honest-weight0", 0, [0; 8]),
        ("honest-weight8", 8, [1; 8]),
    ];
    for (name, s, bits) in cases {
        let generated = prove(s, bits).unwrap();
        eprintln!(
            "{name}: status={} traceDegree={:?} compositionDegree={:?} layerDegrees={:?} queries={:?}",
            verify(s, &generated.proof),
            generated
                .audit
                .trace_coefficients
                .each_ref()
                .map(|c| degree(c)),
            degree(&generated.audit.composition_coefficients),
            generated
                .audit
                .layer_coefficients
                .iter()
                .map(|c| degree(c))
                .collect::<Vec<_>>(),
            generated.transcript.queries
        );
        emit(name, s, &generated.proof, &mut comma);
    }
    let honest = prove(3, [1, 0, 1, 0, 0, 1, 0, 0]).unwrap().proof;
    emit("changed-statement", 4, &honest, &mut comma);
    for (name, mode) in [
        ("false-weight9", Mode::FalseStatement),
        (
            "false-weight9-ood-repaired",
            Mode::FalseStatementOodRepaired,
        ),
        ("adaptive-zero", Mode::AdaptiveZero),
        ("forged-answer-ood-repaired", Mode::WrongAnswer),
        ("high-degree-source", Mode::HighDegreeSource),
        ("unrelated-composition", Mode::UnrelatedComposition),
        ("wrong-layer1-valid-paths", Mode::WrongLayer1),
        ("wrong-layer2-valid-paths", Mode::WrongLayer2),
        ("wrong-final-rebound-queries", Mode::WrongFinal),
    ] {
        let false_statement =
            matches!(mode, Mode::FalseStatement | Mode::FalseStatementOodRepaired);
        let s = if false_statement { 9 } else { 3 };
        let bits = if false_statement {
            [1; 8]
        } else {
            [1, 0, 1, 0, 0, 1, 0, 0]
        };
        let generated = prove_mode(s, bits, mode).unwrap();
        emit(name, s, &generated.proof, &mut comma);
    }
    for (name, offset) in [
        ("mutated-answer", 16),
        ("trace-sibling", 58),
        ("composition-sibling", 144),
        ("fri-layer1-sibling", 232),
        ("fri-layer2-sibling", 304),
    ] {
        let mut proof = honest.clone();
        proof[offset] ^= 1;
        emit(name, 3, &proof, &mut comma);
    }
    for (name, offset) in [
        ("noncanonical-root", 0),
        ("noncanonical-answer", 16),
        ("noncanonical-final", 52),
        ("noncanonical-query", 56),
    ] {
        for (suffix, value) in [("p", P), ("max", u32::MAX)] {
            let mut proof = honest.clone();
            proof[offset] = value;
            emit(&format!("{name}-{suffix}"), 3, &proof, &mut comma);
        }
    }
    emit("noncanonical-statement", P, &honest, &mut comma);
    emit("truncated", 3, &honest[..PROOF_WORDS - 1], &mut comma);
    let mut extended = honest;
    extended.push(0);
    emit("extended", 3, &extended, &mut comma);
    println!("]}}");
}
