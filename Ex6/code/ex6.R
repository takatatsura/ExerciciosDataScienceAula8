#
# Clean up the area
rm(list = ls())

library(xlsx)

eh <- read.xlsx("exercicio6.xls", sheetName = "Plan1")
# Ordena os valores
eh <- eh[order(eh$NÂº.pessoas, decreasing = TRUE), ]
# Realoca níveis para as qualidades
eh$Qualidade <- factor(eh$Qualidade, levels = eh$Qualidade)
# Cria um novo campo para armazenar as sumas acumuladas
eh$soma <- cumsum(eh$NÂº.pessoas)

# Plota o gráfico
grafico = barplot(eh$NÂº.pessoas, names.arg = eh$Qualidade, 
                  main = "Grafico", ylim = c(0, 1.05 * max(eh$soma, na.rm = TRUE)), cex.names = 0.7)

lines(grafico, eh$soma, type = "b", cex = 0.7, pch = 19, col="cyan")

axis(side = 2, at = c(0, eh$soma), las = 1, col.axis = "gray", col = "gray", cex.axis = 0.8)