I=imread('rose.jpg');
figure,imshow(I);
Ih=rgb2hsv(I);
hue=Ih(:,:,1);
sat=Ih(:,:,2);
m1=hue>330/360;
m2=hue<30/360;
sat(m1)=0;
sat(m2)=0;
Ih(:,:,1)=hue;
Ih(:,:,2)=sat;
I=hsv2rgb(Ih);
figure,imshow(I);