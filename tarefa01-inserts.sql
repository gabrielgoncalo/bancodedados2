insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto) values('gabriel', 'H', '04-01-1999', 5000.00, 1);
insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto) values('joao', 'H', '04-02-1999', 1500.00, 2);
insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto) values('cintia', 'M', '04-03-2005', 3000.00, 3);
insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto) values('maria', 'M', '04-04-1997', 3000.00, 4);
insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto) values('alex', 'H', '04-05-2002', 1500.00, 5);

insert into departamento(descricao, cod_gerente) values('administração', 1);
insert into departamento(descricao, cod_gerente) values('marketing', 2);
insert into departamento(descricao, cod_gerente) values('analise', 3);
insert into departamento(descricao, cod_gerente) values('desenvolvimento', 4);
insert into departamento(descricao, cod_gerente) values('teste', 5);

insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio) values('AD', 'gerenciar equipe', 1, 1, '04-01-2020');
insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio) values('MA', 'expandir o marketing', 2, 2, '04-01-2020');
insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio) values('AN', 'analisar o sistema', 3, 3, '04-01-2020');
insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio) values('DE', 'desenvolver o sistema', 4, 4, '04-01-2020');
insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio) values('TE', 'testar o sistema', 5, 5, '04-01-2020');

insert into atividade(nome, descricao, cod_responsavel, data_inicio) values('atv1', 'fazer atividade 1', 4, '04-01-2020');
insert into atividade(nome, descricao, cod_responsavel, data_inicio) values('atv2', 'fazer atividade 2', 4, '04-01-2020');
insert into atividade(nome, descricao, cod_responsavel, data_inicio) values('atv3', 'fazer atividade 3', 4, '04-01-2020');
insert into atividade(nome, descricao, cod_responsavel, data_inicio) values('atv4', 'fazer atividade 4', 4, '04-01-2020');
insert into atividade(nome, descricao, cod_responsavel, data_inicio) values('atv5', 'fazer atividade 5', 4, '04-01-2020');

insert into atividade_projeto(cod_projeto, cod_atividade) values(4, 1);
insert into atividade_projeto(cod_projeto, cod_atividade) values(4, 2);
insert into atividade_projeto(cod_projeto, cod_atividade) values(4, 3);
insert into atividade_projeto(cod_projeto, cod_atividade) values(4, 4);
insert into atividade_projeto(cod_projeto, cod_atividade) values(4, 5);