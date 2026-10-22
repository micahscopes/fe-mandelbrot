const {chromium}=await import(process.env.PLAYWRIGHT_MODULE||'playwright-core');
import assert from 'node:assert/strict';import {writeFile,mkdir}from'node:fs/promises';
const root=process.env.PROOF_OUT||'/tmp/mandelbrot-point-proof';await mkdir(root,{recursive:true});
const browser=await chromium.connectOverCDP(process.env.CDP_URL||'http://127.0.0.1:9222'),ctx=browser.contexts()[0],ctl=await browser.newBrowserCDPSession();let targetId;
const report={date:new Date().toISOString(),errors:[],checks:[]};
try{
 const event=ctx.waitForEvent('page');({targetId}=await ctl.send('Target.createTarget',{url:'about:blank',background:true}));const page=await event;const cdp=await ctx.newCDPSession(page);assert.equal((await cdp.send('Target.getTargetInfo')).targetInfo.targetId,targetId);
 page.on('pageerror',e=>{report.errors.push(e.message);console.log('PAGEERROR',e.message);});page.on('console',m=>{if(m.type()==='error')console.log('CONSOLE',m.text());});
 await page.goto(process.env.BASE_URL||'http://localhost:8000/');
 await page.waitForFunction(()=>document.querySelector('fe-surface')?.state==='live',null,{timeout:120000});console.log('VIEWER LIVE');
 await page.click('#proof-open');await page.click('#studio-tab-lab');await page.click('#proof-whole');await page.waitForFunction(()=>document.querySelector('fe-surface')._uniforms[8]===1.5);await page.click('#proof-pick');await page.locator('#proof-picker').click({position:{x:200,y:300}});await page.waitForFunction(()=>!document.querySelector('#proof-result').textContent.includes('Checking whether'));
 console.log('ACTUAL PICK',await page.locator('#proof-point').textContent(),await page.locator('#proof-result').textContent());
 for(const [re,im,label]of [[3500,3000,'early'],[1076,12,'late']]){
  await page.click('#proof-pick');const target=await page.evaluate(([re,im])=>{const s=document.querySelector('fe-surface'),r=s._liveCanvas.getBoundingClientRect();return{x:r.left+((re/4096+.5)/1.5+1)*r.width/2,y:r.top+(1-im/4096/1.5)*r.height/2};},[re,im]);await page.mouse.click(target.x,target.y);await page.waitForFunction(()=>!document.querySelector('#proof-generate').disabled);
  assert.ok((await page.locator('#proof-point').textContent()).includes(`${re}/4096 + (${im}/4096)i`));console.log('SELECT',label,await page.locator('#proof-result').textContent());
  assert.equal(await page.locator('#proof-generate').isEnabled(),true);
  await page.click('#proof-generate');let last='';const end=Date.now()+600000;
  while(await page.locator('#proof-generate').isDisabled()){
   const status=await page.locator('#proof-result').textContent();if(status!==last){console.log(label,status);last=status;}
   if(Date.now()>end)throw Error('GPU timeout');await new Promise(r=>setTimeout(r,1000));
  }
  console.log(label,'GENERATED',await page.locator('#proof-result').textContent());
  assert.equal(await page.locator('#proof-test').isEnabled(),true);
  const words=await page.evaluate(()=>Array.from(new Uint32Array(lastPointProof.proof)));await writeFile(root+'/proof-'+label+'.bin',Buffer.from(new Uint32Array(words).buffer));
  await page.click('#proof-test');await page.waitForFunction(()=>!document.querySelector('#proof-test').disabled,null,{timeout:120000});
  const clean=await page.evaluate(()=>window.lastPointProofCheck);console.log(label,'CHECK',clean,await page.locator('#proof-result').textContent());assert.equal(clean.accepted,true);
  await page.locator('#legacy-lane details').evaluate(e=>e.open=true);await page.click('#proof-corrupt');await page.waitForFunction(()=>!document.querySelector('#proof-test').disabled,null,{timeout:120000});const corrupt=await page.evaluate(()=>window.lastPointProofCheck);assert.equal(corrupt.accepted,false);
  report.checks.push({label,re,im,clean,corrupt,generation:await page.evaluate(()=>({ms:lastPointProof.generationMs,adapter:lastPointProof.adapter,words:lastPointProof.proof.byteLength/4,timings:lastPointProof.timings}))});await writeFile(root+'/browser-receipt.json',JSON.stringify(report,null,2));
 }
 await page.evaluate(async()=>{const check=document.querySelector('#proof-test').onclick();await window.selectProofPoint({re:0,im:0});await check;});report.staleSuppressed=await page.locator('#proof-result').textContent();assert.ok(report.staleSuppressed.includes('No escape'));
 await page.evaluate(()=>window.selectProofPoint({re:0,im:0}));assert.equal(await page.locator('#proof-generate').isEnabled(),false);assert.equal(await page.locator('#proof-test').isEnabled(),false);report.nonEscape=await page.locator('#proof-result').textContent();
 await page.evaluate(()=>window.selectProofPoint({re:4096,im:0}));assert.equal(await page.locator('#proof-generate').isEnabled(),false);report.outside=await page.locator('#proof-result').textContent();
 await page.screenshot({path:root+'/viewer-prover.png'});assert.deepEqual(report.errors,[]);report.pass=true;await writeFile(root+'/browser-receipt.json',JSON.stringify(report,null,2));console.log('PASS');
}catch(e){report.error=String(e);await writeFile(root+'/browser-receipt.json',JSON.stringify(report,null,2));throw e;}finally{if(targetId)await ctl.send('Target.closeTarget',{targetId});await browser.close();}
