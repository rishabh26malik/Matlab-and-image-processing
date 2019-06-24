I=imread('rose.jpg');
figure,imshow(I);
Ih=rgb2hsv(I);
hue=Ih(:,:,1);
m1=hue>330/360;
m2=hue<30/360;
hue(m1)=hue(m1)-.67+.1667+.1667;
hue(m2)=hue(m2)+.33+.33;
Ih(:,:,1)=hue;
I=hsv2rgb(Ih);
figure,imshow(I);