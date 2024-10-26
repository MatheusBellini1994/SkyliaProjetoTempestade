import pandas as pd
import mysql.connector
from mysql.connector import Error
# pip install pandas mysql-connector-python
# Configurações de conexão ao banco de dados
config = {
    'user': 'if0_37349283',
    'password': 'Dq5j4drby6',
    'host': 'sql304.infinityfree.com',
    'database': 'if0_37349283_skylia'
}

# Conectar ao banco de dados
conn = mysql.connector.connect(**config)
cursor = conn.cursor()

# Função para inserir dados na tabela
def insert_data_from_csv(csv_file, table_name):
    # Ler o arquivo CSV
    df = pd.read_csv(csv_file)
    
    # Iterar sobre as linhas do DataFrame e inserir na tabela
    for _, row in df.iterrows():
        if table_name == 'alagamentos':
            sql = """INSERT INTO alagamentos (dataalaga, zona, bairro, ponto, statusalaga, sentido, referencia, horarioInicio, horarioFinal, logradouro) 
                     VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"""
            cursor.execute(sql, tuple(row))

        elif table_name == 'interrupcoes':
            sql = """INSERT INTO interrupcoes (DscConjuntoUnidadeConsumidora, DatInicioInterrupcao, DatFimInterrupcao, contagem) 
                     VALUES (%s, %s, %s, %s)"""
            cursor.execute(sql, tuple(row))

        elif table_name == 'pluviometria':
            sql = """INSERT INTO pluviometria (codBairro, nomeBairro, dataPluvio, pluviometria) 
                     VALUES (%s, %s, %s, %s)"""
            cursor.execute(sql, tuple(row))

    # Commit para salvar as alterações
    conn.commit()

# Inserir dados de cada CSV
insert_data_from_csv('alagamentosCGEZonaSul.csv', 'alagamentos')
insert_data_from_csv('quedas2.csv', 'interrupcoes')
insert_data_from_csv('pluviometria_novo.csv', 'pluviometria')

# Fechar a conexão
cursor.close()
conn.close()
