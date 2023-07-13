# Reprodução gráfica das tabelas de aula

rm(list = ls())

library(vcd)

data(Arthritis)

# Frequência absoluta
mytable <- with(Arthritis, table(Improved))

# Frequência relativa
round(prop.table(mytable), digits = 3)*100

# Tabela de contingência de frequência absoluta
mytable <- xtabs(~ Treatment + Improved, data = Arthritis)

# distribuição marginal de uma tabela de contingência 
margin.table(mytable, 1)
# Tabela de contingência - frequência relativa em relaçaõ ao total marginal
prop.table(mytable, 1)

#Distribuição marginal de uma tabela de contingência - frequência absoluta
margin.table(mytable, 2)
#Tabela de contingência - frequência relativa em relação ao total marginal coluna
prop.table(mytable, 2)

#Adicionar os totais
addmargins(mytable)
addmargins(prop.table(mytable))
addmargins(prop.table(mytable, 1), 2)
addmargins(prop.table(mytable, 2), 1)

# uma outra forma de fazer a mesma coisa feita antes
mytable2 <- xtabs(~ Treatment+Sex+Improved, data = Arthritis)
ftable(mytable2)

ftable(addmargins(prop.table(mytable2, c(1,2), 3)*100))
