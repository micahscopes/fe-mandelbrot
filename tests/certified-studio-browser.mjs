import assert from 'node:assert/strict';
import {mkdir,writeFile} from 'node:fs/promises';
const {chromium}=await import(process.env.PLAYWRIGHT_MODULE||'playwright-core');
const browser=await chromium.connectOverCDP(process.env.CDP_URL||'http://127.0.0.1:9222');
const context=browser.contexts()[0],control=await browser.newBrowserCDPSession();let targetId,page;
const out=process.env.STUDIO_OUT||'/tmp/fe-certified-studio';await mkdir(out,{recursive:true});
const report={errors:[],checks:[]};
try{
 const event=context.waitForEvent('page');({targetId}=await control.send('Target.createTarget',{url:'about:blank',background:process.env.STUDIO_TEST_FOREGROUND!=='1'}));page=await event;await page.setViewportSize({width:1440,height:1000});
 page.on('pageerror',error=>report.errors.push(error.message));
 await page.goto(process.env.BASE_URL||'http://localhost:8000/');
 await page.click('#point-select');assert.equal(await page.locator('#proof-picker').isVisible(),true);await page.keyboard.press('Escape');await page.click('#proof-open');await page.locator('#precision-examples > summary').click();assert.equal(await page.locator('#proof-panel').isVisible(),true);
 await page.click('#cert-run');await page.waitForFunction(()=>document.querySelector('#cert-result').dataset.state==='certified',null,{timeout:30000});
 const first=await page.evaluate(()=>window.lastCertifiedRun);assert.equal(first.result.step,821);assert.equal(first.request.depth,1024);assert.equal(first.request.precision,256);report.checks.push({name:'deep case',...first});
 assert.equal(await page.locator('#cert-radius').textContent(),'2⁻¹⁰²³');assert.equal(await page.locator('#cert-point').textContent(),'i + 2⁻¹⁰²⁴');
 await page.waitForTimeout(400);await page.screenshot({path:out+'/desktop.png'});
 // A real high-cost calculation is cancellable by terminating its dedicated worker.
 await page.selectOption('#cert-precision','4096');await page.click('#cert-run');await page.waitForFunction(()=>document.querySelector('#cert-result').dataset.state==='running');await page.waitForTimeout(150);await page.click('#cert-cancel');assert.equal(await page.locator('#cert-title').textContent(),'Calculation cancelled');await page.waitForTimeout(250);assert.equal(await page.locator('#cert-title').textContent(),'Calculation cancelled');report.cancelled=true;
 await page.selectOption('#cert-precision','128');await page.click('#cert-run');await page.waitForFunction(()=>document.querySelector('#cert-result').dataset.state==='unknown',null,{timeout:30000});report.unknown=await page.evaluate(()=>window.lastCertifiedRun);assert.equal(report.unknown.result.code,1);
 // Exact inputs and arithmetic survive view changes; the panel remains usable on mobile.
 await page.click('[data-preset="128"]');await page.click('#cert-run');await page.waitForFunction(()=>document.querySelector('#cert-result').dataset.state==='certified',null,{timeout:30000});assert.equal((await page.evaluate(()=>window.lastCertifiedRun)).result.step,104);
 await page.setViewportSize({width:390,height:844});await page.click('#cert-run');await page.waitForFunction(()=>document.querySelector('#cert-result').dataset.state==='certified');await page.waitForTimeout(400);assert.equal(await page.evaluate(()=>document.documentElement.scrollWidth>innerWidth),false);assert.equal(await page.locator('#studio-close').isVisible(),true);await page.screenshot({path:out+'/mobile.png'});report.mobile=true;
 await page.evaluate(()=>window.selectProofPoint({re:3500,im:3000}));await page.waitForFunction(()=>!document.querySelector('#proof-generate').disabled);report.legacyPreflight=true;
 await page.click('#studio-close');assert.equal(await page.locator('#proof-panel').isVisible(),false);await page.click('#proof-open');assert.equal(await page.locator('#proof-panel').isVisible(),true);
 // Force only the certified worker constructor to fail, leaving the old checker intact.
 await page.addInitScript(()=>{const Original=Worker;globalThis.Worker=class extends Original{constructor(url,options){if(String(url).includes('certified-worker'))throw Error('test worker unavailable');super(url,options);}};});
 await page.reload();await page.click('#proof-open');await page.locator('#precision-examples > summary').click();await page.click('#cert-run');await page.waitForFunction(()=>document.querySelector('#cert-result').dataset.state==='error');assert.equal(await page.locator('#cert-run').isEnabled(),true);assert.equal(await page.locator('#cert-cancel').isVisible(),false);report.workerFailureHandled=true;
 assert.deepEqual(report.errors,[]);report.pass=true;
}catch(error){report.error=String(error);throw error;}finally{await writeFile(out+'/receipt.json',JSON.stringify(report,null,2));if(targetId)await control.send('Target.closeTarget',{targetId});await browser.close();}
console.log(JSON.stringify(report,null,2));
