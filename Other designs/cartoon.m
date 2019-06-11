img1=zeros(600,600,3);
#imshow(img1);
#img1(100:200,:,:)=255;

c=0;
k=0;
for i=250:-1:50
  img1(i,155+k:250-k,1)=255;
  img1(i,155+k:250-k,2:3)=0;
  c=c+1;
  m=mod(c,3);
  if(m==0)
    k=k+1;
  endif
endfor

c=0;
k=0;
for i=250:-1:50
  img1(i,350+k:450-k,1)=255;
  img1(i,350+k:450-k,2:3)=0;
  c=c+1;
  m=mod(c,3);
  if(m==0)
    k=k+1;
  endif
endfor

#####face
for i=100:500
  for j=100:500
    if(sqrt((i-300)^2+(j-300)^2)<=150)
      img1(i,j,:)=255;
    endif
  endfor
endfor
##left eye brow

for i=200:300
  for j=200:300
    if(sqrt((i-250)^2+(j-250)^2)<=40)
      img1(i,j,1)=255;
      img1(i,j,2)=0;
    endif
  endfor
endfor

for i=200:300
  for j=200:300
    if(sqrt((i-254)^2+(j-250)^2)<=40)
      img1(i,j,1)=255;
      img1(i,j,2)=255;
    endif
  endfor
endfor

### lefteye
for i=200:300
  for j=200:300
    if(sqrt((i-250)^2+(j-250)^2)<=30)
      img1(i,j,:)=0;
    endif
  endfor
endfor

for i=200:300
  for j=200:300
    if(sqrt((i-250)^2+(j-250)^2)<=10)
      img1(i,j,:)=255;
    endif
  endfor
endfor

##right eye brow
for i=200:300
  for j=300:400
    if(sqrt((i-250)^2+(j-350)^2)<=40)
      img1(i,j,1)=255;
      img1(i,j,2)=0;
    endif
  endfor
endfor

for i=200:300
  for j=300:400
    if(sqrt((i-254)^2+(j-350)^2)<=40)
      img1(i,j,1)=255;
      img1(i,j,2)=255;
    endif
  endfor
endfor
###
### right eye
for i=200:300
  for j=300:400
    if(sqrt((i-250)^2+(j-350)^2)<=30)
      img1(i,j,:)=0;
    endif
  endfor
endfor

for i=200:300
  for j=300:400
    if(sqrt((i-250)^2+(j-350)^2)<=10)
      img1(i,j,:)=255;
    endif
  endfor
endfor
###   mouth
for i=270:430
  for j=230:360
    if(sqrt((i-355)^2+(j-300)^2)<=60)
      img1(i,j,:)=0;
    endif
  endfor
endfor

for i=270:430
  for j=230:360
    if(sqrt((i-345)^2+(j-300)^2)<=60)
      img1(i,j,:)=255;
    endif
  endfor
endfor
####
####nose
c=0
k=0;
for i=350:-1:270
  img1(i,260+k:340-k,2:3)=255;
  img1(i,260+k:340-k,1)=0;
  c=c+1;
  m=mod(c,2);
  if(m==0)
    k=k+1;
  endif
endfor

c=0
k=0;
for i=340:-1:280
  img1(i,280+k:320-k,1)=155;
  img1(i,280+k:320-k,3)=0;
  img1(i,280+k:320-k,1)=10;
  c=c+1;
  m=mod(c,2);
  if(m==0)
    k=k+1;
  endif
endfor
imshow(img1);