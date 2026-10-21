// All callers attach with chromium.connectOverCDP to a user-owned browser.
// For that connection Playwright's public close method closes its CDP
// transport; it does not terminate Chrome. Close only our own test page first.
export async function releaseTestPage(browser, page) {
  try {
    await page.close();
  } finally {
    await browser.close();
  }
}

// Serve an immutable local build to the remote CDP browser over a secure origin.
export async function stageSite(page, base) {
  if (!process.env.STAGED_SITE) return;
  const fs = await import('node:fs/promises');
  const path = await import('node:path');
  const root = path.resolve(process.env.STAGED_SITE);
  const prefix = new URL(base);
  await page.route(url => url.origin === prefix.origin && url.pathname.startsWith(prefix.pathname), async route => {
    let relative = decodeURIComponent(new URL(route.request().url()).pathname.slice(prefix.pathname.length));
    if (!relative || relative.endsWith('/')) relative += 'index.html';
    const file = path.resolve(root, relative);
    if (!file.startsWith(root + '/')) return route.fulfill({status: 403, body: ''});
    const type = {'.html': 'text/html', '.js': 'text/javascript', '.json': 'application/json', '.wasm': 'application/wasm', '.css': 'text/css', '.fe': 'text/plain', '.wgsl': 'text/plain'}[path.extname(file)] || 'application/octet-stream';
    try {
      await route.fulfill({contentType: type, body: await fs.readFile(file)});
    } catch {
      await route.fulfill({status: 404, body: 'Missing staged asset'});
    }
  });
}
