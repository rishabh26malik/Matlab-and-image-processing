%I=imread('images.jpg');
I=ones(500,500,3);
I=imresize(I,[350 350]);
% figure,imshow(I);
I=rgb2gray(I);
figure,imshow(I);
figure,imhist(I);
xmin=min(I(:));
xmax=max(I(:));
Ic=255*(double(I)-double(xmin))/(double(xmax)-double(xmin));
figure,imshow(double(Ic));
figure,imhist(double(Ic));