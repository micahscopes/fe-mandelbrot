// Transport only: request layout, byte ownership and arena reset are generated
// from the Fe functions exported by app/point_prover.
const ready=Promise.all([
  import('./checker/interface.js'),
  WebAssembly.instantiateStreaming(fetch('./checker/module.wasm'),{}),
]).then(([adapter,{instance}])=>adapter.createInterfaceCaller(instance.exports));
self.onmessage=async({data})=>{
 const {id,kind,re,im}=data;
 try{
  if(!Number.isInteger(re)||!Number.isInteger(im))throw Error('Point must be integral Q12');
  if(re< -8192||re>=4096||im< -6144||im>=6144){
   if(kind==='preflight'){postMessage({id,terminal:0xffffffff});return;}
   throw Error('Point outside profile');
  }
  const caller=await ready,point={re,im};
  if(kind==='preflight'){
   const result=await caller.call('preflight',{point});
   postMessage({id,terminal:result.terminal_step});return;
  }
  if(kind!=='check'||!(data.proof instanceof ArrayBuffer))throw Error('Invalid checker request');
  const start=performance.now();
  const result=await caller.call('check',{point,proof:new Uint8Array(data.proof)});
  postMessage({id,code:result.code,accepted:result.code===0,checkMs:performance.now()-start});
 }catch(error){postMessage({id,error:error.message});}
};
