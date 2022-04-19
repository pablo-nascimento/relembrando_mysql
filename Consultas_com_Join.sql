# Curso MySQL - Trabalhando com as suas primeiras tabelas. 
# Consultas com JOIN
# Digital Innovation One
# 18.04.2022 - 19h51

# Criando novo database para estudo
CREATE DATABASE CONSULTA;

USE CONSULTA;

# Criando novas tabelas
CREATE TABLE canais
(
id_canal INT(11) NOT NULL,
nome_canal VARCHAR(100) NOT NULL
);

# Inserindo novos dados nestas tabelas.
INSERT INTO `canais` (`id_canal`, `nome_canal`) VALUES
(1, 'React'),
(2, 'PHP'),
(3, 'CSS'),
(4, 'HTML');

CREATE TABLE videos
(
id_video INT(11) NOT NULL,
nome_video VARCHAR(100) NOT NULL,
autor_video VARCHAR(100) NOT NULL
);

INSERT INTO `videos` (`id_video`, `nome_video`, `autor_video`) VALUES
(1, 'Login com React', 'React'),
(2, 'Componentes com React', 'React'),
(3, 'Listas com PHP', 'PHP'),
(4, 'Funções com PHP', 'PHP'),
(5, 'Páginas com HTML', 'HTML');

CREATE TABLE videos_canais
(
id_videos_canais INT(11) NOT NULL,
id_canal INT(11) NOT NULL,
id_video INT(11) NOT NULL
);

INSERT INTO `videos_canais` (`id_videos_canais`, `id_canal`, `id_video`) VALUES
(1, 2, 4),
(2, 2, 3),
(3, 1, 1),
(4, 1, 2),
(5, 4, 5);

# Alterando campos de nome id, para serem chaves primárias (PK)
ALTER TABLE videos ADD PRIMARY KEY (id_video);
ALTER TABLE canais ADD PRIMARY KEY (id_canal);
ALTER TABLE videos_canais ADD PRIMARY KEY (id_videos_canais);

# Adicionando AUTO INCREMENT as chaves primárias
# = 6 - iniciando do 6, 7, em diante. 
ALTER TABLE videos MODIFY id_video INT (11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 6;
ALTER TABLE canais MODIFY id_canal INT (11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 5;
ALTER TABLE videos_canais MODIFY id_videos_canais INT (11) NOT NULL, AUTO_INCREMENT = 6;

# Adicionando as chaves estrangeiras.
ALTER TABLE videos_canais ADD FOREIGN KEY (id_canal) REFERENCES canais(id_canal);
ALTER TABLE videos_canais ADD FOREIGN KEY(id_video) REFERENCES videos(id_video);

# Consultas das tabelas feitas de forma individual.
SELECT * FROM videos_canais;
SELECT * FROM videos;
SELECT * FROM canais;

# Consultas de várias tabelas.
SELECT * FROM videos_canais JOIN videos ON videos.id_video = videos_canais.id_video;

# Consultando duas tabelas
SELECT * FROM videos_canais JOIN videos ON videos.id_video = videos_canais.id_video
JOIN canais ON videos_canais.id_canal = canais.id_canal;

# Consultando tres tabelas.
SELECT videos.nome_video, videos.autor_video, canais.nome_canal 
FROM videos_canais
JOIN videos ON videos_canais.id_video = videos.id_video 
JOIN canais ON videos_canais.id_canal = canais.id_canal;

# INNER JOIN - Consultas que retornam valores presentes na consulta, nao trazendo valores nulos.
# OUTER JOIN - Traz toda a consulta, incluindo a consulta que nao possui relacionamento no BD.
# LEFT JOIN - Para consultas com tabelas a esquerda, que nao possuem relacionamento.
# RIGHT JOIN - Para consultas com tabelas a direita, que nao possuem relacionamento.

# Consulta com RIGHT JOIN
SELECT * FROM videos_canais RIGHT JOIN videos ON videos_canais.id_video = videos.id_video;
SELECT * FROM videos_canais RIGHT OUTER JOIN videos ON videos_canais.id_video = videos.id_video;

# Clausula UNION - Unir duas consultas
SELECT videos.id_video, videos.nome_video FROM videos LEFT OUTER JOIN videos_canais 
ON videos_canais.id_video = videos.id_video
UNION 
SELECT canais.id_canal, canais.nome_canal FROM canais LEFT OUTER JOIN videos_canais
ON videos_canais.id_canal = canais.id_canal;

# Consultas multiplas com a Clausula WHERE. 
SELECT * FROM videos_canais JOIN videos ON videos_canais.id_video = videos.id_video
JOIN canais ON videos_canais.id_canal = canais.id_canal WHERE canais.id_canal = 2;




