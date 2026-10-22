import fs from 'node:fs/promises';
import path from 'node:path';
import assert from 'node:assert/strict';
import {initSync, run, version} from 'nagami-rs';

const [sourceArg, outputArg, profile = 'baseline'] = process.argv.slice(2);
assert(sourceArg && outputArg, 'Usage: node optimize.mjs INPUT_BUNDLE NEW_OUTPUT_BUNDLE [baseline|aggressive|max]');
assert(['baseline', 'aggressive', 'max'].includes(profile));
const input = await fs.realpath(sourceArg), output = path.resolve(outputArg);
assert(output !== input && !output.startsWith(input + path.sep), 'Output must be outside the input bundle');
await fs.mkdir(output); // Refuse to overwrite prior experiments.
await fs.cp(input, output, {recursive: true});
initSync({module: await fs.readFile(new URL('nagami_bg.wasm', import.meta.resolve('nagami-rs')))});
const manifest = JSON.parse(await fs.readFile(path.join(input, 'manifest.json'), 'utf8'));
const reports = [];
for (const pass of manifest.passes) {
    const file = path.resolve(input, pass.shader);
    assert(file.startsWith(input + path.sep), 'Shader path escapes bundle');
    const source = await fs.readFile(file, 'utf8');
    const sourceSymbols = [...source.matchAll(/\b(?:fn|struct|alias|const|override)\s+([A-Za-z_]\w*)/g)].map(x => x[1]);
    const config = {
        profile, mangle: false, preserveInterface: true,
        preserveSymbols: profile === 'max' ? [pass.layout.entry_point] : sourceSymbols,
        floatPrecision: 'full', beautify: true, indent: 4, validateEachPass: true,
        maxInlineNodeCount: profile === 'max' ? 48 : 0,
        maxInlineCallSites: profile === 'max' ? 6 : 0,
    };
    const started = performance.now();
    try {
        const result = run(source, config);
        await fs.writeFile(path.resolve(output, pass.shader), result.source);
        pass.shader_bytes = Buffer.byteLength(result.source);
        reports.push({entry: pass.source_entry, config, inputBytes: Buffer.byteLength(source),
            outputBytes: pass.shader_bytes, milliseconds: performance.now() - started,
            report: result.report, nameMap: result.nameMap});
        console.log(JSON.stringify({entry: pass.source_entry, inputBytes: Buffer.byteLength(source),
            outputBytes: pass.shader_bytes, bailout: result.report.bailout}));
    } catch (error) {
        reports.push({entry: pass.source_entry, error: String(error), code: error.code});
        process.exitCode = 1;
    }
}
await fs.writeFile(path.join(output, 'manifest.json'), JSON.stringify(manifest, null, 2) + '\n');
await fs.writeFile(path.join(output, 'optimizer-report.json'), JSON.stringify({
    optimizer: version(), input, profile, partial: reports.some(r => r.error),
    claim: 'Optimizer validation is not numerical or GPU execution equivalence.', reports,
}, null, 2) + '\n');
