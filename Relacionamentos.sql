# Curso MySQL - Explorando os relacionamentos com o Workbench. 
# Lidando com os relacionamentos
# Digital Innovation One
# 05.04.2022 - 20h46

USE ESTUDO;

# Inner join - leitura de multiplas tabelas.
# SELECT com INNER JOIN
# SELECT * from tabela_1 JOIN tabela_2 ON tabela_1.chave_estrangeira = tabela_2.chave_estrangeira

CREATE TABLE videos 
(
id_video INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
autor VARCHAR(30),
titulo VARCHAR(30),
likes INT,
dislikes INT
);

INSERT INTO videos (autor, titulo, likes, dislikes) VALUES ('Sergio', 'Praticando MySQL', 134, 5);
INSERT INTO videos (autor, titulo, likes, dislikes) VALUES ('Mariah', 'Python e Data Sciente', 1922, 534);
INSERT INTO videos (autor, titulo, likes, dislikes) VALUES ('Sergio', 'Linux', 13, 5);
INSERT INTO videos (autor, titulo, likes, dislikes) VALUES ('Pedro', 'JavaScript', 45, 12);
INSERT INTO videos (autor, titulo, likes, dislikes) VALUES ('Lara', 'Azure', 245909, 0);

UPDATE videos SET autor = "" WHERE id_video = 7;

SELECT * FROM videos;

CREATE TABLE autor
(
id_autor INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(30),
data_nascimento DATE
);

INSERT INTO autor (nome, data_nascimento) VALUES ('Pedro', '1999-05-05');
INSERT INTO autor (nome, data_nascimento) VALUES ('Lara', '2002-08-02');

SELECT * FROM autor;

# Alterando o tipo de dado da coluna autor, dentro da tabela videos.
# Antes, string, agora, INT. 
ALTER TABLE videos MODIFY COLUMN autor INT NOT NULL;

# Alterando o nome da coluna na tabela videos para ser uma FK. 
ALTER TABLE videos CHANGE autor id_autor INT NOT NULL;

UPDATE videos SET autor = 4 where id_video = 4;
SELECT * FROM videos;


