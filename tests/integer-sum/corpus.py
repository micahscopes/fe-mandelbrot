"""Independent rational oracle and runtime corpus; no tested TwoSum import."""
from fractions import Fraction
from pathlib import Path
import random,json,hashlib,sys
OUT=Path(sys.argv[1])
assert OUT.is_absolute(), 'Provide an absolute scratch output directory'
OUT.mkdir(parents=True, exist_ok=True)
SIGN=0x80000000;NAN=0x7fc00000;INF=0x7f800000

def finite_value(bits):
 exponent=(bits>>23)&255
 assert exponent!=255
 significand=bits&0x7fffff
 if exponent:significand+=1<<23
 scale=max(exponent,1)-150
 return (-1 if bits&SIGN else 1)*Fraction(significand)*Fraction(2)**scale

def nearest_bits(exact):
 if exact==0:return 0
 sign=SIGN if exact<0 else 0;magnitude=abs(exact)
 exponent=magnitude.numerator.bit_length()-magnitude.denominator.bit_length()
 if magnitude<Fraction(2)**exponent:exponent-=1
 quantum=Fraction(2)**max(exponent-23,-149)
 integer,remainder=divmod(magnitude,quantum)
 integer=int(integer)
 if remainder*2>quantum or remainder*2==quantum and integer%2:integer+=1
 if integer==0:return sign
 if integer==1<<24:integer>>=1;exponent+=1
 if exponent>127:return sign|INF
 if exponent<-126:return sign|integer
 return sign|((exponent+127)<<23)|(integer&0x7fffff)

def split_expected(bits):
 if (bits&INF)==INF:return None
 a=finite_value(bits);t=nearest_bits(a*4097)
 if (t&~SIGN)==INF:return None
 high=nearest_bits(finite_value(t)-finite_value(nearest_bits(finite_value(t)-a)))
 low=nearest_bits(a-finite_value(high))
 return [high,low]

def oracle(a,b):
 if (a&INF)==INF or (b&INF)==INF:
  return dict(expected=[NAN,NAN],domain='nonfinite-input',exactSum=None,exactResidual=None)
 exact=finite_value(a)+finite_value(b)
 head=nearest_bits(exact)
 if (a&~SIGN)==0 and (b&~SIGN)==0:head=(a&b)&SIGN
 if (head&~SIGN)==INF:
  return dict(expected=[head,NAN],domain='finite-overflow',exactSum=str(exact),exactResidual=None)
 residual=exact-finite_value(head);tail=nearest_bits(residual)
 assert finite_value(head)+finite_value(tail)==exact
 return dict(expected=[head,tail],domain='finite-exact',exactSum=str(exact),exactResidual=str(residual))

rng=random.Random(0x20261021);cases=[];seen=set()
def add(a,b,kind):
 key=(a,b)
 if key in seen:return
 seen.add(key);cases.append(dict(index=len(cases),kind=kind,inputBits=[a,b],splitExpected=[split_expected(a),split_expected(b)],**oracle(a,b)))
# Deliberately include both operand orders; exact bit policy must not depend
# on the source order of equal-magnitude operands.
edge=[0,SIGN,1,SIGN|1,0x007fffff,0x807fffff,0x00800000,0x80800000,
      0x3f800000,0xbf800000,0x3f800001,0x3f7fffff,0x7f7fffff,0xff7fffff,
      INF,SIGN|INF,NAN,SIGN|NAN,0x7f800001,0xff923456]
for a in edge:
 for b in edge:add(a,b,'edge-cross-product')
for exponent in [26,27,50,100,127,200,253,254]:
 for gap in [24,25,26]:
  for small in [0,1,0x3fffff,0x400000,0x7ffffe,0x7fffff]:
   for sign in [0,SIGN]:
    a=sign|(exponent<<23);b=(sign^SIGN)|((exponent-gap)<<23)|small
    add(a,b,'gap-boundary');add(b,a,'gap-boundary-reversed')
for exponent in [32,64,126,127,200,253]:
 for mant in [0,1,2,0x7ffffe,0x7fffff]:
  for sign in [0,SIGN]:
   for other_sign in [0,SIGN]:
    add(sign|(exponent<<23)|mant,other_sign|((exponent-24)<<23),'halfway-tie-carry')
for _ in range(512):
 a=rng.randrange(1<<23)|(rng.randrange(2)<<31)
 b=(rng.choice([0,1,2])<<23)|rng.randrange(1<<23)|(rng.randrange(2)<<31)
 add(a,b,'subnormal-neighbor')
while len(cases)<4096:
 if len(cases)%2:
  exponent=rng.randrange(1,255);gap=rng.randrange(min(exponent,28));other=exponent-gap
  a=(exponent<<23)|rng.randrange(1<<23)|(rng.randrange(2)<<31)
  b=(other<<23)|rng.randrange(1<<23)|(rng.randrange(2)<<31)
  kind='random-near-exponents'
 else:
  a=rng.randrange(INF)|(rng.randrange(2)<<31);b=rng.randrange(INF)|(rng.randrange(2)<<31);kind='random-finite'
 add(a,b,kind)
assert len(cases)==4096
raw=bytearray()
for c in cases:
 for word in c['inputBits']:raw+=word.to_bytes(4,'little')
(OUT/'INTEGER-SUM-CORPUS-inputs.bin').write_bytes(raw)
counts={}
for c in cases:counts[c['kind']]=counts.get(c['kind'],0)+1
receipt={'oracle':'Independent Fraction sum and residual; exact integer nearest-even quantization, no tested implementation imported.',
 'seed':0x20261021,'count':len(cases),'batchSize':16,'categories':counts,
 'zeroPolicy':'Head -0 only for both -0 inputs; exact cancellation +0; every exactly-zero residual canonically +0. This last clause intentionally tests a stricter coherent contract than a fast path that copies a smaller -0 verbatim.',
 'nonfinitePolicy':'Any nonfinite input -> canonical quiet NaN pair; finite overflow -> signedInf head and canonical quiet NaN tail.',
 'inputsSha256':hashlib.sha256(raw).hexdigest(),'cases':cases}
data=(json.dumps(receipt,indent=2)+'\n').encode();(OUT/'INTEGER-SUM-CORPUS.json').write_bytes(data)
print(json.dumps(dict(count=len(cases),categories=counts,inputsSha256=receipt['inputsSha256'],corpusSha256=hashlib.sha256(data).hexdigest()),indent=2))
