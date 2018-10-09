library(xlsx)

eb <- read.xlsx("exercicio8.xls", sheetName = "Plan1", header = FALSE, startRow = 2)

#Passando os dados para um vetor para facilitar
dados <- eb$X1
dados <- c(dados, eb$X2)
dados <- c(dados, eb$X3)
dados <- c(dados, eb$X4)
dados <- c(dados, eb$X5)
dados <- c(dados, eb$X6)
dados <- c(dados, eb$X7)
dados <- c(dados, eb$X8)
dados <- c(dados, eb$X9)
dados <- c(dados, eb$X10)

#Criando as classes
brk <- seq(1.60, 1.85, 0.05)
classes <- c("1.60-1.65", "1.65-1.70", "1.70-1.75", "1.75-1.80", "1.80-1.85")
summary(dados)

#Tabela de frequencias por classes
tabela <- table(cut(dados, brk, labels = classes, ordered_result = TRUE, right = FALSE))
tabela

prop.table(tabela) * 100
barplot(tabela, ylim = c(0, 20))

#Histograma
hist(dados)
