img=zeros(300,400,3);
img(:,:,1)=255;

for i=100:200
  for j=150:250
    if(sqrt((i-150)^2+(j-200)^2)<=50)
      img(i,j,1)=0;
      img(i,j,2)=255;
      img(i,j,3)=0;
    endif
  endfor
endfor

for i=100:200
  for j=225:325
    if(sqrt((i-150)^2+(j-275)^2)<=50)
      img(i,j,1)=0;
      img(i,j,2)=255;
      img(i,j,3)=0;
    endif
  endfor
endfor

k=0;
for i=180:280
  img(i,160+k:315-k,1)=0;
  img(i,160+k:315-k,2)=255;
  img(i,160+k:315-k,3)=0;
  k=k+1;  
endfor

#img(1:300,1:4,:)=0;

imshow(img);
