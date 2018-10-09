#
# Clean up the area
rm(list = ls())
#

# Localizando o arquivo .xls
setwd("\Data Science\Aula 8\Ex1\data")

# No R, para utilizar determinadas funções, é preciso "carregar" um "pacote"
# Neste caso, carregamos o "pacote" xlxs diretamente do CRAN-R
# Caso o mesmo ainda não esteja transferido o comando é:
## install.packages("xlsx")
library(xlsx)
eb <- read.xlsx("exercicio1.xls", sheetName = "Plan1")
head(eb)

# Gráfico de Barras
barplot(eb$Taxas.de.juros, col = "red", sub = "Gráfico de Barras",  main = "Taxas de Juros")

dados <- eb$Taxas.de.juros
dados <- sort(dados)
media <- mean(dados)
mediana <- median(dados)

q1 <- dados[(length(dados) + 1) / 4]
q3 <- dados[3 * (length(dados) + 1) / 4]
dv <- sd(dados)
variancia <- var(dados)
minimo <- min(dados)
maximo <- max(dados)

dadosbarra <- c(media, mediana, q1, q3, dv, variancia, minimo, maximo)
barplot(dadosbarra, main = "Informações do .xls", names.arg = dadosbarra)

