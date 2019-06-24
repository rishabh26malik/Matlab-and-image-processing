obj=VideoReader('walk.mp4');
vid=read(obj);
vid2=[];
for k=1:size(vid,4);
    frame=vid(:,:,:,k);
    fr=frame(:,:,1);
    fg=frame(:,:,2);
    fb=frame(:,:,3);
    frame2=cat(3,fr,fg,fb);
    vid2=cat(4,vid2,frame2);
end
obj2=VideoWriter('qwerty');
open(obj2);
writeVideo(obj2,vid2);
close(obj2);