img=zeros(300,400,3);

k=0;
x=200;
for i=50:250
      img(i,x-k:x+k,:)=255;
      c=c+1;
      m=mod(c,2);
      if(m==0)
      k=k+1;
      endif
endfor

k=0;
x=200;
for i=54:254
      img(i,x-k:x+k,:)=0;
      c=c+1;
      m=mod(c,2);
      if(m==0)
      k=k+1;
      endif
endfor


k=0;
for r=125:250
    img(r,80+k:320-k,1:2)=255;
    img(r,80+k:320-k,3)=0;
    k=k+1;
endfor

k=0;
for r=125+4:250-4
    img(r,80+k+10:320-k-10,1:2)=0;
    img(r,80+k+4:320-k-4,3)=0;
    k=k+1;
endfor

k=0;
x=200;
for i=54:254
      img(i,x-k:x+k,:)=0;
      c=c+1;
      m=mod(c,2);
      if(m==0)
      k=k+1;
      endif
endfor

k=0;
for r=250:-1:200
    img(r,100+k:300-k,:)=255;
    k=k+2;
endfor

k=0;
for r=250:-1:200
    img(r,104+k:296-k,:)=0;
    k=k+2;
endfor


imshow(img);