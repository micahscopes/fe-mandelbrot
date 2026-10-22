"""Stage one standalone Fe probe outside the application workspace; no rebuild.

Example:
 python3 experiments/private_circle/run_fe_probe.py --fe /path/to/fe \
   --core /path/to/pinned/compiler/ingots/core --out /local/scratch/probe
"""
import argparse
import os
from pathlib import Path
import shutil
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument('--fe', required=True, type=Path)
parser.add_argument('--core', required=True, type=Path)
parser.add_argument('--out', required=True, type=Path)
args = parser.parse_args()
root = args.out.resolve()
root.mkdir(parents=True, exist_ok=False)
(root / 'src').mkdir()
shutil.copyfile(Path(__file__).with_name('limb_probe.fe'), root / 'src/lib.fe')
# TOML quoted path: reject special chars rather than invent shell/TOML escaping.
core = os.path.relpath(args.core.resolve(), root)
std = os.path.relpath(args.core.resolve().parent / 'std', root)
if any(c in core + std for c in '\\"\n\r'):
    raise ValueError('unsupported core path characters')
(root / 'fe.toml').write_text('[ingot]\nname="private_circle_limb_probe"\nversion="0.1.0"\n'
                              '[dependencies]\ncore="' + core + '"\nstd="' + std + '"\n')
subprocess.run([str(args.fe.resolve()), 'test', str(root), '--jobs', '1'], check=True)
