CREATE DATABASE db_livraria;

USE db_livraria;

CREATE TABLE tb_livros(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	autor VARCHAR(255) NOT NULL,
    paginas INT,
    ano DATE,
	preco DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_livros(nome, autor, paginas, ano, preco) 
VALUES ("O Senhor dos Anéis", "J.R.R. Tolkien", 1178, "1954-07-29", 590.90),
("1984", "George Orwell", 328, "1949-06-08", 290.90),
("Dom Quixote", "Miguel de Cervantes", 1072, "1605-01-16", 890.90),
("A Culpa é das Estrelas", "John Green", 313, "2012-01-10", 340.90),
("Harry Potter e a Pedra Filosofal", "J.K. Rowling", 223, "1997-06-26", 390.90),
("O Pequeno Príncipe", "Antoine de Saint-Exupéry", 96, "1943-04-06", 190.99),
("A Revolução dos Bichos", "George Orwell", 112, "1945-08-17", 540.90),
("O Hobbit", "J.R.R. Tolkien", 310, "1937-09-21", 490.90),
("Fahrenheit 451", "Ray Bradbury", 256, "1953-10-19", 590.90);

SELECT * FROM tb_livros;

SELECT * FROM tb_livros WHERE preco <= 500;

SELECT * FROM tb_livros WHERE preco > 500;




