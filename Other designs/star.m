img=zeros(300,400,3);
img(:,:,1)=255;
k=0;
c=0;
for i=50:250
  img(i,200-k:200+k,1)=255;
  img(i,200-k:200+k,2)=255;
  img(i,200-k:200+k,3)=0;
  c=c+1;
  m=mod(c,2);
  if(m==0)
    k=k+1;
  endif
endfor

k=0;
for i=125:225
  img(i,80+k:320-k,1)=255;
  img(i,80+k:320-k,2)=255;
  img(i,80+k:320-k,3)=0;
  k=k+1;  
endfor

k=0;
c=0;
for i=250:-1:200
  img(i,100+k:300-k,1)=255;
  img(i,100+k:300-k,2)=0;
  img(i,100+k:300-k,3)=0;
  k=k+2;
endfor



imshow(img);