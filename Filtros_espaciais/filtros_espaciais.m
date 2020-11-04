%mediana,maximo,minimo,gaussiana
I = imread ('monalisa.pgm');
mediana = ordfilt2(I,5,ones(3,3))
minimo = ordfilt2(I,1,ones(3,3))
maximo = ordfilt2(I,9,ones(3,3))
gaussiano = imgaussfilt (I,2);

subplot(1,5,1),imshow(I),title("original")  
subplot(1,5,2),imshow(mediana),title("mediana")
subplot(1,5,3),imshow(minimo),title("minimo")
subplot(1,5,4),imshow(maximo),title("maximo")
subplot(1,5,5),imshow(gaussiano),title("gaussiano")


