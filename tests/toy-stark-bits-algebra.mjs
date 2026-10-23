// Independent BigInt oracle; Fe owns the shared arithmetic used by the fixture.
import assert from 'node:assert/strict';
import {readFile} from 'node:fs/promises';
import {pathToFileURL} from 'node:url';
const P=2013265921n;
const mod=x=>((x%P)+P)%P;
const zero=()=>[0n,0n,0n,0n], one=()=>[1n,0n,0n,0n], base=x=>[mod(x),0n,0n,0n];
const add=(a,b)=>a.map((x,i)=>mod(x+b[i]));
const sub=(a,b)=>a.map((x,i)=>mod(x-b[i]));
const scale=(a,b)=>a.map(x=>mod(x*b));
const iszero=a=>a.every(x=>x===0n);
function mul(a,b) { const c=zero(); for(let i=0;i<4;i++) for(let j=0;j<4;j++) c[(i+j)%4]=mod(c[(i+j)%4]+a[i]*b[j]*(i+j>=4?11n:1n)); return c; }
function pow(a,n) { let r=one(); for(;n;n>>=1n,a=mul(a,a)) if(n&1n) r=mul(r,a); return r; }
function basepow(a,n) { let r=1n; for(;n;n>>=1n,a=mod(a*a)) if(n&1n) r=mod(r*a); return r; }
const baseinv=a=>{assert.notEqual(mod(a),0n); return basepow(mod(a),P-2n);};
function inv(a) { assert(!iszero(a)); return pow(a,P**4n-2n); }
const div=(a,b)=>mul(a,inv(b));
const evaluate=(coefficients,x)=>coefficients.reduceRight((r,c)=>add(mul(r,x),c),zero());
const g=basepow(31n,(P-1n)/8n), omega=basepow(31n,(P-1n)/32n);
const H=Array.from({length:8},(_,i)=>basepow(g,BigInt(i)));
const D=Array.from({length:32},(_,i)=>mod(31n*basepow(omega,BigInt(i))));
assert.equal(basepow(omega,4n),g); assert.notEqual(basepow(31n,32n),1n);
for(let i=0;i<32;i++) { assert(!H.includes(D[i])); assert.equal(mod(g*D[i]),D[(i+4)%32]); assert.equal(mod(-D[i]),D[(i+16)%32]); }
// Inverse DFT on shift*<root>, including the coset unscaling.
function interpolate(values,root,shift=1n) {
 const n=values.length, inverseN=baseinv(BigInt(n)), inverseShift=baseinv(shift);
 return Array.from({length:n},(_,k)=>{
  let sum=zero(); for(let i=0;i<n;i++) sum=add(sum,scale(values[i],basepow(root,BigInt((n-(i*k)%n)%n))));
  return scale(sum,mod(inverseN*basepow(inverseShift,BigInt(k))));
 });
}
const r=Array.from({length:8},(_,i)=>[BigInt(i+2),BigInt(i+11),BigInt(2*i+7),BigInt(i*i+1)]);
const rF=Array.from({length:5},(_,i)=>[BigInt(i+3),BigInt(2*i+5),BigInt(i+9),BigInt(i*i+2)]);
const q=[123n,456n,789n,1011n];
function composition(point,mask,statement,challenges=r,wrongCorrection=false) {
 const [b0,b1,a0,a1]=mask, zh=sub(pow(point,8n),one()), last=base(H[7]);
 assert(!iszero(zh));
 const quotients=[div(sub(mul(b0,b0),b0),zh),div(mul(sub(sub(a1,a0),b1),sub(point,last)),zh),div(sub(a0,b0),sub(point,one())),div(sub(a0,base(statement)),sub(point,last))];
 const corrections=[1n,wrongCorrection?1n:7n,1n,1n];
 return quotients.reduce((sum,quotient,k)=>add(sum,mul(add(challenges[2*k],mul(challenges[2*k+1],pow(point,corrections[k]))),quotient)),zero());
}
function deep(point,yb,ya,yc,answers,challenges=rF) {
 const denom=sub(point,q), shifted=sub(point,scale(q,g));
 const values=[yb,yb,ya,ya,yc];
 return values.reduce((sum,value,k)=>add(sum,mul(challenges[k],div(sub(value,answers[k]),k===1||k===3?shifted:denom))),zero());
}
function trace(bits) {
 let running=0n; const accum=bits.map(b=>running+=b);
 return {bits,accum,b:interpolate(bits.map(base),g),a:interpolate(accum.map(base),g),S:running};
}
const maskAt=(trace,x)=>[evaluate(trace.b,x),evaluate(trace.b,scale(x,g)),evaluate(trace.a,x),evaluate(trace.a,scale(x,g))];
const words=a=>a.map(Number), rows=a=>a.map(words);
if(!process.env.FE_BITS_ALGEBRA_BUNDLE) throw Error('Set FE_BITS_ALGEBRA_BUNDLE to the compiled tests/toy-stark-bits bundle');
const url=pathToFileURL(process.env.FE_BITS_ALGEBRA_BUNDLE.replace(/\/?$/,'/'));
const {createInterfaceCaller}=await import(new URL('interface.js',url));
const {instance}=await WebAssembly.instantiate(await readFile(new URL('module.wasm',url)),{});
const caller=createInterfaceCaller(instance.exports);
assert.deepEqual(await caller.call('domains',{unused:0}),{g:Number(g),omega:Number(omega)});
let airCalls=0,deepCalls=0,invalidCalls=0;
const airRequest=(point,mask,S,challenges=r)=>({point:words(point),mask:rows(mask),challenges:rows(challenges),statement:Number(S)});
const deepRequest=(point,yb,ya,yc,answers,challenges=rF)=>({point:words(point),y_b:words(yb),y_a:words(ya),y_c:words(yc),answers:rows(answers),challenges:rows(challenges),q:words(q),g:words(base(g))});
async function checkAir(point,mask,S,challenges=r) {
 const actual=await caller.call('air8',airRequest(point,mask,S,challenges)); airCalls++;
 assert.deepEqual(actual,{status:0,value:words(composition(point,mask,S,challenges))}); return actual;
}
async function checkDeep(point,yb,ya,yc,answers,challenges=rF) {
 const actual=await caller.call('deep',deepRequest(point,yb,ya,yc,answers,challenges)); deepCalls++;
 assert.deepEqual(actual,{status:0,value:words(deep(point,yb,ya,yc,answers,challenges))}); return actual;
}
const witnesses=[trace([1n,0n,1n,0n,0n,1n,0n,0n]),trace([0n,1n,1n,0n,0n,0n,0n,1n]),trace(Array(8).fill(0n)),trace(Array(8).fill(1n))];
assert.equal(witnesses[0].S,witnesses[1].S); assert.notDeepEqual(witnesses[0].b,witnesses[1].b);
const witnessResults=[];
for(const t of witnesses) {
 // Source interpolation is independently checked against every trace row.
 for(let i=0;i<8;i++) { assert.deepEqual(evaluate(t.b,base(H[i])),base(t.bits[i])); assert.deepEqual(evaluate(t.a,base(H[i])),base(t.accum[i])); }
 const values=[];
 for(const x of D) { const mask=maskAt(t,base(x)); const result=await checkAir(base(x),mask,t.S); values.push(result.value.map(BigInt)); }
 const coefficients=interpolate(values,omega,31n);
 assert(coefficients.slice(8).every(iszero),'honest composition degree <8');
 const maskQ=maskAt(t,q), beta=evaluate(coefficients,q), answers=[...maskQ,beta];
 assert.deepEqual(beta,composition(q,maskQ,t.S),'OOD relation');
 await checkAir(q,maskQ,t.S);
 const deepValues=[];
 for(let i=0;i<32;i++) {
  const x=base(D[i]), [yb,,ya]=maskAt(t,x);
  const actual=await checkDeep(x,yb,ya,values[i],answers); deepValues.push(actual.value.map(BigInt));
 }
 assert(interpolate(deepValues,omega,31n).slice(7).every(iszero),'honest DEEP degree <7');
 witnessResults.push({statement:Number(t.S),bits:t.bits.map(Number),compositionDegreeBound:8,deepDegreeBound:7});
}
const t=witnesses[0], maskQ=maskAt(t,q), beta=composition(q,maskQ,t.S), answers=[...maskQ,beta];
assert.notDeepEqual(add(beta,one()),composition(q,maskQ,t.S),'unrelated quotient claim differs');
const wrongMask=[...maskQ]; wrongMask[3]=add(wrongMask[3],one());
assert.notDeepEqual(composition(q,wrongMask,t.S),beta,'false shifted source changes OOD relation');
assert.notDeepEqual(composition(q,maskQ,t.S,r,true),beta,'degree-correction exponent matters');
const wrongAir=await checkAir(q,wrongMask,t.S);
assert.notDeepEqual(wrongAir.value,words(beta),'Fe false source differs from claimed composition');
// False source answers can be made OOD-consistent; full source linkage is not
// supplied here. Their DEEP table fails the honest degree bound in this fixture.
const falseAnswers=[...wrongMask,composition(q,wrongMask,t.S)], falseDeep=[];
for(const x of D) {
 const point=base(x), mask=maskAt(t,point), yc=composition(point,mask,t.S);
 const actual=await checkDeep(point,mask[0],mask[2],yc,falseAnswers); falseDeep.push(actual.value.map(BigInt));
}
assert(interpolate(falseDeep,omega,31n).slice(7).some(v=>!iszero(v)),'forged source answers produce high-degree DEEP table');
const bad=trace([2n,0n,1n,0n,0n,0n,0n,0n]);
const badComposition=[];
for(const x of D) { const actual=await checkAir(base(x),maskAt(bad,base(x)),bad.S); badComposition.push(actual.value.map(BigInt)); }
assert(interpolate(badComposition,omega,31n).slice(8).some(v=>!iszero(v)),'nonboolean trace does not pass honest degree bound');
// S>8 is not a guard: arithmetic evaluates the false statement instead.
await checkAir(q,maskQ,9n);
const falseStatement=[];
for(const x of D) { const actual=await checkAir(base(x),maskAt(t,base(x)),9n); falseStatement.push(actual.value.map(BigInt)); }
assert(interpolate(falseStatement,omega,31n).slice(8).some(v=>!iszero(v)));
await checkAir(zero(),[zero(),zero(),zero(),zero()],0n,Array.from({length:8},zero));
await checkDeep(zero(),zero(),zero(),zero(),Array.from({length:5},zero));
const extensionPoint=[17n,19n,23n,29n], extensionMask=maskAt(t,extensionPoint);
await checkDeep(extensionPoint,extensionMask[0],extensionMask[2],composition(extensionPoint,extensionMask,t.S),answers);
for(const h of H) { const actual=await caller.call('air8',airRequest(base(h),maskQ,t.S)); assert.equal(actual.status,2); invalidCalls++; }
for(const point of [q,scale(q,g)]) { const actual=await caller.call('deep',deepRequest(point,zero(),zero(),zero(),answers)); assert.equal(actual.status,2); invalidCalls++; }
// Guard precedence even when every numerator/weight is zero.
for(const point of [q,scale(q,g)]) { const actual=await caller.call('deep',deepRequest(point,zero(),zero(),zero(),Array.from({length:5},zero),Array.from({length:5},zero))); assert.equal(actual.status,2); invalidCalls++; }
const canonicalAir=airRequest(q,maskQ,t.S), canonicalDeep=deepRequest(base(D[0]),zero(),zero(),zero(),answers);
for(const field of ['point','mask','challenges','statement']) {
 const request=structuredClone(canonicalAir);
 if(field==='statement') request.statement=Number(P); else if(field==='point') request[field][3]=Number(P); else request[field].at(-1)[3]=Number(P);
 assert.equal((await caller.call('air8',request)).status,1); invalidCalls++;
}
for(const field of ['point','y_b','y_a','y_c','answers','challenges','q','g']) {
 const request=structuredClone(canonicalDeep);
 if(field==='answers'||field==='challenges') request[field].at(-1)[3]=Number(P); else request[field][3]=Number(P);
 assert.equal((await caller.call('deep',request)).status,1); invalidCalls++;
}
console.log(JSON.stringify({pass:true,domains:{g:Number(g),omega:Number(omega),shift:31},airCalls,deepCalls,invalidCalls,witnessResults,adversarialChecks:['unrelated quotient differs','false shifted source differs','degree correction matters','OOD-consistent forged answers produce high-degree DEEP table','nonboolean source produces high-degree composition','S9 evaluates and produces high-degree composition'],limitations:'Arithmetic and deterministic full-table interpolation evidence only. No commitments, transcript, succinct proof, witness hiding, or soundness probability.'},null,2));
