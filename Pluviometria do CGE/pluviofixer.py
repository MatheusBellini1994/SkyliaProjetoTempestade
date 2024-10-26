import pandas as pd

# Ler o arquivo CSV existente
df = pd.read_csv('PluviometriaCGESPZonaSul2023.csv')

# Exibir os nomes das colunas para depuração
print("Nomes das colunas:", df.columns)

# Remover espaços em branco dos nomes das colunas
df.columns = df.columns.str.strip()

# Criar a nova coluna de data
df['year'] = 2023
df['month'] = df['mes']
df['day'] = df['dia']

df['Data'] = pd.to_datetime(df[['year','month','day']])

# Formatar a nova coluna de data como dd-mm-aa
df['Data'] = df['Data'].dt.strftime('%d-%m-%y')

# Selecionar apenas as colunas necessárias
df_novo = df[['Cód. Bairros', 'Nome Bairros', 'Data', 'Pluviometria']]

# Renomear as colunas, se necessário
df_novo.columns = ['Cod_Bairros', 'Nome_Bairros', 'Data', 'Pluviometria']

# Salvar o novo DataFrame em um novo arquivo CSV
df_novo.to_csv('pluviometria_novo.csv', index=False)

print("Novo CSV criado com sucesso: 'pluviometria_novo.csv'")
