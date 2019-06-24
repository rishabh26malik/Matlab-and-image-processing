I=imread('resize.jpg');
I=rgb2gray(I);
I1=zeros(size(I,1)/2,size(I,2)/2);
r=1;
c=1;
for i=1:2:size(I,1)
    for j=1:2:size(I,2)
        I1(r,c)=I(i,j);
        c=c+1;
    end
    r=r+1;
    c=1;
end
figure,imshow(I);
figure,imshow(uint8(I1));