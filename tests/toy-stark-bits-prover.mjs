// Independent byte fixtures are consumed without reading the Rust producer.
import assert from 'node:assert/strict';
import {readFile,writeFile} from 'node:fs/promises';
import {pathToFileURL} from 'node:url';
import {createHash} from 'node:crypto';
import {gunzipSync} from 'node:zlib';
const fixturePath=process.env.FE_BITS_FIXTURES ?? new URL('./fixtures/toy-stark-bits/fixtures.json.gz',import.meta.url).pathname;
const compressed=await readFile(fixturePath), fixtureBytes=fixturePath.endsWith('.gz')?gunzipSync(compressed):compressed;
const fixtures=JSON.parse(fixtureBytes);
if(!process.env.FE_BITS_PROVER_BUNDLE) throw Error('Set FE_BITS_PROVER_BUNDLE to the compiled tests/toy-stark-bits bundle');
const url=pathToFileURL(process.env.FE_BITS_PROVER_BUNDLE.replace(/\/?$/,'/'));
const setupStart=performance.now();
const {createInterfaceCaller}=await import(new URL('interface.js',url));
const {instance}=await WebAssembly.instantiate(await readFile(new URL('module.wasm',url)),{});
const caller=createInterfaceCaller(instance.exports), setupMilliseconds=performance.now()-setupStart;
const initialMemoryBytes=instance.exports.memory.buffer.byteLength;
const witnessBits={
 'honest-weight3-a':[1,0,1,0,0,1,0,0],
 'honest-weight3-b':[0,1,1,0,0,0,0,1],
 'honest-weight0':Array(8).fill(0),
 'honest-weight8':Array(8).fill(1),
};
const honest=fixtures.cases.filter(item=>Object.hasOwn(witnessBits,item.name));
assert.equal(honest.length,4);
const bytes=words=>{const output=new Uint8Array(words.length*4), view=new DataView(output.buffer);words.forEach((word,i)=>view.setUint32(i*4,word,true));return output;};
const words=buffer=>{const v=new DataView(buffer.buffer,buffer.byteOffset,buffer.byteLength);return Array.from({length:buffer.length/4},(_,i)=>v.getUint32(i*4,true));};
const produced=[],timings=[],invalidResults=[];
function parity(name,actual,expected) {
 assert.equal(actual.length,9824,name+' byte length');
 let difference=-1;for(let i=0;i<expected.length;i++)if(actual[i]!==expected[i]){difference=i;break;}
 assert.equal(difference,-1,name+' first differing byte '+difference+' word '+Math.floor(difference/4));
}
async function make(item,repeat=false) {
 const start=performance.now();
 const result=await caller.call('prove',{statement:{weight:item.statement},witness:{bits:witnessBits[item.name]}});
 const proveMilliseconds=performance.now()-start;
 assert.equal(result.status,0,item.name);
 const proof=Uint8Array.from(result.proof);
 parity(item.name,proof,bytes(item.proof));
 const verifyStart=performance.now();
 assert.equal((await caller.call('verify',{statement:{weight:item.statement},proof})).status,0,item.name+' public verification');
 const verifyMilliseconds=performance.now()-verifyStart;
 timings.push({name:item.name,repeat,proveMilliseconds,verifyMilliseconds,memoryBytes:instance.exports.memory.buffer.byteLength});
 if(!repeat) {
  assert.equal((await caller.call('verify',{statement:{weight:item.statement+1},proof})).status,6,item.name+' changed public statement');
  produced.push({name:item.name,statement:item.statement,proof:words(proof)});
 }
}
for(const item of honest)await make(item);
assert.notDeepEqual(produced[0].proof,produced[1].proof,'distinct witnesses have different non-hiding proofs');
const memoryBeforeRepeats=instance.exports.memory.buffer.byteLength;
for(const item of honest)await make(item,true);
assert(timings.filter(x=>x.repeat).every(x=>x.memoryBytes===memoryBeforeRepeats),'stable memory over repeated producer/verifier calls');
const sample=honest[0], validBits=witnessBits[sample.name];
const invalid=[
 ['bit2',3,[2,...validBits.slice(1)]],
 ['bit-p',3,[2013265921,...validBits.slice(1)]],
 ['bit-u32max',3,[4294967295,...validBits.slice(1)]],
 ['wrong sum',4,validBits],
 ['false weight9',9,Array(8).fill(1)],
 ['noncanonical statement',2013265921,validBits],
 ['statement-u32max',4294967295,validBits],
];
for(const [name,S,bits] of invalid) {
 const result=await caller.call('prove',{statement:{weight:S},witness:{bits}});
 assert.equal(result.status,1,name);assert.equal(result.proof.length,0,name+' no proof on failure');invalidResults.push({name,status:result.status});
}
if(process.env.FE_BITS_PROVER_OUTPUT)await writeFile(process.env.FE_BITS_PROVER_OUTPUT,JSON.stringify({cases:produced},null,2)+'\n');
console.log(JSON.stringify({pass:true,fixturePath,fixtureJsonSha256:createHash('sha256').update(fixtureBytes).digest('hex'),setupMilliseconds,initialMemoryBytes,memoryBeforeRepeats,proofByteParityCases:4,publicVerifyCases:8,changedStatementCases:4,repeatCases:4,invalidCases:invalidResults.length,timings,invalidResults,scope:'Node/Wasm module setup, Fe proof generation and Fe verification measured separately. Not browser/GPU startup or Mandelbrot proof generation.',limitations:'Deterministic non-hiding test argument. No masking, ZK, theorem mapping or soundness-bit acceptance.'},null,2));
