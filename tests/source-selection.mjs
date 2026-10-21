import { releaseTestPage } from './browser-session.mjs';
import assert from 'node:assert/strict';
const {chromium}=await import(process.env.PLAYWRIGHT_MODULE||'playwright-core');
const browser=await chromium.connectOverCDP(process.env.CDP_URL||'http://127.0.0.1:9223');
const page=await browser.newPage({viewport:{width:1200,height:850}});
const base=process.env.BASE_URL||'http://127.0.0.1:8126/standalone/';
try {
 await page.context().grantPermissions(['clipboard-read','clipboard-write'],{origin:new URL(base).origin});
 await page.goto(new URL('viewer/index.html',base).href);
 await page.waitForFunction(()=>document.querySelector('fe-component')?._active,null,{timeout:30000});
 await page.locator('.file').first().click();
 await page.waitForFunction(()=>document.querySelector('.source-code')?.textContent.length>100);
 const keyword=page.locator('.source-code .hl-keyword').first();
 const expected=await keyword.textContent();
 await keyword.dblclick();
 assert.equal(await page.evaluate(()=>getSelection().toString()),expected,'Double-click selection was discarded');
 // A real copy shortcut bubbles through the resident component. It must not
 // re-project source text and invalidate the browser-owned selection.
 await page.keyboard.press('Control+c');
 assert.equal(await page.evaluate(()=>getSelection().toString()),expected,'Copy shortcut discarded selection');
 assert.equal(await page.evaluate(()=>navigator.clipboard.readText()),expected,'Clipboard differs from selected source');
 // Select a range spanning syntax runs, then copy without gutter numbers.
 const selected=await page.evaluate(()=>{
  const source=document.querySelector('.source-code');
  const walk=document.createTreeWalker(source,NodeFilter.SHOW_TEXT);
  const first=walk.nextNode();let last=first;
  for(let i=0;i<6;i++){const next=walk.nextNode();if(!next)break;last=next;}
  const range=document.createRange();range.setStart(first,0);range.setEnd(last,last.length);
  const selection=getSelection();selection.removeAllRanges();selection.addRange(range);
  return selection.toString();
 });
 assert.ok(selected.length>expected.length);
 await page.keyboard.press('Control+c');
 assert.equal(await page.evaluate(()=>navigator.clipboard.readText()),selected,'Multi-token copy changed source text');
 await page.locator('.file').nth(1).click();
 await page.waitForFunction(()=>document.querySelector('.file-heading strong')?.textContent==='policy.fe'&&!document.querySelector('.source-lines').hidden);
 assert.ok((await page.locator('.source-code').textContent()).includes('MandelbrotParams'));
 console.log(JSON.stringify({doubleClickSelection:true,copyShortcut:true,multiTokenCopy:true,fileSwitch:true}));
}finally{await releaseTestPage(browser,page);}
