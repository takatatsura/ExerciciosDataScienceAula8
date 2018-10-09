#
# Clean up the area
rm(list = ls())

library(xlsx)

eb <- read.xlsx("exercicio4.xls", sheetName = "Plan1")

#a) Gerar a distribuição de frequências

brk <- seq(5, 12, 1)
tabela <- table(cut(eb$SalÃ.rios, brk, ordered_result = TRUE, right = FALSE))
tabela

#b) Gerar o grafico
hist(eb$SalÃ.rios, main = "Salários", xlab = "Salários")
