// Exact dyadic projection to the Q12 grid. Preserve every binary32 camera term.
// Normalize CSS coordinates against the actual square canvas, not the window.
function dyadic(x){
 if(!Number.isFinite(x))throw Error('Non-finite camera coordinate');
 const b=new ArrayBuffer(8),v=new DataView(b);v.setFloat64(0,x,false);
 const hi=v.getUint32(0),lo=v.getUint32(4),e=(hi>>>20)&2047;
 let n=(BigInt(hi&0xfffff)<<32n)|BigInt(lo);if(e)n|=1n<<52n;
 if(hi>>>31)n=-n;return {n,e:e?e-1023-52:-1074};
}
function add(a,b){const e=Math.min(a.e,b.e);return {n:(a.n<<BigInt(a.e-e))+(b.n<<BigInt(b.e-e)),e};}
function mul(a,b){return {n:a.n*b.n,e:a.e+b.e};}
function roundQ12(a){const e=a.e+12;if(e>=0)return Number(a.n<<BigInt(e));const den=1n<<BigInt(-e),negative=a.n<0n,n=negative?-a.n:a.n;const q=(n+den/2n)/den;return Number(negative?-q:q);}
export function snapPoint(terms,zoom,nx,ny){
 if(terms.length!==8||![zoom,nx,ny,...terms].every(Number.isFinite))throw Error('Invalid camera');
 const sum=xs=>xs.map(dyadic).reduce(add,{n:0n,e:0});
 return {re:roundQ12(add(sum(terms.slice(0,4)),mul(dyadic(zoom),dyadic(nx)))),im:roundQ12(add(sum(terms.slice(4,8)),mul(dyadic(zoom),dyadic(ny))))};
}
export function selectAt(uniforms,rect,x,y){
 if(!(rect.width>0&&rect.height>0))throw Error('Viewer is not ready');
 return snapPoint(uniforms.slice(0,8),uniforms[8],2*(x-rect.left)/rect.width-1,1-2*(y-rect.top)/rect.height);
}

function number(a){
 if(a.n===0n)return 0;const sign=a.n<0n?-1:1,n=a.n<0n?-a.n:a.n;
 const shift=Math.max(0,n.toString(2).length-53);return sign*Number(n>>BigInt(shift))*2**(a.e+shift);
}
export function projectPoint(point,terms,zoom){
 const sum=xs=>xs.map(dyadic).reduce(add,{n:0n,e:0});
 const difference=(q,xs)=>{const center=sum(xs);return number(add(dyadic(q/4096),{n:-center.n,e:center.e}))/zoom;};
 return {nx:difference(point.re,terms.slice(0,4)),ny:difference(point.im,terms.slice(4,8))};
}
