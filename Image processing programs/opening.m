% I=zeros(100,100);
% I(25:75,25:75)=1;
% I2=I;
I=imread('j.png');
I=rgb2gray(I);
I=imnoise(I,'salt & pepper');
sm=ones(3,3);
for i=2:size(I,1)-1
    for j=2:size(I,2)-1
        nh=I2(i-1:i+1,j-1:j+1);
        I(i,j)=min(nh(logical(sm)));
    end
end
figure,imshow(I2);
figure,imshow(I);
figure,imshow(I2-I);
I2=I;
for i=2:size(I,1)-1
    for j=2:size(I,2)-1
        nh=I2(i-1:i+1,j-1:j+1);
        I(i,j)=max(nh(logical(sm)));
    end
end
figure,imshow(I2);
figure,imshow(I);
figure,imshow(I-I2);