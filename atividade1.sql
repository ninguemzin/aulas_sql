CREATE DATABASE db_Rh;

USE db_Rh;

CREATE TABLE tb_funcionarios(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    idade INT,
	cargo VARCHAR(255) NOT NULL,
    salario DECIMAL NOT NULL,
    cpf LONG,
    PRIMARY KEY (id)
);

INSERT INTO tb_funcionarios(nome, idade, cargo, salario, cpf) 
VALUES ("Emerson", 22, "Dev Full-Stack Jr", 3200, 41825536402),
("Lucas", 21, "Estagiario", 1800, 45867736301),
("Vitor", 25, "Dev Front-end Jr", 3200, 45869217636),
("Rodrigo", 28, "Dev Back-end Pleno", 5300, 46887832324),
("Naiara", 20, "UI-UX", 3800, 41819137578),
("Gabrieli", 21, "Suporte Tec", 2500, 42612417357);

ALTER TABLE tb_funcionarios MODIFY salario DECIMAL(7,2);

SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario <= 2000;

SELECT * FROM tb_funcionarios WHERE salario > 2000;

-- DROP DATABASE db_Rh



