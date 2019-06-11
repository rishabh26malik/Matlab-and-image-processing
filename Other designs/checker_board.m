chess=zeros(400,400);

for i=1:100:400
  for j=1:100:400
    chess(i:i+50,j:j+50)=255;
  endfor
endfor

for i=51:100:400
  for j=51:100:400
    chess(i:i+50,j:j+50)=255;
  endfor
endfor

imshow(chess);
