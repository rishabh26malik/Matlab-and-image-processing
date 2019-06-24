I=imread('lemon.jpg');
figure,imshow(I);
Ih=rgb2hsv(I);
hue=Ih(:,:,1);
m1=hue>(30/360) & hue<(90/360);
hue(m1)=hue(m1)+.1667;
Ih(:,:,1)=hue;
I=hsv2rgb(Ih);
figure,imshow(I);