-- criando banco de dados
CREATE DATABASE db_generation_game_online;
-- usando banco de dados
USE db_generation_game_online;
-- comandos para esvaziar as tabelas
DROP TABLE tb_classes;
DROP TABLE tb_personagens;
-- criar tabela classe
CREATE TABLE tb_classes(
id BIGINT auto_increment,
nome_classe VARCHAR(255),
descricao VARCHAR(255),
PRIMARY KEY (id)

);
-- criar tabela personagens
CREATE TABLE tb_personagens(
id BIGINT auto_increment,
nome VARCHAR (255),
sobrenome VARCHAR (255),
item VARCHAR (255),
hp BIGINT,
mana BIGINT,
classe_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)

);
-- inserindo nome das classes e descrição 
INSERT INTO tb_classes(nome_classe, descricao) VALUES ("Hobbit", " Possuem metade da estatura de um humano, orelhas pontiagudas, pés enormes e peludos. São conhecidos pelo apego ao lar e a pouca disposição para aventuras."); 
INSERT INTO tb_classes(nome_classe, descricao) VALUES ("Humano", "A raça Homem é uma das várias raças que habitam a Terra Média. Homens ganharam o Dom dos Homens, que é a mortalidade, e, portanto, envelhecem e morrem, e são suscetíveis a doenças e enfermidades.");
INSERT INTO tb_classes(nome_classe, descricao) VALUES ("Mago", "Os magos, também chamado de Istari, são divididos conforme suas cores.");
INSERT INTO tb_classes(nome_classe, descricao) VALUES("Anão", "Anões são uma raça de seres que habitam Arda, a Terra pré-histórica que inclui o continente da Terra Média. Os anões são geralmente ferreiros ou mineradores.");
INSERT INTO tb_classes(nome_classe, descricao) VALUES("Elfo","Os Elfos são descritos como altos e belos, parecidos com os Valar (espécie de anjos), só que menores em estatura e poder, e são imortais, pelos menos enquanto o Mundo, chamado Arda, existir.");
INSERT INTO tb_classes(nome_classe, descricao) VALUES("Orc", "estúpidos, são retratados como seres infelizes, que odeiam todos, incluindo a si mesmos e aos seus mestres, que servem por medo. São incapazes de fazer coisas belas como os Elfos, mas conseguem criar instrumentos para ferir e destruir.");

-- inserindo dados na tabela personagem com seus atributos
INSERT INTO tb_personagens(nome, sobrenome, item, hp, mana, classe_id) VALUES("Frodo", "Bolseiro", "anel", 250, 300, 1);
INSERT INTO tb_personagens(nome, sobrenome, item, hp, mana, classe_id) VALUES("Aragorn","Filho de Arathorn", "espada", 500, 100, 3);
INSERT INTO tb_personagens(nome, sobrenome, item, hp, mana, classe_id) VALUES("Gandalf", "O cinzento", "cajado", 330, 700, 2);
INSERT INTO tb_personagens(nome, sobrenome, item, hp, mana, classe_id) VALUES("Gimli", "Filho de Glóin", "machado", 700, 100, 4);
INSERT INTO tb_personagens(nome, sobrenome, item, hp, mana, classe_id) VALUES("Légolas", "Príncipe do Reino da Floresta", "arco e flecha", 300, 400, 5);
INSERT INTO tb_personagens(nome, sobrenome, item, hp, mana, classe_id) VALUES("Bilbo", "Bolseiro", "anel", 300, 300, 1);
INSERT INTO tb_personagens(nome, sobrenome, item, hp, mana, classe_id) VALUES("Galadriel", "Filha de Finarfin", "harpa", 400, 800, 5);
INSERT INTO tb_personagens(nome, sobrenome, item, hp, mana, classe_id) VALUES("Boromir", "Filho de Denethor", "punhal", 550, 50, 3);
INSERT INTO tb_personagens(nome, sobrenome, item, hp, mana, classe_id) VALUES("Thorin","Escudo-de-Carvalho", "martelo", 750, 75, 4);
INSERT INTO tb_personagens(nome, sobrenome, item, hp, mana, classe_id) VALUES("Saruman","O Branco", "cajado", 300, 750, 2);
INSERT INTO tb_personagens(nome, sobrenome, item, hp, mana, classe_id) VALUES("Leomorn","Hawklight", "punhal", 250, 350, 6);
INSERT INTO tb_personagens(nome, sobrenome, item, hp, mana, classe_id) VALUES("Sauron", "O Necromante", "anel", 700, 400, 2);
INSERT INTO tb_personagens(nome, sobrenome, item, hp, mana, classe_id) VALUES("Smeagól", "Gollum","anel", 220, 190, 1);
INSERT INTO tb_personagens(nome, sobrenome, item, hp, mana, classe_id) VALUES("Radagast", "O Castanho", "cajado", 400, 800, 2);
-- comando para mostrar tabela personagens
SELECT * FROM tb_personagens;
-- comando para mostrar tabela classes
SELECT * FROM tb_classes;
-- comando para selecionar personagens com hp menor ou igual do que 330
SELECT * FROM tb_personagens 
WHERE hp <= 330;
-- comando para selecionar personagens com hp maior ou igual a 330
SELECT * FROM tb_personagens 
WHERE hp >= 330;
-- selecionar personagens cujo nome comece com a letra G
SELECT * FROM tb_personagens
WHERE nome LIKE "G%";
-- unindo todos os dados
SELECT tb_personagens.nome FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id;
-- unindo apenas os dados dos elfos
SELECT tb_personagens.nome FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id and tb_classes.nome_classe = "Elfo";
-- unindo apenas os dados dos humanos
SELECT tb_personagens.nome FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id and tb_classes.nome_classe = "Humano";
-- unindo apenas os dados dos magos
SELECT tb_personagens.nome FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id and tb_classes.nome_classe = "Mago";
-- unindo apenas os dados dos anões
SELECT tb_personagens.nome FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id and tb_classes.nome_classe = "Anão";
-- unindo apenas os dados dos hobbits
SELECT tb_personagens.nome FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id and tb_classes.nome_classe = "Hobbit";
-- unindo apenas os dados dos Orcs 
SELECT tb_personagens.nome FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id and tb_classes.nome_classe = "Orc";
