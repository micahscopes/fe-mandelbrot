from pathlib import Path
from fractions import Fraction
import random,json
import sys
R=Path(sys.argv[1]) if len(sys.argv)>1 else Path(__file__).resolve().parent
B=8192;scale=B**7;mod=B**8;rng=random.Random(20261022)
def add(a,b):
 sa,x=a;sb,y=b
 if sa==sb:return sa,(x+y)%mod
 return (sb,y-x) if x<y else (sa,x-y)
def mul(a,b):return a[0]^b[0],((a[1]*b[1]+scale//2)//scale)%mod
def neg(a):return 1-a[0],a[1]
def words(a):return [a[0]]+[(a[1]//B**i)%B for i in range(8)]
def f32(r):
 if not r:return 0,Fraction(0)
 sign=int(r<0);x=abs(r);e=x.numerator.bit_length()-x.denominator.bit_length()
 if x<Fraction(2)**e:e-=1
 v=x/(Fraction(2)**(e-23));q,rem=divmod(v.numerator,v.denominator)
 if 2*rem>v.denominator or (2*rem==v.denominator and q&1):q+=1
 if q==1<<24:q>>=1;e+=1
 assert -126<=e<=127
 bits=(sign<<31)|((e+127)<<23)|(q&0x7fffff);return bits,(-1 if sign else 1)*q*Fraction(2)**(e-23)
def quad(a):
 r=(-1 if a[0] else 1)*Fraction(a[1],scale);out=[]
 for _ in range(4):bits,value=f32(r);out.append(bits);r-=value
 return out
cases=[]
for i in range(160):
 if i<16:
  values=[(j&1,([0,1,scale//2,2*scale][(i+j)//4%4])) for j in range(4)]
 elif i<96:values=[(rng.randrange(2),rng.randrange(3*scale)) for _ in range(4)]
 else:values=[(rng.randrange(2),rng.randrange(mod)) for _ in range(4)]
 x,y,cx,cy=values;xx=mul(x,x);yy=mul(y,y);escaped=add(xx,yy)[1]>4*scale
 if escaped:rx,ry=x,y
 else:
  xy=mul(x,y);rx=add(add(xx,neg(yy)),cx);ry=add(add(xy,xy),cy)
 cases.append({'input':sum([words(v) for v in values],[]),'expected':words(rx)+words(ry)+[int(escaped),0]+quad(rx)+quad(ry)})
(R/'corpus.json').write_text(json.dumps(cases))
