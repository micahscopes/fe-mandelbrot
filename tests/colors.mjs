import { releaseTestPage, stageSite } from './browser-session.mjs';
import assert from 'node:assert/strict';
const {chromium}=await import(process.env.PLAYWRIGHT_MODULE||'playwright-core');
const b=await chromium.connectOverCDP(process.env.CDP_URL||'http://127.0.0.1:9222');const p=await b.newPage({viewport:{width:1100,height:1200}});const errors=[];p.on('pageerror',e=>errors.push(String(e)));
const base=process.env.BASE_URL||'https://micahscopes.github.io/fe-mandelbrot/';
try{
 await stageSite(p,base);
 await p.goto(new URL('colors/index.html',base).href);
 await p.waitForFunction(()=>document.querySelector('fe-surface')?.state==='live',null,{timeout:60000});
 await p.waitForFunction(()=>document.querySelector('#status').hidden,null,{timeout:60000});
 const color=await p.evaluate(()=>{const s=document.querySelector('fe-surface');if(s._mode!=='wasm-2d')return null;return [...s._posterCanvas.getContext('2d').getImageData(0,0,1,1).data];});
 if(color)assert.ok(color[2]>color[0]+50,`Violet hue has incorrect channel order: ${color}`);
 // Screenshots are optional diagnostics; control/layout assertions always run.
 if(process.env.SCREENSHOT)await p.screenshot({path:process.env.SCREENSHOT,fullPage:true});
 await p.mouse.move(200,400);
 await p.locator('fe-surface').locator('[part~="input-hue"]').evaluate(i=>{i.value='180';i.dispatchEvent(new Event('input',{bubbles:true}));});
 await p.waitForFunction(()=>document.querySelector('fe-surface')._paramsSnapshot().hue===180,null,{timeout:30000});
 await p.setViewportSize({width:390,height:844});
 if(process.env.MOBILE_SCREENSHOT)await p.screenshot({path:process.env.MOBILE_SCREENSHOT,fullPage:true});
 assert.ok(await p.evaluate(()=>document.documentElement.scrollWidth<=innerWidth));assert.deepEqual(errors,[]);
 console.log(JSON.stringify({live:true,controls:true,mobile:true,color,errors}));
}finally{await releaseTestPage(b,p);}
