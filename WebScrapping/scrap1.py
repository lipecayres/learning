##
## Converting a column type in a column Dataframe
# 

import pandas as pd

price = pd.read_csv('https://dados.anvisa.gov.br/dados/TA_PRECO_MEDICAMENTO.csv', encoding="ISO-8859-1", sep = ';')

print(price)
