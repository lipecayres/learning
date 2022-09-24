
# Atividade Módulo I ----------------------------------------------

# Foi realizada uma pesquisa no site do Instituto Brasileiro de 
# Geografia e Estatistica - IBGE sobre 10 cidade do Brasil,
# nesta pesquisa considerou-se o nomes das cidade, populacao, 
# regiao, PIB per capita e taxa de mortalidade infantil.

# 1. Feira de Santana: Populacao de 556642 pessoas; Regiao Nordeste; 
# PIB per capita de 24229.74 R$; e Taxa de Mortalidade Infantil 
# de 13,84 óbitos por mil nascidos vivos.

# 2. Aracaju: Populacao de 571149 pessoas; Regiao Nordeste; 
# PIB per capita de 26688.23 R$; e Taxa de Mortalidade Infantil 
# de 16,72 óbitos por mil nascidos vivos.

# 3. Manaus: Populacao de 1802014 pessoas; Regiao Norte; 
# PIB per capita de 38880.73 R$; e Taxa de Mortalidade Infantil 
# de 12,80 óbitos por mil nascidos vivos.

# 4. Rio Branco: Populacao de 336038 pessoas; Regiao Norte; 
# PIB per capita de 22448,30 R$; e Taxa de Mortalidade Infantil 
# de 14,97 óbitos por mil nascidos vivos.

# 5. Palmas: Populacao de 228332 pessoas; Regiao Norte; 
# PIB per capita de 34933.66 R$; e Taxa de Mortalidade Infantil 
# de 12,13 óbitos por mil nascidos vivos.

# 6. Curitiba: Populacao de 1751907 pessoas; Regiao Sul; 
# PIB per capita de 49706.64 R$; e Taxa de Mortalidade Infantil 
# de 7,10 óbitos por mil nascidos vivos.

# 7. Recife: Populacao de 1537704 pessoas; Regiao Nordeste; 
# PIB per capita de 33232.26 R$; e Taxa de Mortalidade Infantil 
# de 11,20 óbitos por mil nascidos vivos.

# 8. Teresina: Populacao de 814230 pessoas; Regiao Nordeste; 
# PIB per capita de 25458.50 R$; e Taxa de Mortalidade Infantil 
# de 12,10 óbitos por mil nascidos vivos.

# 9. Natal: Populacao de 803739 pessoas; Regiao Nordeste; 
# PIB per capita de 28113.21 R$; e Taxa de Mortalidade Infantil 
# de 9,52 óbitos por mil nascidos vivos.

# 10. Porto Velho: Populacao de 428527 pessoas; Regiao Norte; 
# PIB per capita de 33825.46 R$; e Taxa de Mortalidade Infantil 
# de 17,61 óbitos por mil nascidos vivos. 

# Agora é sua vez de praticar:

# 1. Crie cada objeto;
# 2. Crie um data.frame com os dados;
# 3. Verifique a classe de cada objeto;
# 4. Calcule a média para o PIB;
# 5. Calcule o desvio padrão para o PIB;
# 6. Calcule a média para mortalidade infantil;
# 7. Calcule o desvio padrão para mortalidade infantil;
# 8. Defina o objeto "regiao" como fator;
# 9. Calcule a porcentagem por regiao;
# 10. Imagine que não foi encontrada a informação referente ao PIB de 
# Manaus, neste caso você irá acrescentar um NA para essa informação
# e irá fazer o calculo da média e desvio padrão do PIB. 

# Resolução da Atividade I do módulo I ----------------------------

# 1. Crie cada objeto;
cidade <- c("Feira de Santana", "Aracaju", "Manaus", 
             "Rio Branco","Palmas","Curitiba", "Recife", 
             "Teresina", "Natal", "Porto Velho")

regiao <- c("Nordeste", "Nordeste", "Norte", "Norte", "Norte", 
            "Sul", "Nordeste", "Nordeste", "Nordeste", "Norte")

populacao <- c(556642, 571149, 1802014, 336038, 228332, 
               1751907, 1537704, 814230, 803739, 428527)

PIB <- c(24229.74, 26688.23, 38880.73, 22448.30, 34933.66, 
         49706.64, 33232.26, 25458.50, 28113.21, 33825.46)

mortalidade_infantil <- c(13.84, 16.72, 12.8, 14.97, 12.13, 
                          7.1, 11.2, 12.1, 9.52, 17.61)

# 2. Crie um data.frame com os dados;
dados <- data.frame(cidade, regiao, populacao, 
                    PIB, mortalidade_infantil)
dados

# 3. Verifique a classe de cada objeto;
class(cidade)
class(regiao)
class(populacao)
class(PIB)
class(mortalidade_infantil)

# 4. Calcule a média para o PIB;
mean(PIB)

# 5. Calcule o desvio padrão para o PIB;
sd(PIB) 

# 6. Calcule a média para mortalidade infantil;
mean(mortalidade_infantil)

