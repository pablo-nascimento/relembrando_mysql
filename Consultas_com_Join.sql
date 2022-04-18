# Curso MySQL - Trabalhando com as suas primeiras tabelas. 
# Consultas com JOIN
# Digital Innovation One
# 18.04.2022 - 19h51

CREATE DATABASE CONSULTA;

USE CONSULTA;

CREATE TABLE canais
(
id_canal INT(11) NOT NULL,
nome_canal VARCHAR(100) NOT NULL
);

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





