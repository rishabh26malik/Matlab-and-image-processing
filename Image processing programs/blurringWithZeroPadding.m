I=imread('leaf.jpg');
I=double(I);
I2=zeros(size(I,1)+1,size(I,2)+1,3);
for i=1:size(I,1)
    for j=1:size(I,2)
        I2(i+1,j+1,:)=I(i,j,:);
    end
end
% I2(2:end-1,2:end-1,:)=I;
for i=2:size(I2,1)-1
    for j=2:size(I2,2)-1
        neighbour=I2(i-1:i+1,j-1:j+1);
        I2(i,j)=mean(neighbour(:));
    end
end
figure,imshow(uint8(I2));
I=I2(2:end-1,2:end-1,:);
figure,imshow(uint8(I));