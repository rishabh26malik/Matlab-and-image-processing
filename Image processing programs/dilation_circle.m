% I=zeros(100,100);
% I(25:75,25:75)=1;
I=imread('j.png');
I=rgb2gray(I);
% figure,imshow(I);
% I=imresize(I,2);
% figure,imshow(I);
I2=I;
sm=zeros(30,30);
r=15;
c=15;
for i=1:30
    for j=1:30
        dist=round(sqrt((i-r)^2+(j-c)^2));
        if(dist<=15)
            sm(i,j)=1;
        end
    end
end
figure,imshow(sm);
for i=15:size(I,1)-15
    for j=15:size(I,2)-15
        nh=I2(i-14:i+15,j-14:j+15);
        I(i,j)=max(nh(logical(sm)));
    end
end
figure,imshow(I2);
figure,imshow(I);
figure,imshow(I-I2);