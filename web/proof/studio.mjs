const $=id=>document.getElementById(id);
const panel=$('proof-panel'),open=$('proof-open'),intro=$('studio-intro');
function showStudio(show){panel.hidden=!show;open.setAttribute('aria-expanded',String(show));intro.hidden=show;if(!show){$('proof-picker').hidden=true;open.focus();}}
open.onclick=()=>showStudio(panel.hidden);$('studio-intro-open').onclick=()=>{showStudio(true);$('studio-tab-certified').focus();};$('studio-close').onclick=()=>showStudio(false);
const tabs=[$('studio-tab-certified'),$('studio-tab-lab')],lanes=[$('certified-lane'),$('legacy-lane')];
function selectTab(index){tabs.forEach((tab,i)=>{tab.setAttribute('aria-selected',String(i===index));tab.tabIndex=i===index?0:-1;lanes[i].hidden=i!==index;});$('proof-picker').hidden=true;}
tabs.forEach((tab,i)=>{tab.onclick=()=>selectTab(i);tab.onkeydown=e=>{if(['ArrowLeft','ArrowRight','Home','End'].includes(e.key)){e.preventDefault();const next=e.key==='Home'?0:e.key==='End'?1:1-i;selectTab(next);tabs[next].focus();}};});
addEventListener('keydown',e=>{if(e.key==='Escape'&&!panel.hidden&&$('proof-picker').hidden)showStudio(false);});
const superscript=n=>String(n).replace(/[0-9-]/g,c=>'⁰¹²³⁴⁵⁶⁷⁸⁹'['0123456789'.indexOf(c)]||'⁻');
const power=n=>'2'+superscript(n),inputs=[$('cert-depth'),$('cert-precision'),$('cert-budget')];
let worker=null,active=false,token=0,ticker=null;
function updateClaim(){$('cert-cost-note').hidden=Number($('cert-precision').value)<4096;const k=Number($('cert-depth').value);if(Number.isInteger(k)&&k>0&&k<=16384){$('cert-point').textContent='i + '+power(-k);$('cert-radius').textContent=power(1-k);}else{$('cert-point').textContent='Enter a valid offset depth';$('cert-radius').textContent='—';}}
inputs.forEach(input=>input.addEventListener('input',()=>{updateClaim();document.querySelectorAll('[data-preset]').forEach(b=>b.removeAttribute('aria-pressed'));if(!active){setResult('idle','Parameters updated','Run again to certify the new point and budget.');$('cert-metrics').hidden=true;}}));
document.querySelectorAll('[data-preset]').forEach(button=>{button.onclick=()=>{const depth=Number(button.dataset.preset);$('cert-depth').value=depth;$('cert-precision').value=depth===128?128:depth===1024?256:1024;$('cert-budget').value=2*depth+32;document.querySelectorAll('[data-preset]').forEach(b=>b.setAttribute('aria-pressed',String(b===button)));updateClaim();setResult('idle','Example selected',depth===4096?'Offset depth: 4,096. Working precision: 1,024 bits.':'Run the selected parameters.');$('cert-metrics').hidden=true;};});
function setResult(state,title,message){$('cert-result').dataset.state=state;$('cert-title').textContent=title;$('cert-message').textContent=message;$('cert-state-icon').textContent=({idle:'○',running:'◌',certified:'✓',unknown:'◐',error:'!'})[state]||'!';}
function setBusy(value){active=value;for(const input of inputs)input.disabled=value;document.querySelectorAll('[data-preset]').forEach(b=>b.disabled=value);$('cert-run').disabled=value;$('cert-run').textContent=value?'Computing…':'Certify escape →';$('cert-cancel').hidden=!value;}
function stop(){++token;if(worker)worker.terminate();worker=null;clearInterval(ticker);setBusy(false);}
$('cert-cancel').onclick=()=>{stop();setResult('idle','Calculation cancelled','Nothing was certified. Adjust the budget or precision and try again.');};
const duration=ms=>ms<1000?`${Math.round(ms)} ms`:`${(ms/1000).toFixed(2)} s`;
$('cert-form').onsubmit=event=>{
 event.preventDefault();if(active||!$('cert-form').reportValidity())return;
 const request={depth:Number(inputs[0].value),precision:Number(inputs[1].value),max_steps:Number(inputs[2].value)};
 if(!Number.isInteger(request.depth)||request.depth<1||request.depth>16384||![128,256,512,1024,4096].includes(request.precision)||!Number.isInteger(request.max_steps)||request.max_steps<1||request.max_steps>10000){setResult('error','Check the parameters','Use a whole-number depth and iteration budget within the shown limits.');return;}
 setBusy(true);$('cert-metrics').hidden=true;const own=++token,start=performance.now();let setupMs=0;
 setResult('running','Starting Fe/Wasm','Loading the arithmetic engine. The explorer remains interactive.');$('cert-result').scrollIntoView({block:'nearest',behavior:'smooth'});
 ticker=setInterval(()=>{if(own===token)$('cert-message').textContent=`${duration(performance.now()-start)} elapsed · checking exact-orbit enclosures. Cancel at any time.`;},250);
 try{
 if(!worker)worker=new Worker(new URL('./certified-worker.mjs',import.meta.url),{type:'module'});
 worker.onmessage=({data})=>{if(own!==token)return;if(data.type==='ready'){setupMs=data.setupMs;setResult('running','Calculating certified bounds','Running in a background worker…');return;}
  clearInterval(ticker);setBusy(false);
  if(data.error){setResult('error','Calculation stopped',data.error);worker.terminate();worker=null;return;}
  const {result,computeMs,memoryBytes}=data;window.lastCertifiedRun={request,result,computeMs,setupMs,memoryBytes};
  if(result.code===0)setResult('certified','Escape certified',`The exact orbit escapes by iteration ${result.step.toLocaleString()}. The point is inside the displayed circle.`);
  else if(result.code===1)setResult('unknown','Inconclusive at this budget',`No escape was certified after ${result.step.toLocaleString()} steps. Try more precision or a larger budget. This does not establish membership.`);
  else setResult('error','Unsupported parameters','The arithmetic engine rejected this profile. No result was certified.');
  $('cert-compute').textContent=duration(computeMs);$('cert-setup').textContent=duration(setupMs);$('cert-memory').textContent=`${Math.round(result.scratch_bytes/1024)} KiB`;$('cert-metrics').hidden=false;$('cert-metrics').scrollIntoView({block:'nearest',behavior:'smooth'});
 };
 worker.onerror=event=>{if(own!==token)return;stop();setResult('error','Unable to run the engine',event.message||'Reload the page and try again.');};
 worker.postMessage(request);
 }catch(error){stop();setResult('error','Unable to start the engine',error.message||'Reload and try again.');}
};
updateClaim();
