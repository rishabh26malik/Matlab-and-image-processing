obj=VideoReader('walk.mp4');
vid=read(obj);
vid2=vid(:,:,:,end:-1:1);
obj2=VideoWriter('reverse_walk');
open(obj2);
writeVideo(obj2,vid2);
close(obj2);