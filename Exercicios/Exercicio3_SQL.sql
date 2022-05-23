CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
idade INT NOT NULL,
sexo VARCHAR(1) NOT NULL, 
nota DECIMAL(4,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_estudantes(nome,idade,sexo,nota)
VALUES("Aline Santos",14,"F",7.99);

INSERT INTO tb_estudantes(nome,idade,sexo,nota)
VALUES("Marcos Santos",15,"M",6.99);

INSERT INTO tb_estudantes(nome,idade,sexo,nota)
VALUES("Daina Silva",13,"F",8.70);

INSERT INTO tb_estudantes(nome,idade,sexo,nota)
VALUES("Jean Da Silva",14,"M",5.59);

INSERT INTO tb_estudantes(nome,idade,sexo,nota)
VALUES("Sara Pires",15,"F",9.29);

INSERT INTO tb_estudantes(nome,idade,sexo,nota)
VALUES("Henrique Barbosa",13,"M",7.59);

INSERT INTO tb_estudantes(nome,idade,sexo,nota)
VALUES("Agatha Magalhaes",14,"F",8.99);

INSERT INTO tb_estudantes(nome,idade,sexo,nota)
VALUES("Ricky Santos",16,"M",5.99);

SELECT nome,idade,sexo,nota FROM tb_estudantes WHERE nota>7.0;

SELECT nome,idade,sexo,nota FROM tb_estudantes WHERE nota<7.0;

UPDATE tb_estudantes SET nota=8.0 WHERE id=8;




