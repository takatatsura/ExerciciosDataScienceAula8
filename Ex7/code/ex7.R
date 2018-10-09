
# Clean up the area
rm(list = ls())
#

# No R, para utilizar determinadas funções, é preciso "carregar" um "pacote"
# Neste caso, carregamos o "pacote" xlxs diretamente do CRAN-R
# Caso o mesmo ainda não esteja transferido o comando é:
## install.packages("xlsx")
library(xlsx)
eb <- read.xlsx("exercicio7.xls", sheetName = "Plan1")
head(eb)



# Gráfico de Barras
barplot(eb$Atendimento, col = "red",  main = "Número de pessoas atendidas por área", names.arg = eb$Ã.reas)