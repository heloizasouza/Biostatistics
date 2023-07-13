library("xlsx")
library("ggplot2")
library("dplyr", warn.conflicts = FALSE)

dados <- read.xlsx("doencaMeningococica.xlsx", sheetIndex = 1, header = TRUE)

# Ordenando os mêses
dados$Mês<-factor(dados$Mês, levels=c("Jan","Fev","Mar","Abr","Mai","Jun"
                                         ,"Jul","Ago","Set","Out","Nov","Dez"))

ggplot(data = dados, mapping = aes(x = Mes, y = incidencia, group = Ano, colour = Ano)) +
    geom_line() + 
    geom_hline(yintercept = mean(dados$incidencia)+2*sd(dados$incidencia), color = "red") + 
    geom_hline(yintercept = mean(dados$incidencia)-2*sd(dados$incidencia), color = "red")


plot(x = dados$Mes[12], y = dados$incidencia[12], type = "l")
plot(dados$incidencia)


dados1 <- dados
row.names(dados1) <- dados1$Mês

plot(dados1$X1989)

plot(dados1$X1988, )
