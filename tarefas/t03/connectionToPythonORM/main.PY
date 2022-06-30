from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from sqlalchemy_utils import database_exists, create_database
from local_settings import postgresql as settings

def get_engine(user, passwd, host, port, db):
    url = f"postgresql://{user}:{passwd}@{host}:{port}/{db}"
    if not database_exists(url):
        create_database(url)
    engine = create_engine(url, pool_size=50, echo=False)
    return engine
engine = get_engine(settings['pguser'],
                    settings['pgpasswd'],
                    settings['pghost'],
                    settings['pgport'],
                    settings['pgdb'])

engine.url.database

def get_engine_from_settings():
    keys = ['pguser', 'pgpasswd', 'pghost', 'pgport', 'pgdb']
    if not all(key in keys for key in settings.keys()):
        raise Exception('Bad config file')
    return get_engine(settings['pguser'],
                settings['pgpasswd'],
                settings['pghost'],
                settings['pgport'],
                settings['pgdb'])

Session = sessionmaker(bind=engine)
session = Session()
#Aqui foi criado uma variavel recebendo o inserir atividade ao qual responde a questao A do numero 6
session.execute("insert into atividade(descricao, codProjeto, dataInicio, dataFim) values('BD - Atividade 5', 3, '2022-06-29', '2022-06-30');")
#Aqui foi criado um update de codresponsavel do projeto ao qual responde a questao B do numero 5
session.execute("update projeto set codresponsavel = 2 where codigo = 1;")
#Aqui foi criado o listar todos os projetos e suas atividades
result = session.execute("select * from projeto p, atividade a where a.codprojeto = p.codigo;")
for row in result:
    print(row)

session.commit()



 # Close all checked in sessions
