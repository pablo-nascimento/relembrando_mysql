# Curso MySQL - Trabalhando com as suas primeiras tabelas. 
# Digital Innovation One
# 02.04.2022 - 19h45

# Criando o BD para estudo.
CREATE DATABASE ESTUDO;

# Selecionando o BD criado acima para uso.
USE ESTUDO;

# Criando Tabelas
CREATE TABLE pessoa
(
id INT NOT NULL PRIMARY KEY auto_increment,
nome VARCHAR(20),
nascimento DATE
);

# Deletando a Tabela. Foi criada sem uma PK
DROP TABLE pessoa;

# Inserindo dados na tabela
# Comando INSERT INTO nome_tabela(coluna_1, coluna_2) VALUES('nome_pessoa', nascimento)
INSERT INTO pessoa(nome,nascimento) VALUES('Pablo Nascimento', '1991-08-14');

# Comando SELECT - visualizar os dados já salvos. 
SELECT * FROM pessoa;