# 7. Calcule o desvio padrão para mortalidade infantil;
sd(mortalidade_infantil)

# 8. Defina o objeto "regiao" como fator;
regiao = factor(regiao)
class(regiao)

# 9. Calcule a porcentagem por regiao;
table(regiao)
tab_regiao <- table(regiao)

prop.table(tab_regiao)
proporcao_regiao <- prop.table(tab_regiao)
proporcao_regiao
porcentagem_regiao <- prop.table(tab_regiao)*100
porcentagem_regiao 

# 10. Imagine que não foi encontrada a informação referente ao PIB de 
# Manaus, neste caso você irá acrescentar um NA para essa informação
# e irá fazer o calculo da média e desvio padrão do PIB.
PIB <- c(24229.74, 26688.23, NA, 22448.30, 34933.66, 
         49706.64, 33232.26, 25458.50, 28113.21, 33825.46)

mean(PIB, na.rm = TRUE) # Calculo da media
sd(PIB, na.rm = TRUE) # Calculo do desvio padrao

# Funcao para limpar o Environment (ambiente):
rm(list = ls())


# Parte 2 ---------------------------------------------------------

# Supondo que você tenha esses dados do IBGE tabulados 
# no Microsoft Excel, e agora deseja importá-los para 
# o R visando fazer suas manipulacoes, como fazer isso?

# O que é um pacote? 

# Como instalar um pacote?

# Funcao "install.packages()"
# Pacote "readxl"
install.packages("readxl") # instala pacote

# Como carregar um pacote?

# Funcao "library()" ou "require()"
library(readxl) # carrega pacote

# Para carregar uma funcao de um pacote pode usar dois pontos, 
# assim voce sabe o pacote que esta usando e sua respectiva funcao.
# readxl::

# Importacao dos dados
# Funcao "read_excel()"
dados_ibge <- read_excel("dados_ibge.xlsx")

# Import Dataset
# Environment > Import Dataset > From Excel > Browse > 
# Escolhe o banco de dados > Sheet > Import

# Funcao "View()"
View(dados_ibge) # visualiza os dados

# Como visualizar a estrutura desse banco de dados?
# Funcao "str()"
str(dados_ibge) # Mostra a estrutura dos dados

# Como visualizar quantas linhas e colunas tem nesse banco de dados?
# Funcao "dim()"
dim(dados_ibge) # Mostra quantas linhas e colunas tem
# Funcao "nrow()"
nrow(dados_ibge) # Mostra quantas linhas possui o banco de dados
# Funcao "ncol()"
ncol(dados_ibge) # Mostra quantas colunas possui o banco de dados

# Como visualizar suas variáveis?
# Funcao "names()"
names(dados_ibge) # Visualiza as variaveis presentes no conjunto de dados.

# É possível escolher uma variável para visualizar?
# Uso do "$"
dados_ibge$regiao 

# Funcao "attach()"
attach(dados_ibge) # Transforma as colunas como objetos.

cidade
regiao
populacao
PIB
mortalidade_infantil

# Calculo da media do PIB por regiao
# Funcao "tapply()"
tapply(PIB, regiao, mean)

# Calculo do desvio padrao do PIB por regiao
# Funcao "tapply()"
tapply(PIB, regiao, sd)

# Funcao "table()"
tab_regiao <- table(regiao)
tab_regiao

# Como calcular os percentuais para cada regiao?
# Funcao "prop.table()"
prop.table(tab_regiao)

proporcao_regiao <- prop.table(tab_regiao)
proporcao_regiao

porc_regiao <- prop.table(tab_regiao)*100
porc_regiao 

# Como somar todos os valores de uma coluna?
# Funcao "sum()"
sum(PIB) # Soma os valores de uma coluna
sum(populacao)
sum(mortalidade_infantil)

# Suponha que o pesquisador além de fazer essas análises
# vai produzir um relatório com os resultados dessa pesquisa
# e para isso ele precisará de gráficos para melhor demonstrar
# esses parametros, e inicialmente ele deseja mostrar graficamente
# o quantitativo de cidade de cada tab_regiao do estudo. 

# Grafico do tipo Barplot
# Funcao "barplot()"
barplot(tab_regiao)
barplot(porc_regiao)

barplot(porc_regiao,
        main = "Distrubuicao por regiao") # "main" adiciona título

barplot(tab_regiao,
        main = "Distrubuicao por regiao", 
        cex.main = 1.5) # "cex.main" altera o tamanho da fonte do título
        
barplot(tab_regiao,
        main = "Distrubuicao por regiao", 
        cex.main = 1.5, 
        ylab = "Percentual") # "ylab" adiciona título do eixo y

barplot(tab_regiao,
        main = "Distrubuicao por regiao", 
        cex.main = 1.5, 
        ylab = "Percentual", 
        xlab = "Regiões") # "xlab" adiciona título no eixo x

barplot(tab_regiao,
        main = "Distrubuicao por regiao",
        cex.main = 1.5, 
        ylab = "Percentual",
        xlab = "Regiões", 
        las = 1) # "las" rotacao de textos nas margens dos eixos

