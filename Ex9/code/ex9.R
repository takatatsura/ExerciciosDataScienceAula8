library(xlsx)

eb <- read.xlsx("exercicio9.xls", sheetName = "Plan1")

#Criando as classes
brk <- seq(4, 24, 2)
classes <- c("4-6", "6-8", "8-10", "10-12", "12-14", "14-16", "16-18", "18-20", "20-22", "22-24")
summary(eb$SalÃ.rios)

#Tabela de frequencias por classes
tabela <- table(cut(eb$SalÃ.rios, brk, labels = classes, ordered_result = TRUE, right = FALSE, include.lowest = TRUE))
tabela

prop.table(tabela) * 100
barplot(tabela, ylim = c(0, 10))

#Histograma
hist(eb$SalÃ.rios, brk, right = FALSE, labels = classes, main = "Histograma de Salários")

