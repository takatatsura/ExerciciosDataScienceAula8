
# Clean up the area
rm(list = ls())
#

# Localizando o arquivo .xls
setwd("\Data Science\Aula 8\Ex2\data")

# No R, para utilizar determinadas funções, é preciso "carregar" um "pacote"
# Neste caso, carregamos o "pacote" xlxs diretamente do CRAN-R
# Caso o mesmo ainda não esteja transferido o comando é:
## install.packages("xlsx")
eb <- read.delim("dados.txt", header = TRUE)
head(eb)
eb <- data.frame(eb)
nfilhos <- eb$Nfilhos
familias <- eb$Familias

# Gráfico de Barras
barplot(familias, col = "red",  main = "Filhos por familia", names.arg = nfilhos)


# a) Escrever um .xls
library(xlsx)
write.xlsx(eb, file = "familias_filhos.xlsx", sheetName = "dados")

# b)
#Moda


getpositionmax <- function(v) {
  uniqv <- v
  match(max(v), v)
}

#getpositionmax retorna o índice e moda recebe o valor correto
moda <- nfilhos[getpositionmax(familias)]

#Mediana
#Retorna o índice da posição
totalfamilias <- sum(familias)
somafamilias <- 0
i <- 1
while(somafamilias < totalfamilias/2){
  somafamilias <- somafamilias + familias[i]
  mediana <- i - 1
  i <- i + 1
}

