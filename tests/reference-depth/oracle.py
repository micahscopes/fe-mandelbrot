"""Independently verify the configured sample from actual captured camera bits."""
import json
import struct
import sys
from decimal import Decimal, localcontext
from pathlib import Path

root = Path(sys.argv[1])
receipt = json.loads((root / 'production-receipt.json').read_text())
sample = receipt['scenario']['independentSample']
f32 = lambda value: struct.unpack('<f', struct.pack('<f', value))[0]
results = []
for variant in receipt['variants']:
    for name in ['captured-deep', 'deep-after-replacement', 'deep-after-visibility']:
        capture = variant['captures'][name]
        metadata = capture['metadata']['current']
        camera = [struct.unpack('<f', struct.pack('<I', word))[0] for word in metadata['camera']]
        x, y = sample['x'], sample['y']
        px = f32(x + .375 + .25 * (x & 1))
        py = f32(y + .375 + .25 * (y & 1))
        u = f32(f32(f32(px / camera[9]) * 2) - 1)
        v = f32(1 - f32(f32(py / camera[9]) * 2))
        answers = []
        for precision in sample['decimalPrecisions']:
            with localcontext() as context:
                context.prec = precision
                cr = sum(map(Decimal.from_float, camera[:4])) + Decimal.from_float(f32(u * camera[8]))
                ci = sum(map(Decimal.from_float, camera[4:8])) + Decimal.from_float(f32(v * camera[8]))
                zr = zi = Decimal(0)
                escaped = False
                for iteration in range(1, metadata['budget'] + 1):
                    zr, zi = zr*zr - zi*zi + cr, 2*zr*zi + ci
                    if zr*zr + zi*zi > 4:
                        escaped = True
                        break
                answers.append((iteration, escaped))
        assert all(answer == answers[0] for answer in answers)
        assert answers[0] == (sample['iteration'], sample['escaped'])
        words = struct.unpack_from('<III', Path(capture['files']['snapshot_oracle']['file']).read_bytes(),
                                   (y * int(camera[9]) + x) * 12)
        results.append({'variant': variant['label'], 'capture': name, 'oracle': answers[0],
                        'actual': [words[0], bool(words[2] & (1 << 31))],
                        'glitched': bool(words[2] & (1 << 30))})
print(json.dumps({'precisions': sample['decimalPrecisions'], 'results': results}, indent=2))
