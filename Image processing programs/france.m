I=zeros(300,600,3);
I(:,1:200,3)=255;
I(:,201:400,:)=255;
I(:,401:600,1)=255;
figure,imshow(I);