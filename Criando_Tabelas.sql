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
nome VARCHAR(20),
nascimento DATE
)