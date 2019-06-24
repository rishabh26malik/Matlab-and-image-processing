function [Ie] = edge_map(I)
Iv=convolution_image(I,[ones(7,3),zeros(7,1),ones(7,3)]);
Ih=convolution_image(I,[ones(7,3),zeros(7,1),ones(7,3)]);
Ie=max(cat(3,Iv,Ih),3);
figure,imshow(Ie);
end