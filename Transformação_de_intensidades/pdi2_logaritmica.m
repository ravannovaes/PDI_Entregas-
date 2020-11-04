x= imread('download.jpeg');
imagem=im2double(x)
 T1=1*log(1 + imagem)
 T2=4*log(1 + imagem) 
 
 subplot(1,3,1),imshow(x),title("imagem original")
 
 subplot(1,3,2),imshow(T1),title("c=1")
 
 subplot(1,3,3),imshow(T2),title("c=4")