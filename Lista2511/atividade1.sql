CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_personagens(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	genero VARCHAR(20),
    raca VARCHAR(30),
    nivel INT DEFAULT 1,
    forca BIGINT, 
    defesa BIGINT,
    PRIMARY KEY (id)
);

INSERT INTO tb_personagens (nome, genero, raca, nivel, forca, defesa)
VALUES
('Cornelio', 'Masculino', 'Humano', 7, 5380, 1500),
('Legolas', 'Masculino', 'Elfo', 4, 2022, 800),
('Gandalf', 'Masculino', 'Maia', 10, 9836, 3000),
('Éowyn', 'Feminino', 'Humano', 4, 2008, 750),
('Arwen', 'Feminino', 'Elfo', 2, 980, 300); 

CREATE TABLE tb_classes (
 id BIGINT AUTO_INCREMENT PRIMARY KEY, 
    nome_classe VARCHAR(20) NOT NULL,         
    descricao TEXT  
);

INSERT INTO tb_classes (nome_classe, descricao)
VALUES
('Guerreiro', 'Especialista em combate corpo a corpo, equipado com armaduras pesadas e armas poderosas.'),
('Mago', 'Usuário de magia arcana, capaz de conjurar feitiços devastadores, mas com baixa resistência física.'),
('Arqueiro', 'Combatente à distância, mestre no uso de arcos e bestas, com alta destreza.'),
('Ladino', 'Especialista em furtividade e agilidade, ideal para missões de espionagem e ataques surpresa.'),
('Clérigo', 'Sacerdote com habilidades de cura e proteção, além de habilidades mágicas sagradas.'),
('Bárbaro', 'Guerreiro selvagem com força bruta e resistência incrível, focado em ataques devastadores.'),
('Paladino', 'Cavaleiro sagrado, combina habilidades de combate e magia divina para proteger aliados.'),
('Druida', 'Guardião da natureza, capaz de se transformar em animais e conjurar magias naturais.');

ALTER TABLE tb_personagens ADD classeid BIGINT;

UPDATE tb_personagens SET classeid = 1 WHERE id = 1; 
UPDATE tb_personagens SET classeid = 2 WHERE id = 2;
UPDATE tb_personagens SET classeid = 3 WHERE id = 3;
UPDATE tb_personagens SET classeid = 4 WHERE id = 4; 
UPDATE tb_personagens SET classeid = 5 WHERE id = 5;  


ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classe 
FOREIGN KEY (classeid) REFERENCES tb_classes (id);

SELECT * FROM tb_classes;

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE forca > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id WHERE tb_classes.id = 3;

