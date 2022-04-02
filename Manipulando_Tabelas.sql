# Curso MySQL - Trabalhando com as suas primeiras tabelas. 
# Trabalhando com SELECT
# Digital Innovation One
# 02.04.2022 - 20h46

# Selecionando o BD para uso.
USE ESTUDO;

# Inserindo mais dados para posterior manipulação
INSERT INTO pessoa(nome,nascimento) VALUES ('Teste_01','2022-03-31');
INSERT INTO pessoa(nome,nascimento) VALUES ('Teste_02','2022-04-30');
INSERT INTO pessoa(nome,nascimento) VALUES ('Teste_003','2022-04-01');

# Trabalhando com SELECT
# SELECT * FROM nome_tabela
SELECT * FROM pessoa;

# SELECT com apenas um dos campos.
# SELECT nome_campo FROM nome_tabela.
SELECT nome FROM pessoa;
SELECT id, nome FROM pessoa;
SELECT nome, nascimento FROM pessoa;
