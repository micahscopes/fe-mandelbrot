import { releaseTestPage } from './browser-session.mjs';
import assert from 'node:assert/strict';
const {chromium}=await import(process.env.PLAYWRIGHT_MODULE||'playwright-core');
const browser=await chromium.connectOverCDP(process.env.CDP_URL||'http://127.0.0.1:9222');
const page=await browser.newPage({viewport:{width:1200,height:850}}),errors=[];
page.on('pageerror',e=>errors.push(String(e)));
const base=process.env.BASE_URL||'https://mb2-preview.argot-lab.calculator.ygg/standalone/';
try{
 await page.addInitScript(()=>{window.componentErrors=[];addEventListener('fe-error',e=>componentErrors.push(String(e.detail)),true);});
 for(const route of ['index.html','colors/index.html']){
  const result=await page.request.get(new URL(route,base).href);assert.equal(result.status(),200);
  assert.match(await result.text(),/href="(?:\.\.\/)?viewer\/index.html"/);
 }
 await page.goto(new URL('viewer/index.html',base).href);
 await page.waitForFunction(()=>document.querySelector('fe-component')?._active,null,{timeout:30000});
 const files=['lib.fe','policy.fe','interaction.fe','url.fe','gestures.fe','orbit.fe','image.fe','cache.fe','palette.fe','partition.fe','algebra.fe','precision.fe','fixed.fe','fmath.fe','source_inspector.fe','color_library.fe','color_demo.fe','viewer.fe','viewer_highlight.fe'];
 assert.equal(await page.locator('.file').count(),files.length);
 async function open(name){await page.locator(`.file[href$="/${name}.view"]`).click();await page.waitForFunction(name=>document.querySelector('.file-heading strong')?.textContent===name && !document.querySelector('.source-lines')?.hidden,name);}
 const stats={};
 for(const name of files){
  await open(name);const source=await page.locator('.source-code').textContent();
  const raw=await page.locator('.file-heading a').getAttribute('href');assert.ok(!raw.endsWith('.view'));
  assert.equal(source,await page.evaluate(async url=>(await fetch(url)).text(),raw),`Highlighting changed source bytes in ${name}`);
  const numbers=(await page.locator('.line-numbers').textContent()).trim().split('\n').map(Number),lines=source.split('\n');if(lines.at(-1)==='')lines.pop();
  assert.equal(numbers.length,lines.length);assert.ok(numbers.every((n,i)=>n===i+1));
  stats[name]={types:await page.locator('.source-code .hl-ty').count(),functions:await page.locator('.source-code .hl-function').count(),keywords:await page.locator('.source-code .hl-keyword').count(),comments:await page.locator('.source-code .hl-comment').count()};
  assert.ok(stats[name].keywords>0&&stats[name].comments>0);
 }
 assert.ok(stats['color_library.fe'].types>0&&stats['color_library.fe'].functions>0,'Compiler SCIP symbol colors are missing');
 assert.ok(stats['algebra.fe'].types>0&&stats['algebra.fe'].functions>0,'Shared algebra must retain compiler symbol highlighting');
 await page.route('**/source/orbit.fe.view',async r=>{await new Promise(resolve=>setTimeout(resolve,350));try{await r.continue();}catch{}});
 await page.locator('.file[href$="/orbit.fe.view"]').click();await open('color_demo.fe');await page.waitForTimeout(450);
 assert.equal(await page.locator('.file-heading strong').textContent(),'color_demo.fe');
 await page.unroute('**/source/orbit.fe.view');
 await page.route('**/source/cache.fe.view',r=>r.fulfill({status:404,body:'Unavailable for test'}));
 await page.locator('.file[href$="/cache.fe.view"]').click();await page.waitForFunction(()=>!document.querySelector('.error').hidden);
 await page.unroute('**/source/cache.fe.view');await open('cache.fe');
 const plain='/* outer /* inner */ comment */\nfn sample() { let text = "// <script>window.injected=true</script> λ"; let n = 42 }\n';
 await page.route('**/source/cache.fe.view',r=>r.fulfill({status:200,contentType:'text/plain; charset=utf-8',body:plain}));
 await open('cache.fe');assert.equal(await page.locator('.source-code').textContent(),plain);
 assert.equal(await page.locator('.source-code script').count(),0);assert.equal(await page.evaluate(()=>window.injected),undefined);
 assert.ok(await page.locator('.hl-string').count()>0);assert.ok(await page.locator('.hl-number').count()>0);
 await page.unroute('**/source/cache.fe.view');
 // A missing FEH1 separator must preserve the entire response as raw source.
 const malformed='FEH1\n1\n1Xx';
 await page.route('**/source/cache.fe.view',r=>r.fulfill({status:200,contentType:'text/plain',body:malformed}));
 await open('cache.fe');assert.equal(await page.locator('.source-code').textContent(),malformed);
 await page.unroute('**/source/cache.fe.view');await open('color_library.fe');
 if(process.env.SCREENSHOT)await page.screenshot({path:process.env.SCREENSHOT});
 await page.setViewportSize({width:390,height:844});assert.ok(await page.evaluate(()=>document.documentElement.scrollWidth<=innerWidth));
 assert.equal(await page.locator('header a[href="../colors/index.html"]').count(),1);
 assert.equal(await page.locator('header a[href="../index.html"]').count(),1);
 assert.deepEqual(await page.evaluate(()=>componentErrors),[]);
 assert.deepEqual(errors,[]);console.log(JSON.stringify({files:files.length,exactSource:true,semanticColors:true,lexicalFallback:true,staleResponses:true,errorRecovery:true,mobile:true,stats,errors}));
}finally{await releaseTestPage(browser,page);}
