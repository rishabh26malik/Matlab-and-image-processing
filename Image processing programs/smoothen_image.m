function [I] = smoothen_image(I)
s=7;
Ic=double(I);
filter=zeros(s,s)+1/(s*s);
lt=floor(s/2);
for i=(lt+1):(size(I,1)-lt)
    for j=(lt+1):(size(I,2)-lt)
        ep=Ic(i-lt:i+lt,j-lt:j+lt).*filter;
        I(i,j)=sum(ep(:));
    end
end 
I=uint8(I);
figure,imshow(I);
end