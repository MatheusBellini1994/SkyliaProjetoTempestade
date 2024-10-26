import pandas as pd
from datetime import datetime

# Carregar os dois arquivos CSV
# Tentar forçar o tipo de dados e desativar a verificação de tipos mistos
df1 = pd.read_csv('interrupcao_limpo.csv', dtype=str)
df2 = pd.read_csv('interlagos_limpo.csv', dtype=str, low_memory=False)

# Converter a coluna 'DatInicioInterrupcao' do primeiro DataFrame para datetime
df1['DatInicioInterrupcao'] = pd.to_datetime(df1['DatInicioInterrupcao'], errors='coerce')

# Função para combinar data e hora
def combine_date_time(date_str, time_str):
    try:
        # Assumir que 'hora' está em formato 'HHMM'
        hour = int(time_str[:2])
        minute = int(time_str[2:]) if len(time_str) > 2 else 0
        return pd.to_datetime(date_str + f' {hour:02d}:{minute:02d}', format='%d/%m/%Y %H:%M')
    except ValueError:
        return pd.NaT  # Retornar NaT para valores inválidos

# Converter as colunas 'Data' e 'Hora' do segundo DataFrame para datetime
df2['Data'] = pd.to_datetime(df2['Data'], format='%d/%m/%Y', errors='coerce')
df2['Hora'] = df2['Hora'].astype(str).str.zfill(4)  # Preencher com zeros à esquerda se necessário
df2['datatime'] = df2.apply(lambda row: combine_date_time(row['Data'].strftime('%d/%m/%Y'), row['Hora']), axis=1)

# Arredondar para a hora mais próxima
df1['datainicio_hour'] = df1['DatInicioInterrupcao'].dt.round('H')
df2['datatime_hour'] = df2['datatime'].dt.round('H')

# Fazer a junção com base na data e hora arredondadas
merged_df = pd.merge(df1, df2, left_on='datainicio_hour', right_on='datatime_hour', how='inner')

# Salvar o resultado em um arquivo CSV
merged_df.to_csv('resultado_juncao.csv', index=False)

print("Arquivo CSV 'resultado_juncao.csv' gerado com sucesso.")
