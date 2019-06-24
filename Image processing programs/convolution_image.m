function [I] = convolution_image(I,filter)
s=size(filter,1);
I=double(I);
Ic=I;
lt=floor(s/2);
%filter=[ones(s,lt),zeros(s,1),-ones(s,lt)];
filter=fliplr(filter);
filter=flipud(filter);
for i=(lt+1):(size(I,1)-lt)
    for j=(lt+1):(size(I,2)-lt)
        ep=Ic(i-lt:i+lt,j-lt:j+lt).*filter;
        I(i,j)=sum(ep(:));
    end
end 
I=I/max(I(:));
%figure,imshow(I);
end