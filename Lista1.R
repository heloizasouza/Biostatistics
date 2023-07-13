# Lista 01 - Bioestatística 


# Exercício 14 -------------------------------

tab1 <- matrix(c(14,12,12,01), nrow = 2, ncol = 2, 
               dimnames = list(c('Masculino', 'Feminino'), c('Presente', 'Ausente')))


barplot(tab1, legend = rownames(tab1),
        col = c("blue", "pink"), beside = T)

barplot(prop.table(tab1)*100, beside = T)


# Exercício 15 -------------------------------

# tabela de dados 2
tab2 <- matrix(data = c(90,710,10,1190), nrow = 2, byrow = T,
               dimnames = list(c('Fumante', 'Não Fumante'),
                               c('Sim', 'Não')))
barplot(tab2, legend = rownames(tab2),
        col = c('cyan3', 'pink2'), xlab = "Câncer Pulmão")
# não fumantes têm menos chances de desenvolver Câncer


# tabela de dados 3
tab3 <- matrix(data = c(17,36,8,102), nrow = 2, byrow = T,
               dimnames = list(c('Sim', 'Não'), c('Sim', 'Não')))
barplot(tab3, xlab = "Câncer de mama")
legend("toplefth")
