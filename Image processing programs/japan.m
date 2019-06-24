I=ones(300,600,3);
r=150;
c=300;
for i=1:size(I,1)
    for j=1:size(I,2)
        dist=sqrt((i-r)^2+(j-c)^2);
        dist=round(dist);
        if(dist<75)
            I(i,j,2:3)=0;
        end
    end
end
figure,imshow(I);