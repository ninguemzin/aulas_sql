CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT,         
    nome VARCHAR(255) NOT NULL,        
    idade INT NOT NULL,                
    curso VARCHAR(255) NOT NULL,     
    data_matricula DATE NOT NULL,   
    nota_final DECIMAL(5, 2) NOT NULL,
    PRIMARY KEY (id) 
);

INSERT INTO tb_estudantes(nome, idade, curso, data_matricula, nota_final) 
VALUES 
("João Silva", 15, "Matemática", "2024-01-15", 7.5),
("Maria Oliveira", 16, "História", "2024-01-10", 4.2),
("Carlos Souza", 17, "Geografia", "2024-01-05", 6.9),
("Ana Costa", 16, "Física", "2024-01-12", 9.1),
("Pedro Santos", 15, "Biologia", "2024-01-20", 7.8),
("Juliana Pereira", 17, "Química", "2024-01-18", 5.5),
("Luís Almeida", 16, "Literatura", "2024-01-17", 7.3),
("Fernanda Lima", 15, "Arte", "2024-01-22", 9.0),
("Ricardo Martins", 17, "Educação Física", "2024-01-25", 8.0);


SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota_final <= 7;

SELECT * FROM tb_estudantes WHERE nota_final > 7;





