img=zeros(500,500,3);
img(:,:,2)=255;
img(1:60,:,2)=100;
img(1:60,:,3)=100;

for i=20:100
  for j=160:240
    if(sqrt((i-60)^2+(j-195)^2)<=40)
      img(i,j,1:2)=255;
      img(i,j,3)=0;
    endif
  endfor
endfor


k=0;
for r=60:-1:10
    img(r,k+1:100-k,:)=255;
    k=k+1;
endfor

k=0;
for r=60:-1:10
    img(r,k+101:200-k,:)=25;
    #img(r,k+101:200-k,2)=60;
    #img(r,k+101:200-k,3)=155;
    k=k+1;
endfor

k=0;
for r=60:-1:10
    img(r,k+201:300-k,:)=255;
    k=k+1;
endfor

k=0;
for r=60:-1:10
    img(r,k+301:400-k,:)=255;
    k=k+1;
endfor


k=0;
for r=60:-1:10
    img(r,k+401:500-k,:)=255;
    k=k+1;
endfor

####  river

k1=0
k=0;
for r=500:-1:60
    img(r,k1+51:150+k1,:)=0;
    img(r,k1+51:150+k1,3)=255;
    k=k+1;
    m=mod(k,5);
    if(m==0)
      k1=k1+1;
    endif
endfor

### river end

## hut


img(250:300,300:360,1:2)=255;
img(250:300,300:360,3)=0;


k=0;
for r=300:-1:250
    img(r,k+280:410-k,:)=0;
    img(r,k+280:410-k,1:2)=255;
    k=k+1;
endfor

img(300:350,270:330,:)=255;

img(335:350,290:320,2)=0;


k=0;
for r=300:-1:250
    img(r,k+250:350-k,1)=0;
    img(r,k+250:350-k,2:3)=255;
    k=k+1;
endfor

#####3 small ttriangle

k=0;
for r=290:-1:260
    img(r,k+280:320-k,1)=255;
    k=k+1;
endfor



#######################



img(300:350,330:390,1)=255;
img(300:350,330:390,2:3)=0;

img(320:335,350:370,2)=255;

### boat
img(300:330,110:160,:)=0;
k=0;
x=0
for r=300:330
    img(r,85+k:110,1)=0;
    img(r,85+k:110,2:3)=0;
    k=k+1;
    #if(mod(k,2)==0)
endfor

k=0;
for r=300:330
    img(r,160:190-k,1)=0;
    img(r,160:190-k,2:3)=0;
    k=k+1;
    #if(mod(k,2)==0)
endfor

k=30;
for r=270:300
    img(r,120:150-k,1)=0;
    img(r,120:150-k,2:3)=0;
    k=k-1;
    #if(mod(k,2)==0)
endfor






### boat end

imshow(img);
