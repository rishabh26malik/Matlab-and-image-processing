I=imread('cat.jpg');
I=I(1:2:end,1:2:end,:);
Isp=imnoise(I,'salt & pepper');
figure,imshow(Isp);
% Isp_mean=imfilter(Isp,fspecial('average'));
% figure,imshow(Isp_mean);
Ispt=Isp;
for i=2:size(Isp,1)-1
    for j=2:size(Isp,2)-1
        neighbour=Ispt(i-1:i+1,j-1:j+1);
        Isp(i,j)=median(neighbour(:));
    end
end
figure,imshow(Isp);