// Assemble the static probe page: node assemble.mjs BUNDLE OUT
// Copies the page, the corpus, the manifest and the one compute shader it runs.
import assert from 'node:assert/strict';
import fs from 'node:fs/promises';
import path from 'node:path';
const [bundle, out] = process.argv.slice(2);
assert.ok(bundle && out, 'Usage: node assemble.mjs BUNDLE OUT');
const here = path.dirname(new URL(import.meta.url).pathname);
const manifest = JSON.parse(await fs.readFile(path.join(bundle, 'manifest.json'), 'utf8'));
const pass = manifest.passes.find(p => p.source_entry === 'delta_case');
assert.ok(pass, 'bundle has no delta_case pass');
await fs.mkdir(path.join(out, path.dirname(pass.shader)), {recursive: true});
await fs.copyFile(path.join(bundle, pass.shader), path.join(out, pass.shader));
await fs.writeFile(path.join(out, 'manifest.json'), JSON.stringify({passes: [pass]}, null, 1) + '\n');
for (const name of ['index.html', 'probe.js']) await fs.copyFile(path.join(here, 'page', name), path.join(out, name));
await fs.copyFile(path.join(here, 'corpus.json'), path.join(out, 'corpus.json'));
await fs.writeFile(path.join(out, '.nojekyll'), '');
console.log(JSON.stringify({out, shader: pass.shader, bytes: (await fs.stat(path.join(out, pass.shader))).size}));
