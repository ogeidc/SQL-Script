-- este é o bando de dados da loja de ecommerce que vende produtos de sobrevivência

CREATE DATABASE db_ecommerce;
-- criando um bando de dados 
USE db_ecommerce;
-- usando esse banco de dados anteriormente criado
CREATE TABLE tb_produtos (
-- criando a tabela
id BIGINT auto_increment,
produto VARCHAR(255),
peso DECIMAL(9, 2),
preco DECIMAL(9,2),
origem VARCHAR(255),
validade VARCHAR(255),

primary key (id)


);
-- mostrando a tabela
SELECT * FROM tb_produtos;
-- inserindo dados dentro da tabela
INSERT INTO tb_produtos (produto, peso, preco, origem, validade) VALUES ("Pederneira", 0.20, 36.90, "China", "Dois anos"); 
INSERT INTO tb_produtos (produto, peso, preco, origem, validade) VALUES ("Bússola Profissional", 0.10, 17.50, "Taiwan", "Dois anos");
INSERT INTO tb_produtos (produto, peso, preco, origem, validade) VALUES ("Canivete Tático de Sobrevivência", 0.30, 67.06,"China", "Três anos");
INSERT INTO tb_produtos (produto, peso, preco, origem, validade) VALUES ("Redinha de Pesca Lambari", 0.50, 35.50, "Jales-SP", "Cinco anos");
INSERT INTO tb_produtos (produto, peso, preco, origem, validade) VALUES ("Manta Térmica Aluminizada", 0.40, 48.00, "Taiwan", "Quatro anos");
INSERT INTO tb_produtos (produto, peso, preco, origem, validade) VALUES ("Kit de Primeiros Socorros Completo", 1.20, 78.85, "China","Seis meses");
INSERT INTO tb_produtos (produto, peso, preco, origem, validade) VALUES ("Filtro de água e purificador portátil", 1.40, 119.89, "Coréia do Sul", "Um ano");
INSERT INTO tb_produtos (produto, peso, preco, origem, validade) VALUES ("Cantil de Alumínio", 0.90, 83.61, "São Paulo", "Dois anos");
INSERT INTO tb_produtos (produto, peso, preco, origem, validade) VALUES ("Panelas de Acampamento", 0.23, 138.00,"China", "Três Anos" );

