import './studio.mjs';
import {selectAt,projectPoint} from './selection.mjs';
const $=s=>document.querySelector(s),surface=$('fe-surface'),panel=$('#proof-panel'),result=$('#proof-result'),description=$('#proof-point');
const worker=new Worker(new URL('./checker-worker.mjs',import.meta.url),{type:'module'});let serial=0,generation=0,selected=null,receipt=null,busy=false,frame;
const pending=new Map();worker.onmessage=({data})=>{const p=pending.get(data.id);if(!p)return;pending.delete(data.id);data.error?p.reject(Error(data.error)):p.resolve(data);};worker.onerror=e=>{for(const p of pending.values())p.reject(Error(e.message));pending.clear();};
function ask(kind,point,proof){return new Promise((resolve,reject)=>{const id=++serial;pending.set(id,{resolve,reject});worker.postMessage({id,kind,...point,proof},proof?[proof]:[]);});}
function controls(){for(const id of ['proof-generate','proof-test','proof-corrupt'])$('#'+id).disabled=busy||!selected||(id==='proof-generate'?!selected.eligible:!receipt||receipt.generation!==generation);$('#proof-pick').disabled=busy;$('#point-select').disabled=busy;}
async function choose(point){
 dispatchEvent(new Event('proof-point-selected'));$('#proof-pick').textContent='Select another point';
 const own=++generation;receipt=null;selected={...point,eligible:false};controls();
 description.textContent=`${point.re}/4096 + (${point.im}/4096)i`;
 result.textContent='Checking whether this point escapes within 1,023 steps…';
 try{const {terminal}=await ask('preflight',point);if(own!==generation)return;
  selected={...point,terminal,eligible:terminal<1024};
  result.textContent=terminal===0xffffffff?'Point is outside the supported view: real [−2,1), imaginary [−1.5,1.5).':terminal===0xfffffffe?'No escape within 1,023 steps. This does not establish Mandelbrot membership.':`Escapes at step ${terminal}. Ready to generate.`;
 }catch(e){if(own===generation)result.textContent=e.message;}controls();
}
$('#proof-pick').onclick=()=>{const overlay=$('#proof-picker');overlay.hidden=false;result.textContent='Click or tap a point on the fractal. The proof point snaps to the 1/4096 grid.';};
$('#proof-picker').onpointerdown=e=>{
 e.preventDefault();e.stopPropagation();$('#proof-picker').hidden=true;
 try{const expected=['re.value.lead','re.value.tail.lead','re.value.tail.tail.lead','re.value.tail.tail.tail.value','im.value.lead','im.value.tail.lead','im.value.tail.tail.lead','im.value.tail.tail.tail.value','zoom'];
 const actual=surface._members?.slice(0,9).map(x=>x.name);if(JSON.stringify(actual)!==JSON.stringify(expected))throw Error('Viewer camera interface changed; point selection is unavailable');
 const canvas=surface._liveCanvas||surface._posterCanvas,rect=canvas.getBoundingClientRect();const point=selectAt([...surface._uniforms],rect,e.clientX,e.clientY);void choose(point);}catch(error){result.textContent=error.message;}
};
addEventListener('keydown',e=>{if(e.key==='Escape')$('#proof-picker').hidden=true;});
$('#proof-generate').onclick=async()=>{
 if(busy||!selected?.eligible)return;busy=true;controls();const own=generation,point={re:selected.re,im:selected.im};let progress;
 try{
  if(!frame){frame=document.createElement('iframe');frame.id='proof-engine';frame.title='GPU proof engine';frame.src=new URL('./frame.html',import.meta.url);document.body.append(frame);await new Promise((resolve,reject)=>{frame.onload=resolve;frame.onerror=reject;});}
  const deadline=Date.now()+30000;while(!frame.contentWindow.proofEngineReady){if(Date.now()>deadline)throw Error('Proof engine failed to load');await new Promise(r=>setTimeout(r,50));}
  if(own!==generation)return;
  result.textContent='Preparing GPU programs and generating proof…';progress=setInterval(()=>{if(own===generation)result.textContent=frame.contentWindow.proofEngineProgress();},250);
  const generated=await frame.contentWindow.generatePointProof(point.re,point.im);
  if(own!==generation)return;receipt={...generated,point,generation:own,profile:'viewer-capacity-q12-v1',bound:1023};
  window.lastPointProof=receipt;
  result.textContent=`Proof generated in ${(generated.generationMs/1000).toFixed(2)} s. Click Test proof for an independent witness and receipt check.`;
 }catch(e){if(own===generation)result.textContent='Proof generation failed: '+e.message;}finally{clearInterval(progress);busy=false;controls();}
};
async function test(corrupt){
 if(busy||!receipt||receipt.generation!==generation)return;const own=generation,original=receipt;busy=true;controls();result.textContent=corrupt?'Testing a corrupted copy…':'Independently checking the witness and receipt…';
 try{
  const copy=receipt.proof.slice(0);if(corrupt)new Uint32Array(copy)[0]^=1;
  const checked=await ask('check',receipt.point,copy);
  if(own!==generation||receipt!==original)return;
  window.lastPointProofCheck={...checked,corrupt,generation:own};
  result.textContent=corrupt?checked.accepted?'Unexpected acceptance of corrupted copy.':'Corrupted copy rejected. Original proof preserved.':checked.accepted?`Check passed in ${(checked.checkMs/1000).toFixed(2)} s: exact point, complete Q12 witness, public/trace commitments, transcript and FRI openings.`:`Check rejected (reason ${checked.code}).`;
 }catch(e){if(own===generation)result.textContent='Check failed: '+e.message;}finally{busy=false;controls();}
}
$('#proof-test').onclick=()=>test(false);$('#proof-corrupt').onclick=()=>test(true);
// Debug/test API uses the identical selection/checker path; it never supplies witness rows.
window.selectProofPoint=choose;
controls();

// Marker follows the immutable snapped proof point, including camera changes.
function updateMarker(){
 const marker=$('#proof-marker');if(!selected){marker.hidden=true;return;}
 const canvas=surface._liveCanvas||surface._posterCanvas,u=surface._uniforms;
 if(!canvas||!u||u.length<10||!(u[8]>0)){marker.hidden=true;return;}
 const r=canvas.getBoundingClientRect(),{nx,ny}=projectPoint(selected,u.slice(0,8),u[8]);
 marker.hidden=Math.abs(nx)>1||Math.abs(ny)>1||!Number.isFinite(nx+ny);
 if(!marker.hidden){marker.style.left=(r.left+(nx+1)*r.width/2)+'px';marker.style.top=(r.top+(1-ny)*r.height/2)+'px';}
}
surface.addEventListener('fe-frame',updateMarker);surface.addEventListener('fe-ready',updateMarker);setInterval(updateMarker,250);
