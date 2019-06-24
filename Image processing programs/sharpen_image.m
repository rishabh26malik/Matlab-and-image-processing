function [I] = sharpen_image(I)
%I=double(I);
I=uint8(double(I)+abs(double(I)-double(smoothen_image(I))));
figure,imshow(I);
end