#!/usr/bin/env python3
"""Builder aid (S39): colour histogram of a PNG box and the bounding box of one colour, stdlib only.

usage: png_colours.py <png> x0 y0 x1 y1 [#rrggbb]   (prints size, top colours in the box, bbox of #rrggbb)
Used once to measure the pink header of editor.png (#ffafaf). Not a worker or evaluator tool.
"""
import zlib,struct,sys,collections
def read(p):
    d=open(p,'rb').read(); assert d[:8]==b'\x89PNG\r\n\x1a\n'; i=8; idat=b''
    while i<len(d):
        l,=struct.unpack('>I',d[i:i+4]); t=d[i+4:i+8]; c=d[i+8:i+8+l]; i+=12+l
        if t==b'IHDR': w,h,bd,ct=struct.unpack('>IIBB',c[:10])
        elif t==b'IDAT': idat+=c
    raw=zlib.decompress(idat); bpp={2:3,6:4}[ct]; s=w*bpp; rows=[]; prev=bytearray(s); o=0
    for y in range(h):
        f=raw[o]; o+=1; r=bytearray(raw[o:o+s]); o+=s
        for x in range(s):
            a=r[x-bpp] if x>=bpp else 0; b=prev[x]; cc=prev[x-bpp] if x>=bpp else 0
            if f==1: r[x]=(r[x]+a)&255
            elif f==2: r[x]=(r[x]+b)&255
            elif f==3: r[x]=(r[x]+(a+b)//2)&255
            elif f==4:
                pp=a+b-cc; pa,pb,pc=abs(pp-a),abs(pp-b),abs(pp-cc)
                r[x]=(r[x]+(a if pa<=pb and pa<=pc else b if pb<=pc else cc))&255
        rows.append(bytes(r)); prev=r
    return w,h,bpp,rows
w,h,bpp,rows=read(sys.argv[1]); x0,y0,x1,y1=map(int,sys.argv[2:6])
c=collections.Counter()
for y in range(y0,min(y1,h)):
    for x in range(x0,min(x1,w)): c['#%02x%02x%02x'%tuple(rows[y][x*bpp:x*bpp+3])]+=1
print(w,h,c.most_common(5))
if len(sys.argv)>6:
    tgt=sys.argv[6]; xs=[];ys=[]
    for y in range(h):
        for x in range(w):
            if '#%02x%02x%02x'%tuple(rows[y][x*bpp:x*bpp+3])==tgt: xs.append(x); ys.append(y)
    print('bbox',min(xs),min(ys),max(xs),max(ys)) if xs else print('none')
