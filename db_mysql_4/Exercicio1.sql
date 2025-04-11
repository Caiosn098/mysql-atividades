CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	raca VARCHAR(255),
    ataque BIGINT,
	defesa BIGINT,
    nivel BIGINT,
    classes_id BIGINT,
    PRIMARY KEY (id)
);

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT,
	classe VARCHAR(255) NOT NULL,
	subclasse VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_classes (classe, subclasse) 
VALUES ("Guerreiro", "Mestre de Batalha"), ("Mago", "Necromante"), 
("Ladino", "Assassino"), ("Paladino", "Juramento de Devoção"), ("Clérigo", "Domínio da Vida");

INSERT INTO tb_personagens (nome, raca, ataque, defesa, classes_id) 
VALUES ("Elowen", "Elfa", 1500, 1200, 2), ("Thrag", "Meio-Orc", 2800, 1000, 1), ("Micaella", "Humana", 1200, 1400, 5),
("Brom", "Anão", 5000, 1600, 1), ("Nyssa", "Tiefling", 14000, 6000, 3), ("Kaelen", "Meio-Elfo", 3000, 1000, 2),
("Durcan", "Anão", 1000, 2000, 4), ("Selene", "Humana", 23000, 7000, 1);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa > 1000 AND defesa < 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classes_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classes_id = tb_classes.id WHERE classes_id = 1;


