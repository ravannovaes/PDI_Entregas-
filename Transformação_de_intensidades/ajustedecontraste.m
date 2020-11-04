I= imread('monalisa.pgm');
m= mean(I)
g= 1./(1+(m./(double(I) + eps)).^20)
figure
imshow(g)
title('ajuste de contraste')