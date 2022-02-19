-- Metaballs, TIC-80 intro
-- F#READY 2022-01-22
-- Compressed tic, 250 bytes 

m=math

r={20,100,135,20}
s={40,90,4,54}
t={2,-1,2,-2}
u={2,-2,1,-2}
w={80,135,160,200}

function TIC()

for x=0,239 do
  for y=0,135 do
    z=0
    for i=1,4 do
      a=m.abs(x-r[i])
      b=m.abs(y-s[i])
      z=z+w[i]/m.sqrt(a*a+b*b)
    end
    pix(x,y,m.min(z*2,31))
    pix(x,y,m.min(24+z+(y+x+x)%.8,47))
  end
end

for i=1,4 do
  r[i]=r[i]+t[i]
  if r[i]>239 or r[i]<0 then
    t[i]=t[i]*-1
  end

  s[i]=s[i]+u[i]
  if s[i]>135 or s[i]<0 then
    u[i]=u[i]*-1
  end
end
end