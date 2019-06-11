a=zeros(300,400,3);

a(:,:,1)=255;
a(:,:,2)=255;
a(:,:,3)=255;

for i=100:200
  for j=150:250
    if (round(sqrt((i-150)^2+(j-200)^2)) <= 50)
      a(i,j,1)=255;
      a(i,j,2)=0;
      a(i,j,3)=0;
    end
  end
end

imshow(a);