import { releaseTestPage } from './browser-session.mjs';
import assert from 'node:assert/strict';
const {chromium}=await import(process.env.PLAYWRIGHT_MODULE||'playwright-core');
const browser=await chromium.connectOverCDP(process.env.CDP_URL||'http://127.0.0.1:9222');
const page=await browser.newPage({viewport:{width:512,height:512},deviceScaleFactor:1});
const errors=[];page.on('pageerror',e=>errors.push(String(e)));
const base=process.env.BASE_URL||'https://mb2-preview.argot-lab.calculator.ygg/standalone/';
try{
 await page.addInitScript(()=>{const create=GPUDevice.prototype.createBuffer;GPUDevice.prototype.createBuffer=function(o){return create.call(this,{...o,usage:o.usage&GPUBufferUsage.STORAGE?o.usage|GPUBufferUsage.COPY_SRC:o.usage});};});
 await page.goto(new URL('index.html',base).href);
 await page.waitForFunction(()=>document.querySelector('fe-surface')?.state==='live',null,{timeout:60000});
 await page.evaluate(()=>{window.gpuErrors=[];document.querySelector('fe-surface')._gpu.device.addEventListener('uncapturederror',e=>gpuErrors.push(e.error.message));});
 const zoom=page.locator('fe-surface').locator('[part~="input-zoom"]');
 const readout=page.locator('fe-surface').locator('[part~="value-magnification"]');
 await zoom.waitFor({state:'visible'});await readout.waitFor({state:'visible'});
 const initial=await page.evaluate(()=>document.querySelector('fe-surface')._paramsSnapshot());
 assert.ok(Math.abs(initial.magnification*initial.zoom/3-1)<1e-6);
 let complete=false;
 for(let i=0;i<300;i++){
  complete=await page.evaluate(async()=>{const s=document.querySelector('fe-surface'),d=s._gpu.device,b=d.createBuffer({size:144,usage:GPUBufferUsage.COPY_DST|GPUBufferUsage.MAP_READ}),e=d.createCommandEncoder();e.copyBufferToBuffer(s._gpu.resourceBuffers.get('cache'),0,b,0,144);d.queue.submit([e.finish()]);await b.mapAsync(GPUMapMode.READ);const w=new Uint32Array(b.getMappedRange()),ok=w[17]===1&&w[16]===w[34];b.unmap();b.destroy();return ok;});
  if(complete)break;await page.waitForTimeout(100);
 }
 assert.ok(complete,'Refinement snapshot did not complete');
 const oracle=await page.evaluate(async()=>{const s=document.querySelector('fe-surface'),d=s._gpu.device,n=512,b=d.createBuffer({size:n*n*12,usage:GPUBufferUsage.COPY_DST|GPUBufferUsage.MAP_READ}),e=d.createCommandEncoder();for(let y=0;y<n;y++)e.copyBufferToBuffer(s._gpu.resourceBuffers.get('snapshot_oracle'),y*2048*12,b,y*n*12,n*12);d.queue.submit([e.finish()]);await b.mapAsync(GPUMapMode.READ);const data=new Uint8Array(b.getMappedRange()).slice();b.unmap();b.destroy();return [...new Uint8Array(await crypto.subtle.digest('SHA-256',data))].map(x=>x.toString(16).padStart(2,'0')).join('');});
 assert.equal(oracle,'f65af2c90be815c577f481fdeeb22491bd0f844f92b1a78594d1e3f5ea8bbe12','Palette change altered Mandelbrot numeric results');
 await page.waitForTimeout(2200);
 const colorCheck=await page.evaluate(async()=>{
  const s=document.querySelector('fe-surface'),g=s._gpu,d=g.device,n=s._liveCanvas.width;
  const rb=await s._presentOn(s._liveContext,[...s._uniforms],{width:n,height:n,format:g.format});
  await rb.buffer.mapAsync(GPUMapMode.READ);const display=new Uint8Array(rb.buffer.getMappedRange()).slice();rb.buffer.unmap();rb.buffer.destroy();
  const b=d.createBuffer({size:2048*n*4,usage:GPUBufferUsage.COPY_DST|GPUBufferUsage.MAP_READ}),e=d.createCommandEncoder();e.copyBufferToBuffer(g.resourceBuffers.get('antialiased_pixels'),0,b,0,2048*n*4);d.queue.submit([e.finish()]);await b.mapAsync(GPUMapMode.READ);const words=new Uint32Array(b.getMappedRange());
  const srgb=x=>Math.round(255*Math.max(0,Math.min(1,x<=.0031308?12.92*x:1.055*Math.pow(x,1/2.4)-.055)));
  let maxError=0,samples=0;
  for(let y=0;y<n;y+=7)for(let x=0;x<n;x+=7){
   const bits=words[y*2048+x],l=(bits&4095)/4095,a=(((bits>>>12)&1023)-512)/2048,b=(((bits>>>22)&1023)-512)/2048;
   const u=(l+.3963377774*a+.2158037573*b)**3,v=(l-.1055613458*a-.0638541728*b)**3,w=(l-.0894841775*a-1.291485548*b)**3;
   let rgb=[srgb(4.0767416621*u-3.3077115913*v+.2309699292*w),srgb(-1.2684380046*u+2.6097574011*v-.3413193965*w),srgb(-.0041960863*u-.7034186147*v+1.707614701*w)];if(g.format.startsWith('bgra'))rgb.reverse();
   const o=y*rb.bytesPerRow+x*4;for(let c=0;c<3;c++)maxError=Math.max(maxError,Math.abs(display[o+c]-rgb[c]));if(display[o+3]!==255)throw Error('Nonopaque display pixel');samples++;
  }
  b.unmap();b.destroy();return{maxError,samples};
 });
 assert.ok(colorCheck.maxError<=2,`GPU OKLab conversion differs from exact sRGB reference: ${JSON.stringify(colorCheck)}`);
 await page.screenshot({path:process.env.SCREENSHOT||'/tmp/fe-mandelbrot.png'});
 await zoom.evaluate(input=>{input.value=String(Number(input.value)+.1);input.dispatchEvent(new Event('input',{bubbles:true}));});
 await page.waitForFunction(old=>document.querySelector('fe-surface')._paramsSnapshot().zoom!==old,initial.zoom);
 const changed=await page.evaluate(()=>document.querySelector('fe-surface')._paramsSnapshot());
 assert.ok(Math.abs(changed.magnification*changed.zoom/3-1)<1e-6);
 assert.ok((await readout.textContent()).length>0);
 assert.deepEqual(await page.evaluate(()=>gpuErrors),[]);
 await page.goto(new URL('viewer/index.html',base).href);
 await page.waitForFunction(()=>document.querySelector('fe-component')?._active,null,{timeout:30000});
 assert.equal(await page.locator('.file').count(),19);
 await page.locator('.file[href$="/palette.fe.view"]').click();
 await page.waitForFunction(()=>document.querySelector('.file-heading strong')?.textContent==='palette.fe' && !document.querySelector('.source-lines')?.hidden);
 assert.ok((await page.locator('.source-code').textContent()).toLowerCase().includes('oklch'));
 await page.setViewportSize({width:390,height:844});
 assert.ok(await page.evaluate(()=>document.documentElement.scrollWidth<=innerWidth));
 await page.goto(new URL('colors/index.html',base).href);
 await page.waitForFunction(()=>document.querySelector('fe-surface')?.state==='live',null,{timeout:60000});
 const hue=page.locator('fe-surface').locator('[part~="input-hue"]');
 await hue.waitFor({state:'visible'});
 await hue.evaluate(input=>{input.value='180';input.dispatchEvent(new Event('input',{bubbles:true}));});
 await page.waitForFunction(()=>document.querySelector('fe-surface')._paramsSnapshot().hue===180);
 assert.ok(await page.evaluate(()=>document.documentElement.scrollWidth<=innerWidth),'Color lab overflows mobile viewport');
 const library=await page.request.get(new URL('colors/source/lib.fe',base).href);
 assert.equal(library.status(),200);assert.ok((await library.text()).includes('pub fn oklch'));
 if(process.env.COLOR_SCREENSHOT)await page.screenshot({path:process.env.COLOR_SCREENSHOT});
 assert.deepEqual(errors,[]);
 console.log(JSON.stringify({live:true,zoom:changed.zoom,magnification:changed.magnification,oracle,colorCheck,sourceFiles:19,colorLab:true,errors}));
}finally{await releaseTestPage(browser,page);}