barplot(tab_regiao,
        main = "Distrubuicao por regiao", 
        cex.main = 1.5,
        ylab = "Percentual", 
        xlab = "Regiões", 
        las = 1, 
        cex.lab = 1.5) # "cex.lab" altera a cor dos nomes dos eixos

barplot(tab_regiao,
        main = "Distrubuicao por regiao", 
        cex.main = 1.5, 
        ylab = "Percentual", 
        xlab = "Regiões", 
        las = 1, 
        cex.lab = 1.5, 
        ylim = c(0, 6)) # "ylim" altera os limites no eixo y
        
barplot(tab_regiao,
        main = "Distrubuicao por regiao", 
        cex.main = 1.5, 
        ylab = "Percentual", 
        xlab = "Regiões", 
        las = 1, 
        cex.lab = 1.5, 
        ylim = c(0, 6), 
        col = c("pink", "yellow", "red")) # "col()" altera as cores das barras

barplot(tab_regiao,
        main = "Distrubuicao por regiao",
        cex.main = 1.5, 
        ylab = "Percentual", 
        xlab = "Regiões",
        las = 1, 
        cex.lab = 1.5, 
        ylim = c(0, 6), 
        col = c("blue", "yellow", "red"), 
        col.main = "red") # "col.main" altera a cor do título

barplot(tab_regiao,
        main = "Distrubuicao por regiao", 
        cex.main = 1.5, 
        ylab = "Percentual", 
        xlab = "Regiões", 
        las = 1, 
        cex.lab = 1.5, 
        ylim = c(0, 6), 
        col = c("blue", "yellow", "red"), 
        col.main = "red", 
        col.lab = "blue") # "col.lab" altera a cor dos nomes dos eixos

barplot(tab_regiao,
        main = "Distrubuicao por regiao", 
        cex.main = 1.5, 
        ylab = "Percentual", 
        xlab = "Regiões", 
        las = 1, 
        cex.lab = 1.5, 
        ylim = c(0, 6), 
        col = c("blue", "yellow", "red"), 
        col.main = "red", 
        col.lab = "blue",
        mtext("Fonte: IBGE, 2022", 
              side = 1, # escolhe o lado do grafico (1 = inferior)
              line = 4, # escolhe a linha
              adj = -0.25)) # ajuste na direcao da leitura

barplot(tab_regiao,
        main = "Distrubuicao por regiao", # "main" adiciona título
        cex.main = c(1.5), # "cex.main" altera o tamanho da fonte do título
        ylab = "Percentual", # "ylab" adiciona título do eixo y
        xlab = "Regiões", # "xlab" adiciona título no eixo x
        las =1, # "las" rotacao de textos nas margens dos eixos
        cex.lab = 1.5, # "cex.lab" altera a cor dos nomes dos eixos
        ylim = c(0, 6), # "ylim" altera os limites no eixo y
        col = c("blue", "yellow", "red"), # "col()" altera as cores das barras
        col.main = "red", # "col.main" altera a cor do título
        col.lab = "blue", # "col.lab" altera a cor dos nomes dos eixos
        mtext("Fonte: IBGE, 2022", 
              side = 1, # escolhe o lado do grafico (1 = inferior)
              line = 4, # escolhe a linha
              adj = -0.25)) # ajuste na direcao da leitura

# Grafico do tipo Pizza
# Funcao "pie()"
pie(porc_regiao,   # tabela com os valores a serem inseridos
    main = "Distrubuicao por regiao", # titulo do grafico
    labels = c("Nordeste (50,0%)", # rotulos
               "Norte (40,0%)", 
               "Sul (10,0%)"),
    col = c("red", "blue", "white"),# cores
    cex = 0.75,                     # tamanho da fonte
    cex.main = 1.2                 # tamanho da fonte do título
) 

# Outra opcao para o grafico de pizza, apresentando so as percentagens:
pie(porc_regiao,   # tabela com os valores a serem inseridos
    main = "Distrubuicao por regiao", # titulo do grafico
    labels = c("50,0%","40,0%", "10,0%"), # rotulos
    col = c("red","blue","white"), # cores
    cex = 0.75, # tamanho da fonte
    cex.main = 0.95 # tamanho da fonte do título
) 

# Legenda: Funcao "legend()"
legend(
    "top",  # Local para posicionar a legenda (alto à direita)
    legend = c("Nordeste", # insere as informacoes
             "Norte", 
             "Sul"),
    fill = c("red","blue","white"), #cores de preenchimento
    bty = "n",   # Não coloca a legenda dentro de uma "caixa", (o - coloca legenda na caixa)
    horiz = T    # cada grupo fica em uma única linha
)

# legend() pode ser substituido pelos valores “bottomright”, “bottom”, 
# “bottomleft”, “left”, “topleft”, “top”, “topright”, “right” 
# e “center” para usar posições predefinidas.
