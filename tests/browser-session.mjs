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
