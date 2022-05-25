CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
descricao VARCHAR(255) NOT NULL,
regiao VARCHAR(15),
PRIMARY KEY(id) 
);

INSERT tb_classes(descricao,regiao)
VALUES("Ouro","Norte");

INSERT tb_classes(descricao,regiao)
VALUES("Prata","Nordeste");

INSERT tb_classes(descricao,regiao)
VALUES("Bronze","Centro-Oeste");

INSERT tb_classes(descricao,regiao)
VALUES("Diamante","Sudeste");

INSERT tb_classes(descricao,regiao)
VALUES("Platinum","Sul");

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
poderdefesa INT,
poderataque INT,
saude INT,
classe_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens(nome,poderdefesa,poderataque,saude,classe_id)
VALUES("Avatar",700,2000,90,2);

INSERT INTO tb_personagens(nome,poderdefesa,poderataque,saude,classe_id)
VALUES("Shaiwa",5000,4000,80,3);

INSERT INTO tb_personagens(nome,poderdefesa,poderataque,saude,classe_id)
VALUES("Amspid",900,5000,90,5);

INSERT INTO tb_personagens(nome,poderdefesa,poderataque,saude,classe_id)
VALUES("Gaspar",300,800,80,1);

INSERT INTO tb_personagens(nome,poderdefesa,poderataque,saude,classe_id)
VALUES("Iron",6000,999,90,4);

INSERT INTO tb_personagens(nome,poderdefesa,poderataque,saude,classe_id)
VALUES("Spida",7000,6000,100,3);

INSERT INTO tb_personagens(nome,poderdefesa,poderataque,saude,classe_id)
VALUES("Rock",4000,8000,80,2);

INSERT INTO tb_personagens(nome,poderdefesa,poderataque,saude,classe_id)
VALUES("Wall",300,200,90,4);

SELECT * FROM tb_personagens; 

SELECT * FROM tb_personagens WHERE poderataque>2000;

SELECT * FROM tb_personagens 
WHERE poderdefesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON
tb_personagens.classe_id = tb_classes.id;

SELECT nome,poderdefesa,poderataque,saude,tb_classes.descricao FROM tb_personagens 
INNER JOIN tb_classes ON
tb_personagens.classe_id = tb_classes.id;