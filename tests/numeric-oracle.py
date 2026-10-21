from pathlib import Path
from decimal import Decimal, localcontext
import json,struct,sys,math
# Compare changed GPU samples with independent mathematical iteration, using
# the actual binary32 camera and sample offsets rather than decimal literals.
root=Path(sys.argv[1]).resolve()
receipt=json.loads((root/'production-receipt.json').read_text())
f32=lambda x:struct.unpack('<f',struct.pack('<f',x))[0]
floatword=lambda x:struct.unpack('<f',struct.pack('<I',x))[0]
results=[]
for case in ['default','captured-deep']:
 meta=receipt['variants'][1]['captures'][case]['metadata']['current']
 camera=list(map(floatword,meta['camera']));limit=meta['budget'];side=int(camera[9])
 a=(root/f'baseline-{case}-snapshot_oracle.bin').read_bytes();b=(root/f'compact-{case}-snapshot_oracle.bin').read_bytes()
 points=[]
 for i in range(0,len(a),12):
  old=struct.unpack_from('<III',a,i);new=struct.unpack_from('<III',b,i)
  if old!=new:points.append((i//12%side,i//12//side,old,new))
 def calculate(precision):
  with localcontext() as ctx:
   ctx.prec=precision
   re=sum(map(Decimal.from_float,camera[:4]));im=sum(map(Decimal.from_float,camera[4:8]));out=[]
   for x,y,old,new in points:
    px=f32(x+.375+.25*(x&1));py=f32(y+.375+.25*(y&1))
    u=f32(f32(f32(px/camera[9])*2)-1);v=f32(1-f32(f32(py/camera[9])*2))
    cr=re+Decimal.from_float(f32(u*camera[8]));ci=im+Decimal.from_float(f32(v*camera[8]));zr=Decimal(0);zi=Decimal(0);escaped=False
    for iteration in range(1,limit+1):
     zr,zi=zr*zr-zi*zi+cr,2*zr*zi+ci
     if zr*zr+zi*zi>4:escaped=True;break
    out.append((iteration,escaped))
   return out
 low=calculate(80);high=calculate(120);assert low==high
 records=[]
 for (x,y,old,new),oracle in zip(points,high):
  matches=lambda v: (v[0],bool(v[2]&(1<<31)))==oracle
  old_error=abs(old[0]-oracle[0]);new_error=abs(new[0]-oracle[0])
  assert not new[2] & (1<<30), ('New glitch',case,x,y)
  assert math.isfinite(floatword(new[1])), ('Nonfinite magnitude',case,x,y)
  assert not (matches(old) and not matches(new)), ('New disagreement',case,x,y)
  assert new_error <= old_error, ('Iteration error increased',case,x,y,old,new,oracle)
  assert bool(new[2] & (1<<31)) == oracle[1] or bool(old[2] & (1<<31)) != oracle[1], ('New escape disagreement',case,x,y)
  records.append({'x':x,'y':y,'old':old,'new':new,'oracle':oracle,'oldMatches':matches(old),'newMatches':matches(new)})
 results.append({'case':case,'changed':len(points),'records':records,'oldMismatches':sum(not r['oldMatches'] for r in records),'newMismatches':sum(not r['newMatches'] for r in records)})
print(json.dumps([{'case':c['case'],'changed':c['changed'],'oldMismatches':c['oldMismatches'],'newMismatches':c['newMismatches']} for c in results]))
Path(sys.argv[2]).write_text(json.dumps({'precisions':[80,120],'agree':True,'scope':'All changed default/deep snapshot tuples; authored center plus actual f32 pixel offset; no newly introduced escape/iteration disagreement or increased iteration error; not every pixel','cases':results},indent=2))
