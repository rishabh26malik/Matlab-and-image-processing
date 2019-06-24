I=ones(200,200);
% for "A"
% j=20;
% k=20;
% for i=10:41
%     j=j-1;
%     k=k+1;
%     I(i,20+j)=0;
%     I(i,20+k)=0;
% end
% for i=23:55
%     I(25,i)=0;
% end
% figure,imshow(I);
% for "B"
% for i=10:50
%     I(i,20)=0;
% end
% r=20;
% c=20;
% for i=1:200
%     for j=1:200
%         dist=round(sqrt((i-r)^2+(j-c)^2));
%         if(dist==10)
%             if(j<20)
%                 continue;
%             end
%             I(i,j)=0;
%         end
%     end
% end
% r=40;
% c=20;
% for i=1:200
%     for j=1:200
%         dist=round(sqrt((i-r)^2+(j-c)^2));
%         if(dist==10)
%             if(j<20)
%                 continue;
%             end
%             I(i,j)=0;
%         end
%     end
% end
% figure,imshow(I);
% for "C"
% r=20;
% c=20;
% for i=1:200
%     for j=1:200
%         dist=round(sqrt((i-r)^2+(j-c)^2));
%         if(dist==10)
%             if(j>20)
%                 continue;
%             end
%             I(i,j)=0;
%         end
%     end
% end
% figure,imshow(I);
% for "G"
% r=20;
% c=20;
% for i=1:200
%     for j=1:200
%         dist=round(sqrt((i-r)^2+(j-c)^2));
%         if(dist==10)
%             if(j>20)
%                 continue;
%             end
%             I(i,j)=0;
%             k=i;
%             h=j;
%         end
%     end
% end
% for k=k:-1:k-10
%     I(k,h)=0;
% end
% figure,imshow(I);
% for "J"
% for i=10:40
%     I(i,40)=0;
% end
% j=0;
% for i=40:-1:25
%     I(i,40+j)=0;
%     j=j-1;
% end
% figure,imshow(I);
% for "K"
% j=20;
% k=20;
% for i=10:41
%     j=j-1;
%     k=k+1;
%     I(20+j,i)=0;
%     I(20+k,i)=0;
% end
% for i=10:80
%     I(i,10)=0;
% end
% figure,imshow(I);
% for "M"
% j=20;
% k=20;
% for i=41:-1:10
%     j=j-1;
%     k=k+1;
%     I(i,20+j)=0;
%     I(i,20+k)=0;
% end
% for i=10:81
%     I(i,8)=0;
%     I(i,73)=0;
% end
% figure,imshow(I);
% for "R"
% for i=10:50
%     I(i,20)=0;
% end
% r=20;
% c=20;
% for i=1:200
%     for j=1:200
%         dist=round(sqrt((i-r)^2+(j-c)^2));
%         if(dist==10)
%             if(j<20)
%                 continue;
%             end
%             I(i,j)=0;
%         end
%     end
% end
% j=20;
% for i=30:50
%     I(i,j)=0;
%     j=j+1;
% end
% figure,imshow(I);
% for "2"
% r=20;
% c=20;
% for i=1:200
%     for j=1:200
%         dist=round(sqrt((i-r)^2+(j-c)^2));
%         if(dist==10)
%             if(j<20)
%                 continue;
%             end
%             I(i,j)=0;
%         end
%     end
% end
% for i=25:40
%    I(30,i)=0;
% end
% figure,imshow(I);