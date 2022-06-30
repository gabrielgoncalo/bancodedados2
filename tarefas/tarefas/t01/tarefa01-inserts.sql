insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto) values('gabriel', 'H', '1997-09-23', 5000.00, 1);
insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto) values('joao', 'H', '2001-08-31', 1500.00, 2);
insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto) values('cintia', 'M', '1971-09-07', 3000.00, 3);
insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto) values('maria', 'M', '1969-05-10', 3000.00, 4);
insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto) values('alex', 'H', '1955-02-24', 1500.00, 5);




insert into departamento(descricao, cod_gerente) values('administração', 1);
insert into departamento(descricao, cod_gerente) values('marketing', 2);
insert into departamento(descricao, cod_gerente) values('analise', 3);
insert into departamento(descricao, cod_gerente) values('desenvolvimento', 4);
insert into departamento(descricao, cod_gerente) values('teste', 5);

insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio) values('gerenciar', 'gerenciar equipe', 1, 1, '2022-05-08');
insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio) values('', '', 1, 1, '2022-05-08');
insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio) values('', '', 1, 1, '2022-05-08');
insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio) values('', '', 1, 1, '2022-05-08');
insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio) values('', '', 1, 1, '2022-05-08');

insert into atividade(nome, descricao, cod_responsavel, data_inicio) values('', '', 1, '2022-05-08');
insert into atividade(nome, descricao, cod_responsavel, data_inicio) values('Análise do uso dos canais de comunicação pela população', 'Pesquisar indicadores e métricas estatísticas a respeito do uso de cada canal de comunicação', 2, '2022-05-08');
insert into atividade(nome, descricao, cod_responsavel, data_inicio) values('Contratação de professores capacitados para ofertar os cursos necessários', 'Buscar professores que dominam os temas mais atuais de cada área do conhecimento e contrata-los', 3, '2022-05-08');
insert into atividade(nome, descricao, cod_responsavel, data_inicio) values('Projeto e Implementação da Topologia de Rede', 'Realizar o design da topologia de rede que será aplicada à nova infraestrutura', 4, '2022-05-08');
insert into atividade(nome, descricao, cod_responsavel, data_inicio) values('Elaborar um plano de implementação incremental para as novas fontes de energia', 'Instalar e configurar gradativamente os paineis fotovoltaicos', 5, '2022-05-08');

insert into atividade_projeto(cod_projeto, cod_atividade) values(1, 1);
insert into atividade_projeto(cod_projeto, cod_atividade) values(2, 2);
insert into atividade_projeto(cod_projeto, cod_atividade) values(3, 3);
insert into atividade_projeto(cod_projeto, cod_atividade) values(4, 4);
insert into atividade_projeto(cod_projeto, cod_atividade) values(5, 5);

