#!/usr/bin/env python3
"""Verify and publish the complete compiler-generated all-Fe application."""
import argparse
import json
from pathlib import Path
import shutil
from build_studio import ROOT, source_hash, artifact_hashes


def assemble(artifacts, out):
    artifacts, out = Path(artifacts), Path(out)
    info = json.loads((artifacts / 'studio-info.json').read_text())
    assert info['sourceHash'] == source_hash(), 'Fe application sources changed; rebuild the studio'
    assert info['files'] == artifact_hashes(artifacts), 'Studio files differ from recorded hashes'
    assert not list(artifacts.rglob('*.mjs')), 'Unexpected authored application module'
    out.mkdir(parents=True, exist_ok=True)
    shutil.copytree(artifacts, out, dirs_exist_ok=True)
    (out / '.nojekyll').touch()
    return out


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--artifacts', default=str(ROOT / 'artifacts/studio'))
    parser.add_argument('--out', required=True)
    args = parser.parse_args()
    print(assemble(args.artifacts, args.out))
