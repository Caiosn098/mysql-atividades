CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    corte VARCHAR(255) NOT NULL,
    validade DATE NOT NULL,
    preco_kg DECIMAL(5,2) NOT NULL,
    categorias_id BIGINT,
    PRIMARY KEY (id)
);

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
	tipo VARCHAR(255) NOT NULL,
    descricao VARCHAR (255),
    PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tipo, descricao) 
VALUES ("Carne Vermelha", "Carnes derivadas de bois e vacas, como picanha, alcatra, e filé mignon."),
("Carne Suína", "Carnes de porco, incluindo cortes como costela, lombo, e pernil."),
("Carnes Brancas", "Carnes de aves como frango, peru, pato, e codorna."),
("Peixes", "Peixes frescos, como salmão, tilápia, robalo, e bacalhau."),
("Cordeiro", "Carnes derivadas de ovelhas, como pernil e costela de cordeiro.");

INSERT INTO tb_produtos (nome, corte, validade, preco_kg, categorias_id)
VALUES ("Bovina", "Picanha", "2025-04-20", 89.90, 1), ("Suína", "Costela", "2025-04-15", 29.90, 2),
("Frango", "Coxa e Sobrecoxa", "2025-04-12", 17.50, 3), ("Cordeiro", "Pernil", "2025-04-25", 64.00, 5),
("Bovina", "Fraldinha", "2025-04-18", 49.90, 1), ("Bovina", "Alcatra", "2025-04-30", 59.90, 1),
("Suína", "Lombo", "2025-04-22", 35.50, 2), ("Frango", "Peito de frango", "2025-04-10", 14.80, 3);

SELECT * FROM tb_produtos WHERE preco_kg > 50.00;

SELECT * FROM tb_produtos WHERE preco_kg > 50.00 AND preco_kg < 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id WHERE categorias_id = 2;

