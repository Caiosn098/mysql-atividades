CREATE DATABASE db_gengames;

USE db_gengames;

CREATE TABLE tb_jogos(
 id BIGINT AUTO_INCREMENT,
 nome VARCHAR(255) NOT NULL,
 plataforma VARCHAR (255),
 genero VARCHAR (255),
 data_lancamento DATE,
 preco DECIMAL (6,2) NOT NULL,
 PRIMARY KEY (id)
);

INSERT INTO tb_jogos(nome, plataforma, genero, data_lancamento, preco) 
VALUE ("Elden Ring", "Playstation/Xbox/PC", "RPG, Soulslike", "2022-02-24", 229.90),
("Hollow Knight", "Playstation/Xbox/PC/Nintendo", "Metroidvania, plataforma", "2017-02-24", 46.99),
("Cuphead", "Playstation/Xbox/PC/Nintendo", "2D, Cooperativo", "2017-09-29", 36.99),
("Assassin's Creed Shadows Deluxe Edition", "Playstation/Xbox/PC", "Ação, Mundo Aberto", "2025-03-19", 549.99),
("Stardew Valley", "Playstation/Xbox/PC/Nintendo", "Simulador, Pixelado", "2022-02-24", 24.99),
("Dragon Age: The Veilguard", "Playstation/Xbox/PC", "RPG, Fantasia", "2024-10-31", 249.00),
("The Last of Us Part II Remastered Deluxe Edition", "Playstation/PC", "Ação, Terceira Pessoa", "2025-04-03", 599.90),
("GTA VI Deluxe Edition", "Playstation/Xbox/PC", "Ação, Mundo Aberto", null, 599.90);

SELECT * FROM tb_jogos WHERE preco > 500;

SELECT * FROM tb_jogos WHERE preco < 500;

UPDATE tb_jogos SET plataforma = "Playstation/Xbox/PC/Nintendo" WHERE id = 1;

SELECT * FROM tb_jogos;