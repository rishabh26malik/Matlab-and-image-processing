% In grayScale
obj=VideoReader('walk.mp4');
vid=read(obj);
vid2=[];
for k=1:size(vid,4)
    frame=vid(:,:,:,k);
    frame1=rgb2gray(frame);
    frame1=frame1(end:-1:1,:);
    vid2=cat(4,vid2,frame1);
end
obj2=VideoWriter('ManOnTop');
open(obj2);
writeVideo(obj2,vid2);
close(obj2);