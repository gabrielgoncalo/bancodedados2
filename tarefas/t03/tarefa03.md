# resumo ODBC
O ODBC(Open Database Connectivity) nada mais é que um protocolo onde é usado para conectar um banco de dados do microsoft access a uma fonte externa. O ODBC usa drivers para operarem uma camada de tradução entre a aplicação e o SGBD. A utilização do ODBC permite ao usuario utilizar simultaneamente o mysq, access e o sql server com pouca mudança na camada de dados. Foi utilizado o driver psycopg2.

# resumo ORM
É uma técnica para aproximar o paradigma de e aplicações orientadas a objetos ao paradigma do banco de dados relacional. É utilizado uma biblioteca ou um framework para ajuda no mapeamento. Um dos padrões que posso dar como exemplo é o active record, nele a classe que representa a tabela conhece os recursos necessários para realizar as transações no banco de dados, geralmente ela herda uma classe com todos esses comportamentos. Escolhi a linguagem python. O ORM do python é fornecido com construções especiais de abstração que podem ser usadas para criar consultas complexas ao banco de dados. Em outras palavras, no lugar de realizar uma ação direta no banco de dados com código SQL por exemplo, utilizamos o ORM como ponte de comunicação entre o banco e a aplicação. Foi utilizado o framework SqlAlchemy(python).




