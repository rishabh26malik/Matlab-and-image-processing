I=zeros(300,600,3);
% y=-300;
% x=1;
% m=tand(0:18:89);
% c=y-m*x;
for i=1:size(I,1)
    for j=1:size(I,2)
        yp=-i;
        xp=j;
        
        ngl=atand((yp+300)/(xp-1));
        if ngl<18
            I(i,j,2)=255;
        elseif ngl<36
            I(i,j,:)=255;
          elseif ngl<54
              I(i,j,1)=255;
               elseif ngl<72
                   I(i,j,1:2)=255;
                    elseif ngl<90
                     I(i,j,3)=255;   
        end
        
            
    end
end
figure,imshow(I);