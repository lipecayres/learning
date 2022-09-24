
# Analise com base de dados do R --------------------------------------

# E possivel utilizar dados do proprio R para analisar?
# Sim, é possivel realizar analises de dados utilizando varias bases 
# do R, e uma dessas opcoes é um pacote chamado "dados", o qual 
# é composto por cinco bases de dados diferentes.

# O banco de dados ecolhido foi "iris", o qual contem dados de 
# 50 unidades amostrais de três especies (setosa, virginica, versicolor) 
# de iris (uma especie de planta). De cada uma delas mediu-se 
# quatro variaveis morfologicas: comprimento e largura da sepala 
# e comprimento e largura da petala. 

# Instala o pacote "dados"
install.packages("dados")

library(dados) # carrega o pacote
dados_iris

# Visualizando a quantidade de linhas e colunas
dim(dados_iris)

# Visualizando as primeiras colunas
# Funcao "head()"
head(dados_iris)

# Visualizando as ultimas colunas
# Funcao "tail()"
tail(dados_iris)

# Visualizando o banco de dados completo
View(dados_iris)

# Verificando a classe do banco de dados
class(dados_iris)

# Verificando a classe de cada variavel
class(dados_iris$Especies)
class(dados_iris$Comprimento.Sepala)
class(dados_iris$Largura.Sepala)
class(dados_iris$Comprimento.Petala)
class(dados_iris$Largura.Petala)
# Ou
class(dados_iris[[1]])
class(dados_iris[[5]])

# Transformando as variaveis como objetos
attach(dados_iris)
Especies
Largura.Petala
Comprimento.Petala
Largura.Sepala
Comprimento.Sepala

# É possivel fazer um resumo estatistico dos dados ?
# Funcao "summary()"
summary(dados_iris)

# É possivel verificar esse resumo estatistico com apenas uma
# variavel ?
summary(Largura.Petala)

# A partir disso, pode-se visualizar dados especificos tambem,
# com resultado de forma isolada

library(fBasics)
basicStats(dados_iris [-5])

# Media
head(dados_iris,2)
apply(dados_iris[-5], 1, mean)
mean(Largura.Sepala) # Media da largura da sepala
round(mean(Largura.Sepala),2) # arredondando o valor para 2 casas decimais

mean(Comprimento.Sepala) # Media do comprimento da sepala
round(mean(Comprimento.Sepala),2) 

mean(Largura.Petala) # Media da largura da petala
round(mean(Largura.Petala),2) 

mean(Comprimento.Petala) # Media do comprimento da petala
round(mean(Comprimento.Petala),2) 

# Mediana

median(Largura.Sepala) # mediana da largura da sepala
median(Comprimento.Sepala) # mediana do comprimento da petala
median(Largura.Petala) # mediana da largura da petala
median(Comprimento.Petala) # mediana do comprimento da petala

# Desvio Padrao

sd(Largura.Sepala) # desvio padrao da largura da sepala
round(sd(Largura.Sepala), 2)

sd(Comprimento.Sepala) # desvio padrao do comprimento da petala
round(sd(Comprimento.Sepala), 2)

sd(Largura.Petala) # desvio padrao da largura da petala
round(sd(Largura.Petala), 2)

sd(Comprimento.Petala) # desvio padrao do comprimento da petala
round(sd(Comprimento.Petala), 2)

# Valor maximo

max(Comprimento.Petala)
max(Largura.Petala)
max(Comprimento.Sepala)
max(Largura.Sepala)

# Valor minimo

min(Comprimento.Petala)
min(Largura.Petala)
min(Comprimento.Sepala)
min(Largura.Sepala)

# Media das variaveis por especies

tapply(Largura.Sepala, Especies, mean)
tapply(Largura.Petala, Especies, mean)
tapply(Comprimento.Sepala, Especies, mean)
tapply(Comprimento.Petala, Especies, mean)

# Desvio padrao das variaveis por especies

tapply(Largura.Sepala, Especies, sd)
tapply(Largura.Petala, Especies, sd)
tapply(Comprimento.Sepala, Especies, sd)
tapply(Comprimento.Petala, Especies, sd)

# Grafico barplot

boxplot(Comprimento.Petala ~ Especies)
boxplot(Comprimento.Petala ~ Especies,
        main = "Comprimento da Pétala por espécie", # "main" adiciona título
        ylab = "Comprimento da Pétala", # "ylab" adiciona título do eixo y
        xlab = "Espécies", # "xlab" adiciona título no eixo x
        col = c("orange")) # "col()" altera as cores 

colours() # Cores

boxplot(Comprimento.Sepala ~ Especies)
boxplot(Comprimento.Sepala ~ Especies,
        main = "Comprimento da Sépala por espécie", 
        ylab = "Comprimento da Sépala", 
        xlab = "Espécies", 
        col = c("turquoise2"))  

boxplot(Largura.Petala ~ Especies)
boxplot(Largura.Petala ~ Especies,
        main = "Largura da Pétala por espécie", 
        ylab = "Largura da Pétala", 
        xlab = "Espécies", 
        col = c("purple"))  

boxplot(Largura.Sepala ~ Especies)
boxplot(Largura.Sepala ~ Especies,
        main = "Largura da Sépala por espécie", 
        ylab = "Largura da Sépala", 
        xlab = "Espécies", 
        col = c("salmon1"))  

# Grafico Histograma

hist(Comprimento.Petala)
hist(Comprimento.Petala,
        main = "Histograma do Comprimento da Pétala", # "main" adiciona título
        ylab = "Frequência", # "ylab" adiciona título do eixo y
        xlab = "Comprimento da Pétala", # "xlab" adiciona título no eixo x
        col = c("maroon")) # "col()" altera as cores

hist(Comprimento.Sepala)
hist(Comprimento.Sepala,
     main = "Histograma do Comprimento da Sepala", 
     ylab = "Frequência", 
     xlab = "Comprimento da Sépala", 
     col = c("deeppink3")) 

hist(Largura.Petala)
hist(Largura.Petala,
     main = "Histograma da Largura da Sépala", 
     ylab = "Frequência", 
     xlab = "Largura da Sépala", 
     col = c("darkviolet")) 

hist(Largura.Sepala)
hist(Largura.Sepala,
     main = "Histograma da Largura da Sépala", 
     ylab = "Frequência", 
     xlab = "Largura da Sépala", 
     col = c("lavenderblush4")) 

