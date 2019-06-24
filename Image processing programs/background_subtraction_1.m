function [] = background_subtraction(path)

mkdir(strcat(path,'/bs/'))
files=dir([path '*.jpg']);

bs=0;
for i=1:numel(files)
    bs=bs+double(imread(strcat(path,'/',files(i).name)));   
end

bs=bs/numel(files);
for i=1:numel(files)
    I=double(imread(strcat(path,'/',files(i).name)));
    fg=mean(abs(I-bs),3);
    
    fgm=fg>50;
    I1=I(:,:,1);
    I2=I(:,:,2);
    I3=I(:,:,3);
    I1(~fgm)=0;
    I2(~fgm)=0;
    I3(~fgm)=255;
    I=cat(3,I1,I2,I3);
    imwrite(uint8(I),strcat(path,'/bs/',files(i).name))
   
end

end

