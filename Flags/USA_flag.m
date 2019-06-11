img=zeros(5400,7000,3);
img(:,:,3)=255;
img(:,:,1:2)=0;
r=0;
for j=1:6
  x=200;
  y=80;
  z=320;
  for c=1:6
    k=0;
    c=0;
    for i=r+50:r+250
      img(i,x-k:x+k,:)=255;
      c=c+1;
      m=mod(c,2);
      if(m==0)
        k=k+1;
      endif
    endfor
    k=0;
    for i=r+125:r+225
      img(i,y+k:z-k,:)=255;
      k=k+1;  
    endfor
    k=0;
    c=0;
    for i=r+250:-1:r+200
      img(i,x-100+k:x+100-k,3)=255;
      img(i,x-100+k:x+100-k,1:2)=0;
      %%img(i,x-100+k:x+100-k,3)=0;
      k=k+2;
    endfor

    
    x=x+500;
    y=x-120;
    z=x+120;
  endfor
  r=r+500;
endfor

%%%%%%%%%%%
%%%%%%%%%%%%
%%%%%%%%%%%%%

r=0;
for j=1:5
  x=450;
  y=330;
  z=570;
  for c=1:5
    k=0;
    c=0;
    for i=r+325:r+525
      img(i,x-k:x+k,:)=255;
      c=c+1;
      m=mod(c,2);
      if(m==0)
        k=k+1;
      endif
    endfor
    k=0;
    for i=r+400:r+500
      img(i,y+k:z-k,:)=255;
      k=k+1;  
    endfor
    k=0;
    c=0;
    
    
    
    
    for i=r+525:-1:r+475
      %%img(i,x-100+k:x+100-k,1)=255;
      img(i,x-100+k:x+100-k,1:2)=0;
      img(i,x-100+k:x+100-k,3)=255;
      k=k+2;
    endfor
    
    x=x+500;
    y=x-120;
    z=x+120;
    
  endfor
  r=r+500;
endfor
k=3000;
c=0;
img(:,3000:7000,:)=255;

img(1:500,3000:7000,1)=255;
img(1:500,3000:7000,2:3)=0;

img(2500:3000,3000:7000,1)=255;
img(2500:3000,3000:7000,2:3)=0;

img(900:1300,3000:7000,1)=255;
img(900:1300,3000:7000,2:3)=0;

img(1700:2100,3000:7000,1)=255;
img(1700:2100,3000:7000,2:3)=0;


for i =1:6
  if(c==0)
    img(k:k+400,:,:)=255;
    c=1;
  else
    c=0;
    img(k:k+400,:,1)=255;
    img(k:k+400,:,2:3)=0;
  endif
  k=k+400
endfor
imshow(img);
