from venv import create
import psycopg2
import psycopg2.extras

hostname = 'localhost'
database = 'atividadesbd'
username = 'postgres'
pwd = 'postgres'
port_id = 5432
conn = None

try:
    with psycopg2.connect(
                host = hostname,
                dbname = database,
                user = username,
                password = pwd,
                port = port_id) as conn:

        with conn.cursor(cursor_factory=psycopg2.extras.DictCursor) as cur:
            #Aqui foi criado uma variavel recebendo o inserir atividade ao qual responde a questao A do numero 5
            create_insertion = "insert into atividade(descricao, codProjeto, dataInicio, dataFim) values('BD - Atividade 4', 3, '2022-06-29', '2022-06-30');"
            #Aqui foi criado um update de codresponsavel do projeto ao qual responde a questao B do numero 5
            create_update = "update projeto set codresponsavel = 2 where codigo = 1;"
            #Aqui foi criado o listar todos os projetos e suas atividades
            create_list = "select * from projeto p, atividade a where a.codprojeto = p.codigo; "
            cur.execute(create_insertion)
            cur.execute(create_update)
            cur.execute(create_list)
            row = cur.fetchone()
            while row:
                print(row)
                row = cur.fetchone()
          
except Exception as error:
    print(error)
finally:
    if conn is not None:
        conn.close()