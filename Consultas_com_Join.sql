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





