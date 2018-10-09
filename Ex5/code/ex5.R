
# Clean up the area
rm(list = ls())
#

# Localizando o arquivo .xls
setwd("\Data Science\Aula 8\Ex2\data")

# No R, para utilizar determinadas funções, é preciso "carregar" um "pacote"
# Neste caso, carregamos o "pacote" xlxs diretamente do CRAN-R
# Caso o mesmo ainda não esteja transferido o comando é:
## install.packages("xlsx")
library(xlsx)
eb <- read.xlsx("exercicio5.xls", sheetName = "Plan1")
head(eb)

marcas <- eb$Marcas
npessoas <- eb$NÂº.pessoas

# Gráfico de Barras
barplot(npessoas, col = "red",  main = "Número de pessoas que gostam de determinada marca", names.arg = marcas)
