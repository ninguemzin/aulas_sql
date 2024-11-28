CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
 id BIGINT AUTO_INCREMENT PRIMARY KEY, 
    nome_categoria VARCHAR(50) NOT NULL,         
    descricao TEXT  
);

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES
('Carnes Bovinas', 'Cortes de carne bovina frescos e selecionados'),
('Carnes Suínas', 'Cortes de carne suína para diversos tipos de preparo'),
('Aves', 'Cortes e peças de frango e outras aves'),
('Embutidos', 'Linguiças, salsichas e outros embutidos artesanais'),
('Carnes Exóticas', 'Carne de animais não convencionais, como cordeiro e javali');

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome_produto VARCHAR(50) NOT NULL,
	preco TEXT,
    peso_kg VARCHAR(30),
    estoque DECIMAL (6,2),
    categoria_id BIGINT, 
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_produtos (nome_produto, preco, peso_kg, estoque, categoria_id)
VALUES
('Picanha', 59.90, 1.20, 50, 1),     
('Alcatra', 39.90, 1.50, 40, 1),       
('Costela Suína', 29.90, 2.00, 30, 2),   
('Frango Inteiro', 15.50, 2.50, 60, 3),  
('Linguiça Toscana', 19.90, 1.00, 80, 4),    
('Salsicha Artesanal', 22.50, 1.00, 45, 4),  
('Carne de Cordeiro', 79.90, 1.50, 20, 5),  
('Carne de Javali', 89.90, 1.30, 15, 5);      

SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.id = 3;
