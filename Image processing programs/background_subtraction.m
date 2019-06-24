function [] =background_subtraction(path)
mkdir(strcat(path,'/bs/'));
files=dir([path '*.jpg']);
bs=0;
for i=1:numel(files)
    bs=bs+double(imread(strcat(path,'/',files(i).name)));
    I=imread(strcat(path,files(i).name));
    %imshow(I);
end
bs=bs/(numel(files)*255);
imshow(bs);
for i=1:numel(files)
    I=double(imread(strcat(path,'/',files(i).name)));
    fg=mean(abs(I/255-bs),3);
    %imshow(fg);
    fgm=fg>graythresh(fg);
    %imshow(fgm);
    I1=I(:,:,1);
    I2=I(:,:,2);
    I3=I(:,:,3);
    I1(~fgm)=255;
    I2(~fgm)=255;
    I3(~fgm)=0;
    I=cat(3,I1,I2,I3);
    imshow(I/255);
    imwrite(uint8(I),strcat(path,'/bs/',files(i).name));
end