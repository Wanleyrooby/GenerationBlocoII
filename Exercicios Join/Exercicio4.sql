CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
id BIGINT NOT NULL AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
codigo INT,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(tipo,codigo)
VALUES("Frango", 123456);

INSERT INTO tb_categorias(tipo,codigo)
VALUES("Carne de boi", 789456);

INSERT INTO tb_categorias(tipo,codigo)
VALUES("Carne de porco", 456879);

INSERT INTO tb_categorias(tipo,codigo)
VALUES("Peixe", 258741);

INSERT INTO tb_categorias(tipo,codigo)
VALUES("Linguiça", 369741);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT, 
dtvalidade DATE NULL,
preco DECIMAL(6, 2),
categoria_id BIGINT, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("Peito de frango",5000, "2022-06-30", 19.99, 1); 

INSERT INTO tb_produtos (nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("Coxa e Sobrecoxa",9000, "2022-06-30", 17.99, 1); 

INSERT INTO tb_produtos (nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("Frango Especial",5000, "2022-06-30", 59.99, 1); 

INSERT INTO tb_produtos (nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("Alcatra",5000, "2022-06-30", 39.99, 2 ); 

INSERT INTO tb_produtos (nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("Coxao mole",5000, "2022-06-30", 37.99, 2); 

INSERT INTO tb_produtos (nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("File de peixe",4000, "2022-06-30", 60.99, 4); 

INSERT INTO tb_produtos (nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("Linguiça Calabresa",5000, "2022-06-30", 19.99, 5); 

INSERT INTO tb_produtos (nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("Bisteca",7000, "2022-06-30", 18.99, 3 ); 

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT nome,quantidade,dtvalidade,preco,tb_categorias.tipo FROM tb_produtos 
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;