drop table if exists postgres.public.funcionario cascade;
drop table if exists postgres.public.departamento cascade;
drop table if exists postgres.public.projeto cascade;
drop table if exists postgres.public.atividade cascade;
drop table if exists postgres.public.atividade_projeto cascade;


CREATE TABLE if not exists postgres.public.funcionario (
    codigo SERIAL,
	nome varchar(50),
	sexo char(1),
	dt_nasc date,
	salario decimal(10,2),
	cod_depto int,
	PRIMARY KEY (codigo));

CREATE TABLE if not exists postgres.public.departamento (
	codigo SERIAL,
	descricao varchar(50),
	cod_gerente int,
	PRIMARY KEY (codigo)
	
);

CREATE TABLE if not exists postgres.public.projeto (
	codigo SERIAL,
	nome varchar(50),
	descricao varchar(250),
	cod_responsavel int,
	cod_depto int,
	data_Inicio date, 
	data_Fim date,
	PRIMARY KEY (codigo)
	
);

CREATE TABLE if not exists postgres.public.atividade (
	codigo SERIAL,
    nome varchar(50),
	descricao varchar(250),
	cod_responsavel int,
	data_Inicio date, 
	data_Fim date,
	PRIMARY KEY (codigo)
	
);

CREATE TABLE if not exists postgres.public.atividade_projeto (
    cod_projeto int not null,
    cod_atividade int not null,
    constraint pk_atividade_projeto PRIMARY KEY(cod_projeto, cod_atividade)

);

                                /*CHAVES ESTRANGEIRAS*/
/* funcionario*/
alter table funcionario add foreign KEY(cod_depto) references departamento(codigo) on delete set null on update cascade;
/* departamento*/
alter table departamento add foreign KEY(cod_gerente) references funcionario(codigo) on delete set null on update cascade;
/*projeto*/
alter table projeto add foreign KEY(cod_responsavel) references funcionario(codigo) on delete set null on update cascade;
alter table projeto add foreign KEY(cod_depto) references departamento(codigo) on delete set null on update cascade;
/*atividade*/
alter table atividade add foreign key(cod_responsavel) references funcionario(codigo) on delete set null on update cascade;
/*atividade projeto*/
alter table atividade_projeto add foreign key(cod_projeto) references projeto(codigo) on delete set null on update cascade;
alter table atividade_projeto add foreign key(cod_atividade) references atividade(codigo) on delete set null on update cascade;


