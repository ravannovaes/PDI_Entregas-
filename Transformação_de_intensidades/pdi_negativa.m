
  x= imread('download.jpeg');
  modo2= uint8(-1*(double(x)-255));
   modo1= imcomplement(x);
  
   subplot(1,3,1),imshow(x),title("imagem original")
 
   subplot(1,3,2),imshow(modo1),title("modo 1")
  
   subplot(1,3,3),imshow(modo2),title("modo 2")

% 
%imagem=im2double(x)
%  T1=1*log(1 + imagem)
%  T2=4*log(1 + imagem) 
%  
%  subplot(1,3,1),imshow(x),title("imagem original")
%  
%  subplot(1,3,2),imshow(T1),title("c=1")
%  
%  subplot(1,3,3),imshow(T2),title("c=4")
% %  
%  gama1=1*(imagem.^0.5)
%  gama2=1*(imagem.^1)
%  gama3=1*(imagem.^4)
%  subplot(1,4,1),imshow(x),title("imagem original")
%  subplot(1,4,2),imshow(gama1),title( "gama=0.5") 
%  subplot(1,4,3),imshow(gama2),title( "gama=1")
%  subplot(1,4,4),imshow(gama3),title("gama=4")
%  
%  