
# Análise de Infecção Hospitalar

Este repositório contém um código desenvolvido para realizar a análise de infecções hospitalares utilizando dados fornecidos em uma planilha Excel. O código trata os dados, calcula taxas de incidência e gera gráficos de controle para monitoramento da ocorrência de infecção hospitalar.

## Descrição do Código

O código realiza as seguintes etapas:

1. **Leitura e Tratamento dos Dados**: 
   - Os dados são lidos de um arquivo Excel (`estudoCaso.xlsx`), e as variáveis são tratadas para remover valores ausentes e categorizar o mês de ocorrência das infecções.

2. **Cálculo das Taxas de Incidência**:
   - São calculadas as taxas de incidência geral (`incid`) e as taxas mensais de incidência (`incidM`) para cada mês.

3. **Cálculo dos Limites de Controle**:
   - São definidos os limites de alerta (LAS) e os limites de controle (LCS) com base nas taxas de incidência calculadas.

4. **Criação de Gráficos de Controle**:
   - O primeiro gráfico é gerado para monitorar a taxa de infecção mensal, com os limites de alerta e controle. Este gráfico considera a taxa média de infecção para todo o período de análise.
   
   - O segundo gráfico exclui um período epidêmico específico e recalcula a taxa média de infecção, ajustando os limites de controle e alerta.

5. **Análise de Outras Variáveis**:
   - São gerados gráficos adicionais para analisar outras variáveis relacionadas, como `ITU` (infecções do trato urinário) e `Sonda_versical`.

## Dependências

Este código requer o pacote `xlsx` para ler arquivos Excel. 

## Resultados

O código gera gráficos de controle para acompanhar as taxas de infecção hospitalar e detectar períodos de alerta. Ele também permite visualizar a variação da taxa de infecção após a exclusão de períodos epidêmicos e oferece uma visão geral de outras variáveis relacionadas.

## Conclusão

A análise de infecção hospitalar é essencial para monitorar a saúde pública e a eficácia de medidas preventivas. Este código facilita a visualização e o controle da ocorrência de infecções ao longo do tempo, ajudando na tomada de decisões.
