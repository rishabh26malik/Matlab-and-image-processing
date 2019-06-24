I=zeros(300,600,3);
I(1:100,:,1)=255;
I(101:200,:,:)=255;
I(201:300,:,2)=255;
r=150;
c=300;
for i=1:size(I,1)
    for j=1:size(I,2)
        p=(r-i);
        b=(j-c);
        x=p/b;
        x=round(atand(x));
        dist=sqrt((r-i)^2+(c-j)^2);
        dist=round(dist);
        if(dist==45)
            I(i,j,1:2)=0;
        end
        if(mod(x,15)==0 && dist<=45)
            I(i,j,1:2)=0;
        end
    end
end
figure,imshow(I);