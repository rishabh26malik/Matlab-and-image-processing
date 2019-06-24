I=imread('cat.jpg');
I=I(1:2:end,1:2:end,:);
Ign=imnoise(I,'gaussian');
figure,imshow(Ign);
Inoise=double(Ign)-double(I);
% figure,imhist(uint8(Inoise+128));