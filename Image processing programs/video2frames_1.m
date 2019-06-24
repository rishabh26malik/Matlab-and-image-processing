function [] = video2frames(path)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
obj = VideoReader(path);
[p1,fl,~]=fileparts(path);
vid = read(obj);
frames = obj.NumberOfFrames; 
ST='.jpg';

zp='';
for i=1:numel(num2str(frames))
    zp=strcat(zp,'0');
end
mkdir(strcat(p1,'/',fl,'_frames/'));
 for x = 1:size(vid,4)
      
      Sx=strcat(zp(1:end-numel(num2str(x))),num2str(x));

          
      Strc=strcat(p1,'/',fl,'_frames/',Sx,ST);
      Vid=vid(:,:,:,x);
      imwrite(Vid,Strc);
 end

end

