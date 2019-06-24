I=zeros(300,600,3);
I(1:100,:,1)=255;
I(101:200,:,:)=255;
c1=1/sqrt(3)-1;
c2=-300-1/sqrt(3);
for i=1:size(I,1)
    for j=1:size(I,2)
        y=-i;
        x=j;
        if((y+x/sqrt(3))<=c1 && (y-x/sqrt(3))>=c2)
            I(i,j,:)=0;
            I(i,j,2)=1;
        end
    end
end
figure,imshow(I);