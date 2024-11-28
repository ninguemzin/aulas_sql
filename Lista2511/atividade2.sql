CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
 id BIGINT AUTO_INCREMENT PRIMARY KEY, 
    nome_categoria VARCHAR(50) NOT NULL,         
    descricao TEXT  
);

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES
('Tradicional', 'Pizzas com sabores clássicos e populares.'),
('Especial', 'Pizzas com combinações exclusivas e ingredientes premium.'),
('Vegana', 'Pizzas sem ingredientes de origem animal.'),
('Doce', 'Pizzas com coberturas doces para sobremesa.'),
('Fitness', 'Pizzas feitas com ingredientes saudáveis e alternativas leves.'),
('Premium', 'Pizzas de alta qualidade com ingredientes gourmet e combinações sofisticadas.');


CREATE TABLE tb_pizzas(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
	sabor VARCHAR(50) NOT NULL,
	tamanho VARCHAR(20),
    borda VARCHAR(30),
    preco DECIMAL (6,2),
    categoria_id BIGINT, 
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_pizzas (sabor, tamanho, borda, preco, categoria_id)
VALUES
('Mussarela', 'Grande', 'Recheada de Catupiry', 45.50, 1),
('Calabresa', 'Média', 'Tradicional', 38.00, 1),
('Frango com Catupiry', 'Grande', 'Recheada de Cheddar', 50.00, 2),
('Brócolis com Alho', 'Pequena', 'Tradicional', 35.00, 3),
('Chocolate com Morango', 'Média', 'Recheada de Leite Condensado', 42.00, 4),
('Integral com Atum', 'Média', 'Integral', 40.00, 5),      
('Quatro Queijos', 'Grande', 'Tradicional', 55.00, 1),    
('Palmito com Azeitonas', 'Média', 'Recheada de Ricota', 48.00, 2);

SELECT * FROM tb_categorias;

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id WHERE tb_categorias.id = 4;




