library("xlsx")


# fazendo a leitura e tratamento dos dados
infeccoes <- read.xlsx("estudoCaso.xlsx", sheetIndex = 1)
infeccoes <- na.omit(infeccoes)
attach(infeccoes)
infeccoes$Mes <- factor(Mes, levels=c("Jan","Fev","Mar","Abr","Mai","Jun"
                                   ,"Jul","Ago","Set","Out","Nov","Dez"))

# criando as variáveis de incidência e taxa de incidência mensal
infeccoes$incid <- round(x = sum(IH)/sum(Paciente), digits = 4)
infeccoes$incidM <- round(x = IH/Paciente, digits = 2)
attach(infeccoes)

# criando os limites de controle e alerta
infeccoes$LAS <- incid + 2*sqrt(incid/Paciente)
infeccoes$LCS <- incid + 3*sqrt(incid/Paciente)
attach(infeccoes)

# Criando o gráfico de controle
lg.tx <- c("X", "LAS", "LCS")
lg.cor <- c("blue", "orange", "red")

plot(incidM, type = "b", ylim = c(0.0,0.1), xlab = "Id Mês", ylab = "Taxa de infecção", 
     main = "Diagrama de Controle do nível endêmico de infecção hospitalar/ paciente
dia no período de janeiro de 1998 a dezembro de 2000")
abline(h = incid, col = "blue")
lines(LAS, col = "orange" , lty = 2)
lines(LCS, col = "red", lty = 2)
legend("topright", lg.tx, col = lg.cor, lty = c(1,2,2), bty = "n")


# exclusão do período epidêmico do cálculo da taxa média de ocorrência de infecção hospitalar (IH)
media <- round(x = sum(IH[-31])/sum(Paciente[-31]), digits = 4)
LAS2 <- media + 2*sqrt(media/Paciente)
LCS2 <- media + 3*sqrt(media/Paciente)

# Criando o segundo gráfico de controle
plot(incidM, type = "b", ylim = c(0.0,0.1), xlab = "Mês", ylab = "Taxa de infecção",
     main = "Diagrama de Controle do nível endêmico de infecção hospitalar/ paciente
dia no período de janeiro de 1998 a dezembro de 2000")
abline(h = media, col = "blue")
lines(LAS2, col = "orange" , lty = 2)
lines(LCS2, col = "red", lty = 2)
legend("topright", lg.tx, col = lg.cor, lty = c(1,2,2), bty = "n")


plot(infeccoes$ITU)
plot(infeccoes$Sonda_versical, type = "b")
