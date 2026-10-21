const ready=WebAssembly.instantiateStreaming(fetch('./checker.wasm'),{}).then(x=>x.instance.exports);
self.onmessage=async({data})=>{
 const {id,kind,re,im}=data;
 try{
  const w=await ready;
  if(!Number.isInteger(re)||!Number.isInteger(im))throw Error('Point must be integral Q12');
  if(re< -8192||re>=4096||im< -6144||im>=6144){if(kind==='preflight'){postMessage({id,terminal:0xffffffff});return;}throw Error('Point outside profile');}
  if(kind==='preflight'){postMessage({id,terminal:w.point_escape(re,im)>>>0});return;}
  if(kind!=='check')throw Error('Unknown checker request');
  if(!(data.proof instanceof ArrayBuffer)||data.proof.byteLength!==4*w.proof_words())throw Error('Wrong proof size');
  const words=new Uint32Array(data.proof),ptr=w.proof_alloc(words.length);if(!ptr)throw Error('Allocation failed');
  const start=performance.now();let code;
  try{new Uint32Array(w.memory.buffer,ptr,words.length).set(words);code=w.proof_check(ptr,words.length,re,im);}finally{w.proof_free(ptr,words.length);}
  postMessage({id,code,accepted:code===0,checkMs:performance.now()-start});
 }catch(error){postMessage({id,error:error.message});}
};
