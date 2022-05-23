CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
data_nascimento DATE,
uniforme BOOLEAN,
salario DECIMAL NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome,data_nascimento,uniforme,salario)
VALUES ("Jean Silva","1996-02-17",true,1999.56);

INSERT INTO tb_colaboradores(nome,data_nascimento,uniforme,salario)
VALUES ("Diana Silva","1999-02-17",true,2100.56);

INSERT INTO tb_colaboradores(nome,data_nascimento,uniforme,salario)
VALUES ("Joao Felix","2000-05-07",true,3500.00);

INSERT INTO tb_colaboradores(nome,data_nascimento,uniforme,salario)
VALUES ("Aline Silva","1996-02-17",true,1700.56);

INSERT INTO tb_colaboradores(nome,data_nascimento,uniforme,salario)
VALUES ("Vanessa Santos","1990-02-17",false,5000.00);

ALTER TABLE tb_colaboradores MODIFY salario DECIMAL(7,2);

SELECT nome,data_nascimento,uniforme,salario FROM tb_colaboradores WHERE salario>2000;

SELECT nome,data_nascimento,uniforme,salario FROM tb_colaboradores WHERE salario<2000;

UPDATE tb_colaboradores SET salario=2200.50 WHERE id=1;



