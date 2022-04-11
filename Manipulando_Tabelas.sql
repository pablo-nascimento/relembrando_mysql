# Curso MySQL - Trabalhando com as suas primeiras tabelas. 
# Trabalhando com SELECT
# Digital Innovation One
# 02.04.2022 - 20h46

# Selecionando o BD para uso.
USE ESTUDO;

# Inserindo mais dados para posterior manipulação
INSERT INTO pessoa(nome,nascimento) VALUES ('Teste_01','2022-03-31');
INSERT INTO pessoa(nome,nascimento) VALUES ('Teste_02','2022-04-30');
INSERT INTO pessoa(nome,nascimento,genero) VALUES ('ABC','2022-04-03','M');

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
UPDATE pessoa SET genero = 'F' WHERE id = 6;

# DELETE - Apagar dados. Uso semelhante ao do comando acima.
# DELETE from nome_tabela WHERE id = 1;
# Utilizar este comando com a condicional WHERE campo = condicao

# ORDER BY - Ordenacao dos dados de forma crescente, ou de forma decrescente.
# SELECT * FROM nome_tabela ORDER BY campo DESC;
# DESC - Clausula usada para ordenação de forma decrescente
SELECT * FROM pessoa ORDER BY nome;
SELECT * FROM pessoa ORDER BY nascimento DESC;


# Agrupamento - contar quantas informacoes atendem a um determinado critério.
# Clausula COUNT - usada para contar quantos campos atendem ao criterio de agrupamento.
SELECT count(id), genero FROM pessoa GROUP BY genero;

# Clausula ALTER TABLE - Alteracoes em tabelas já criadas.
# ALTER TABLE nome_tabela O_QUE SE QUER FAZER (ADD) nome_campo TIPO_DE_DADO(TAMANHO)
# NOT NULL ONDE_SE_QUER_COLOCAR_O_CAMPO(AFTER OU BEFORE, por exemplo) nome_campo
ALTER TABLE pessoa ADD genero VARCHAR(1) AFTER nascimento;

# ALTER TABLE para adicionar FK a coluna já criada.
# ALTER TABLE nome_tabela_fk(id_fk) ADD FOREIGN KEY (coluna_fk) REFERENCES nome_tabela_pk(id_pk);
ALTER TABLE videos ADD foreign key (id_autor) REFERENCES autor(id_autor);

# Select com JOIN. 
# SELECT * from tabela_1 JOIN tabela_2 ON tabela_1.id_pk = tabela_2.id_pk
SELECT * FROM videos JOIN autor ON videos.id_autor = autor.id_autor;
SELECT videos.titulo, autor.nome FROM videos JOIN autor ON videos.id_autor = autor.id_autor;

SELECT * FROM videos;
SELECT * FROM autor;
SELECT * FROM pessoa;
SELECT * FROM seo;

CREATE TABLE seo
(
id_seo INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
categoria VARCHAR(20)
);

# Alimentando a tabela SEO
INSERT INTO seo (categoria) VALUES ('Back-End');

DELETE FROM seo WHERE id_seo = 3;
#INSERT INTO videos (id_autor, titulo, likes, dislikes) VALUES

ALTER TABLE videos drop id_seo; # INT NOT NULL;
ALTER TABLE videos ADD FOREIGN KEY (id_seo) REFERENCES seo(id_seo);



