CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT NOT NULL AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(tipo,descricao)
VALUES("Beleza", "Hidrataçao");

INSERT INTO tb_categorias(tipo,descricao)
VALUES("Dermos-Cosmetico", "Protetor-Solar");

INSERT INTO tb_categorias(tipo,descricao)
VALUES("Fitness", "Energetico");

INSERT INTO tb_categorias(tipo,descricao)
VALUES("Medicamentos", "Asmaticos");

INSERT INTO tb_categorias(tipo,descricao)
VALUES("Saude", "Vitaminas");

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
VALUES("Esteroide", 200, "2023-02-20", 70.99, 4);

INSERT INTO tb_produtos (nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("Bronquilex", 1000, "2024-12-10", 49.99, 4);

INSERT INTO tb_produtos (nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("Loçao hidratante", 200, "2023-09-24", 50.99, 1);

INSERT INTO tb_produtos (nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("Creme desodorante corporal", 500, "2025-12-01", 29.99, 1);

INSERT INTO tb_produtos (nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("Vitamina C pura", 100, "2024-11-20", 25.99, 5);

INSERT INTO tb_produtos (nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("Kit protetor solar", 800, "2025-02-01", 59.99, 2);

INSERT INTO tb_produtos (nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("KOGNUS Suplemento Alimentar", 600, "2025-02-10", 99.99, 3);

INSERT INTO tb_produtos (nome,quantidade,dtvalidade,preco,categoria_id)
VALUES("ALPHA MEN Multivitaminico", 400, "2026-12-31", 70.99, 5);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT nome,quantidade,dtvalidade,preco,tb_categorias.tipo FROM tb_produtos 
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;


