CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT NOT NULL AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
codigo INT(11),
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(tipo,codigo)
VALUES("Broto",132465);

INSERT INTO tb_categorias(tipo,codigo)
VALUES("Pequena",789465);

INSERT INTO tb_categorias(tipo,codigo)
VALUES("Media",568792);

INSERT INTO tb_categorias(tipo,codigo)
VALUES("Grande",568258);

INSERT INTO tb_categorias(tipo,codigo)
VALUES("Extra Grande",824792);

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT,
dtvalidade DATE NOT NULL,
preco DECIMAL(6,2),
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas(nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("Calabresa",2,"2022-05-25",33.99,4);

INSERT INTO tb_pizzas(nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("Frango",1,"2022-05-25",39.99,4);

INSERT INTO tb_pizzas(nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("Atum",3,"2022-05-25",19.99,1);

INSERT INTO tb_pizzas(nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("Peperoni",2,"2022-05-25",48.99,4);

INSERT INTO tb_pizzas(nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("Mussarela",4,"2022-05-25",33.99,2);

INSERT INTO tb_pizzas(nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("4 Queijos",2,"2022-05-25",89.99,5);

INSERT INTO tb_pizzas(nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("Bauru",3,"2022-05-25",30.99,4);

INSERT INTO tb_pizzas(nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("Napolitano",2,"2022-05-25",99.99,5);

SELECT *FROM tb_pizzas WHERE preco>45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id=tb_categorias.id;

SELECT nome,preco,tb_categorias.tipo FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id=tb_categorias.id;

