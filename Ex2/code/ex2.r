library(xlsx)

eb <- read.xlsx("exercicio2.xls", sheetName = "Plan1")

brk <- seq(0, 100, 10)
classes <- c("0-10", "10-20", "20-30", "30-40", "40-50", "50-60", "60-70", "70-80", "80-90", "90-100")
summary(eb$Casas)

#Tabela de frequencias por classes
tabela <- table(cut(eb$Casas, brk, labels = classes, ordered_result = TRUE, right = FALSE))

prop.table(tabela) * 100
barplot(tabela)

#Tabela de frequencias individuais
tabela2 <- eb$Casas
prop.table(tabela2)

#Calculo de medidas e plotagem
boxplot(eb$Casas)

amp <- range(eb$Casas)
variancia <- var(eb$Casas)
desvio <- sd(eb$Casas)

media <- mean(eb$Casas)
mediana <- median(eb$Casas)
q1 <- quantile(eb$Casas, probs = 0.25)
q3 <- quantile(eb$Casas, probs = 0.75)

getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
moda <- getmode(eb$Casas)
