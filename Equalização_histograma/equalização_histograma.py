import matplotlib.pyplot as plt
teste = open('/content/relogio.pgm',"r")
d = teste.readlines()
carrega_dados=[]
quantidade=[]
dados_intensidades=[]
intensidades_inteiros=[]
intensidade_frequencia=[]
eixo_x=[]
vetor6=[]
vetor7=[]
vetor8=[]
novaimagem=[]

#ler os dados incluindo o cabeçalho e retorna uma string
for line in d:
       for n in line.split():
           carrega_dados.append(n)
#tamanho total da imagem
tamanho= int(carrega_dados[1])*int(carrega_dados[2])

#converte os valores de str para inteiros

dados_intensidades = carrega_dados[4:]
print(dados_intensidades)
for val in dados_intensidades:
    intensidades_inteiros.append(int(val))
#conta a frequencia de cada nivel e divide pelo total de pixels da imagem (pmf)

for i in range(0,255) :
   a=(intensidades_inteiros.count(i))
   vetor7.append(a)
   intensidade_frequencia.append((a/tamanho))
   eixo_x.append(i)

print(vetor7)
#plota histograma
plt.bar(eixo_x,intensidade_frequencia)
plt.show()

#calcula a cdf 
for i in range (0,255):
    intensidade_frequencia[i]=intensidade_frequencia[i]+intensidade_frequencia[i-1]

#normaliza a cdf e arredonda os novos indices
for i in range(0,255) :
    intensidade_frequencia[i]=round(intensidade_frequencia[i]*255)

#print(intensidade_frequencia)



for i in range(0,255) :
  vetor8.append(0)

#calculo histograma equalizado
for i in range(0,255) :
    for j in range(0,255) :
       if (intensidade_frequencia[i]==j) :

          vetor8[j] =  vetor8[j] + vetor7[i]

print(vetor8)

#plota cdf normalizada e aproximada
plt.bar(eixo_x,vetor8)
plt.show()
