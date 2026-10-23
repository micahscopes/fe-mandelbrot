// Run the assembled probe page in Chromium: node gpu.mjs SITE [RECEIPT]
// SITE comes from assemble.mjs. By default this attaches to a CDP browser
// (CDP_URL); OWNED_SOFTWARE_BROWSER=1 launches a SwiftShader Chromium instead.
// Software results say nothing about a physical phone.
import assert from 'node:assert/strict';
import fs from 'node:fs/promises';
import path from 'node:path';
import {releaseTestPage} from '../browser-session.mjs';
const [site, receiptPath] = process.argv.slice(2);
assert.ok(site, 'Usage: node gpu.mjs SITE [RECEIPT]');
const root = path.resolve(site);
const {chromium} = await import(process.env.PLAYWRIGHT_MODULE || 'playwright-core');
const owned = process.env.OWNED_SOFTWARE_BROWSER === '1';
const browser = owned
  ? await chromium.launch({executablePath: process.env.CHROMIUM_BINARY || '/run/current-system/sw/bin/chromium',
      headless: true, args: ['--no-sandbox', '--enable-unsafe-webgpu', '--use-angle=swiftshader']})
  : await chromium.connectOverCDP(process.env.CDP_URL || 'http://127.0.0.1:9222');
const page = await browser.newPage();
const origin = 'https://micahscopes.github.io';
const prefix = '/__camera-delta-probe/';
const types = {'.html': 'text/html', '.js': 'text/javascript', '.json': 'application/json', '.wgsl': 'text/plain'};
try {
  await page.route(url => url.origin === origin && url.pathname.startsWith(prefix), async route => {
    let relative = decodeURIComponent(new URL(route.request().url()).pathname.slice(prefix.length)) || 'index.html';
    const file = path.resolve(root, relative);
    if (!file.startsWith(root + path.sep)) return route.fulfill({status: 403, body: ''});
    try { await route.fulfill({contentType: types[path.extname(file)] || 'application/octet-stream', body: await fs.readFile(file)}); }
    catch { await route.fulfill({status: 404, body: 'missing'}); }
  });
  await page.goto(origin + prefix);
  await page.waitForFunction(() => window.__probeResult, null, {timeout: Number(process.env.PROBE_TIMEOUT_MS || 600000)});
  const result = await page.evaluate(() => window.__probeResult);
  const line = await page.title();
  if (receiptPath) await fs.writeFile(receiptPath, JSON.stringify({line, ...result}, null, 2) + '\n');
  console.log(line);
  if (process.env.EXPECT_FAIL !== '1') assert.equal(result.pass, true, line);
} finally {
  if (owned) await browser.close(); else await releaseTestPage(browser, page);
}
