let loaded;
async function engine(){
 if(!loaded)loaded=(async()=>{const start=performance.now();const [{createInterfaceCaller},response]=await Promise.all([import('./certified/interface.js'),fetch(new URL('./certified/module.wasm',import.meta.url))]);if(!response.ok)throw Error(`Arithmetic module could not be loaded (${response.status})`);const {instance}=await WebAssembly.instantiate(await response.arrayBuffer(),{});return {caller:createInterfaceCaller(instance.exports),instance,setupMs:performance.now()-start};})();
 return loaded;
}
onmessage=async({data})=>{try{const cold=!loaded;const {caller,instance,setupMs}=await engine();postMessage({type:'ready',setupMs:cold?setupMs:0});const start=performance.now();const result=await caller.call('certify',data);postMessage({type:'result',result,computeMs:performance.now()-start,memoryBytes:instance.exports.memory.buffer.byteLength});}catch(error){postMessage({error:error.message||String(error)});}};
