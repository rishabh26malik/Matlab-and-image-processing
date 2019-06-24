function [] = motion_history_images(path)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
mkdir(strcat(path,'/mih/'))
files=dir([path '*.jpg']);
thres=50;
I=imread(strcat(path,'/',files(1).name));
mih=zeros(size(I,1),size(I,2));
tau=numel(files);
imwrite(mih,strcat(path,'/mih/',files(1).name));
for i=2:numel(files)
    bs=abs(double(rgb2gray(imread(strcat(path,'/',files(i).name))))-double(rgb2gray(imread(strcat(path,files(i-1).name)))));
    
    mih2=zeros(size(I,1),size(I,2));
    mih2(bs>=thres)=tau;
    mih2(bs<thres)=max(0,mih(bs<thres)-numel(files)/i);
    mih=mih2;
    imwrite(uint8(255*mih2/numel(files)),strcat(path,'/mih/',files(i).name));
    
end
end

