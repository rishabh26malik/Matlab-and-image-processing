I=imread('leaf.jpg');
% figure,imshow(I);
Ig=rgb2gray(I);
figure,imshow(Ig);
figure,imhist(Ig);