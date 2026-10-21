import assert from 'node:assert/strict';import{snapPoint,selectAt,projectPoint}from'../web/proof/selection.mjs';
const zero=[0,0,0,0,0,0,0,0];
assert.deepEqual(snapPoint(zero,1,1/8192,-1/8192),{re:1,im:-1});
assert.deepEqual(snapPoint([1/8192,-(2**-40),0,0,-1/8192,2**-40,0,0],0,0,0),{re:0,im:0});
assert.deepEqual(snapPoint([1/8192,2**-40,0,0,-1/8192,-(2**-40),0,0],0,0,0),{re:1,im:-1});
assert.deepEqual(selectAt([...zero,2],{left:100,top:200,width:400,height:400},300,400),{re:0,im:0});
assert.deepEqual(selectAt([...zero,2],{left:100,top:200,width:400,height:400},200,300),{re:-4096,im:4096});
assert.throws(()=>snapPoint(zero,NaN,0,0));console.log('PASS: ties, signed tails, CSS origin/scale, invalid camera');
assert.deepEqual(projectPoint({re:1,im:0},[1/4096,2**-100,0,0,0,0,0,0],2**-110),{nx:-1024,ny:0});
