# Curso MySQL - Trabalhando com as suas primeiras tabelas. 
# Trabalhando com SELECT
# Digital Innovation One
# 02.04.2022 - 20h46

# Selecionando o BD para uso.
USE ESTUDO;

# Inserindo mais dados para posterior manipulação
INSERT INTO pessoa(nome,nascimento) VALUES ('Teste_01','2022-03-31');
INSERT INTO pessoa(nome,nascimento) VALUES ('Teste_02','2022-04-30');
INSERT INTO pessoa(nome,nascimento) VALUES ('AB','2022-04-03');

# Trabalhando com SELECT
# SELECT * FROM nome_tabela
SELECT * FROM pessoa;

# SELECT com apenas um dos campos.
# SELECT nome_campo FROM nome_tabela.
SELECT nome FROM pessoa;
SELECT id, nome FROM pessoa;
SELECT nome, nascimento FROM pessoa;

# UPDATE - Atualizando informações na tabela
# clausula WHERE - usada, para neste caso, indicar o campo onde se quer atualizar.
# UPDATE nome_tabela SET nome_campo = 'dado_para_atualizar' WHERE id = 1
UPDATE pessoa SET nome = 'Pablito' WHERE id = 2;

# DELETE - Apagar dados. Uso semelhante ao do comando acima.
# DELETE from nome_tabela WHERE id = 1;
# Utilizar este comando com a condicional WHERE campo = condicao

# ORDER BY - Ordenacao dos dados de forma crescente, ou de forma decrescente.
# SELECT * FROM nome_tabela ORDER BY campo DESC;
# DESC - Clausula usada para ordenação de forma decrescente
SELECT * FROM pessoa ORDER BY nome;
SELECT * FROM pessoa ORDER BY nascimento DESC;






