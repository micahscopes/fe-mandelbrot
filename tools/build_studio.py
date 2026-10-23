#!/usr/bin/env python3
"""Compile the Fe-authored application page with its generic browser runtime."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess

ROOT = Path(__file__).resolve().parents[1]


def source_hash():
    paths = [ROOT / name for name in (
        'fe.toml', 'toolchain.lock.json', 'tools/bootstrap.py',
        'tools/build_studio.py', 'tools/site_studio.py', 'web/studio.html',
    )]
    paths += sorted((ROOT / 'toolchain/patches').glob('*.patch'))
    paths += sorted(p for base in ('app', 'lib', 'tests') for p in (ROOT / base).rglob('*')
                    if p.is_file() and p.suffix in ('.fe', '.toml'))
    digest = hashlib.sha256()
    for path in paths:
        digest.update(path.relative_to(ROOT).as_posix().encode() + b'\0' + path.read_bytes() + b'\0')
    return digest.hexdigest()


def artifact_hashes(directory):
    return {p.relative_to(directory).as_posix(): hashlib.sha256(p.read_bytes()).hexdigest()
            for p in sorted(directory.rglob('*')) if p.is_file() and p.name != 'studio-info.json'}


def record(directory, compiler=None):
    # The authoring page contains only an inert Fe declaration. Application
    # geometry/workflow modules from the preserved legacy demo are excluded.
    html = (ROOT / 'web/studio.html').read_text()
    assert 'type="module"' not in html and '.mjs' not in html
    assert not list(directory.rglob('*.mjs'))
    metadata = {'sourceHash': source_hash(),
                'toolchain': json.loads((ROOT / 'toolchain.lock.json').read_text()),
                'entry': 'web/studio.html', 'files': artifact_hashes(directory)}
    if compiler:
        metadata['compilerSha256'] = hashlib.sha256(Path(compiler).read_bytes()).hexdigest()
    (directory / 'studio-info.json').write_text(json.dumps(metadata, indent=2) + '\n')


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--fe', default=os.environ.get('FE_BINARY'))
    parser.add_argument('--out', required=True)
    parser.add_argument('--record', action='store_true')
    parser.add_argument('--checks', action='store_true', help='compile focused Fe/Wasm regression bundles')
    args = parser.parse_args()
    if not args.fe:
        parser.error('pass --fe /path/to/the/pinned/fe')
    out = Path(args.out).resolve()
    subprocess.run([args.fe, 'web', 'precompile', str(ROOT / 'web/studio.html'), '--out', str(out)],
                   cwd=ROOT, check=True)
    if args.checks:
        targets = [
            ('certified', 'app/certified_escape', ['certify', 'arithmetic', 'arithmetic_words', 'evaluate_region']),
            ('region-engine', 'tests/region-engine', ['sliced', 'binary']),
            ('region-selection', 'tests/region-selection', ['inspect', 'fixed_projection']),
            ('resident-memory', 'tests/resident-memory', []),
        ]
        for name, source, lanes in targets:
            command = [args.fe, 'web', 'build', str(ROOT / source), '--out', str(out / 'checks' / name)]
            if lanes:
                command += ['--entry', 'wasm_anchor', '--mode', 'render', '--canonical', 'required']
                for lane in lanes:
                    command += ['--canonical-entry', lane]
            subprocess.run(command, cwd=ROOT, check=True)
    record(out, args.fe)
    if args.record:
        dest = ROOT / 'artifacts/studio'
        if dest.exists():
            shutil.rmtree(dest)
        shutil.copytree(out, dest)
    print(out)
