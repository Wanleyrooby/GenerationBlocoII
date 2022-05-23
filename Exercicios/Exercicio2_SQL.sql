CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT,
data_validade DATE,
preço DECIMAL(6,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome,quantidade,data_validade,preço)
VALUES("Mochila",20,Null,100.00);

INSERT INTO tb_produtos(nome,quantidade,data_validade,preço)
VALUES("Notebook Dell",12,Null,3999.99);

INSERT INTO tb_produtos(nome,quantidade,data_validade,preço)
VALUES("Samsung S20 FE",30,Null,2100.00);

INSERT INTO tb_produtos(nome,quantidade,data_validade,preço)
VALUES("Livro Harry Potter",3,Null,100.00);

INSERT INTO tb_produtos(nome,quantidade,data_validade,preço)
VALUES("TV samsung ",23,Null,2000.00);

INSERT INTO tb_produtos(nome,quantidade,data_validade,preço)
VALUES("Iphone 12",1,Null,4500.00);

INSERT INTO tb_produtos(nome,quantidade,data_validade,preço)
VALUES("Camiseta",30,Null,50.00);

INSERT INTO tb_produtos(nome,quantidade,data_validade,preço)
VALUES("vestido",50,Null,80.90);

SELECT nome,quantidade,preço FROM tb_produtos WHERE preço>500;

SELECT nome,quantidade,preço FROM tb_produtos WHERE preço<500;

UPDATE tb_produtos SET preço=2299.99 WHERE id=3;
