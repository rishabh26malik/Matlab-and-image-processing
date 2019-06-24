I=ones(300,600,3);
% figure,imshow(I);
r=150;
c=300;
for i=1:300
    for j=1:600
        p=r-i;
        b=j-c;
        x=p/b;
        x=round(atand(x));
        dist=sqrt((c-j)^2+(i-r)^2);
        dist=round(dist);
        if(dist==75)
            I(i,j,1:2)=0;
        end
        if(mod(x,15)==0 && dist<=75)
            I(i,j,1:2)=0;
        end
    end
end
figure,imshow(I);