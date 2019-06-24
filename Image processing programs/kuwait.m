I=zeros(300,600,3);
I(1:100,:,2)=255;
I(100:200,:,:)=255;
I(200:300,:,1)=255;
for i=1:100
    for j=1:150
        if (i>j && i<=100)
            I(i,j,:)=0;
        end
    end
end
for i=100:200
    for j=1:100
            I(i,j,:)=0;
    end
end
c=0;
for i=200:300
    for j=(100-c):-1:1
            I(i,j,:)=0;
    end
    c=c+1;
end
figure,imshow(I);