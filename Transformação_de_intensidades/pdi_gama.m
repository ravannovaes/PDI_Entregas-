 x= imread('download.jpeg');
 imagem=im2double(x)
 gama1=1*(imagem.^0.5)
 gama2=1*(imagem.^1)
 gama3=1*(imagem.^4)
 subplot(1,4,1),imshow(x),title("imagem original")
 subplot(1,4,2),imshow(gama1),title("gama=0.5") 
 subplot(1,4,3),imshow(gama2),title("gama=1")
 subplot(1,4,4),imshow(gama3),title("gama=4")