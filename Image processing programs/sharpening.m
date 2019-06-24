I=imread('leaf.jpg');
I=double(I);
I2=I;
for i=6:size(I,1)-5
    for j=6:size(I,2)-5
        neighbour=I2(i-5:i+5,j-5:j+5);
        I2(i,j)=mean(neighbour(:));
    end
end
figure,imshow(uint8(I2));
Idiff=abs(I-I2);
figure,imshow(uint8(Idiff));
Isharp=I+Idiff;
figure,imshow(uint8(Isharp));