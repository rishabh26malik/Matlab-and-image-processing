% No boundary Pixels Taken into consideration
I=imread('leaf.jpg');
I=double(I);
Ic=I;
for i=8:size(I,1)-7
    for j=8:size(I,2)-7
        neighbour=Ic(i-7:i+7,j-7:j+7);
        I(i,j)=mean(neighbour(:));
    end
end
figure,imshow(uint8(Ic));
figure,imshow(uint8(I));