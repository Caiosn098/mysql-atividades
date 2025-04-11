CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_produtos (
	id INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    categoria VARCHAR(255),
    estoque INT,
    preco_unitario DECIMAL(5,2) NOT NULL,
	categorias_id BIGINT,
    PRIMARY KEY (id)
);

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT,
    setor VARCHAR(255) NOT NULL,
    tipo VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_categorias (setor, tipo)
VALUES ("Ferramentas", "Construção Geral"), ("Hidráulica", "Hidráulico"),
("Elétrica", "Elétrico"), ("Pintura", "Acabamento"), ("EPIs", "Segurança");

INSERT INTO tb_produtos (nome, categoria, estoque, preco_unitario, categorias_id)
VALUES ("Parafuso", "Fixadores", 1000, 0.25, 1), ("Martelo", "Ferramentas", 50, 22.90, 1), ("Tinta Acrílica", "Pintura", 30, 89.00, 4),
("Lixa de Parede", "Acabamento", 200, 1.80, 4), ("Lâmpada LED 50W Smart RGB", "Elétrica", 100, 149.90, 3), ("Tubo PVC 100mm", "Hidráulica", 150, 8.50, 2),
("Pá de Obra", "Ferramentas", 25, 28.00, 1), ("Luvas de Proteção", "EPIs", 60, 8.90, 5);

SELECT * FROM tb_produtos WHERE preco_unitario > 100.00;

SELECT * FROM tb_produtos WHERE preco_unitario > 70.00 AND preco_unitario < 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id WHERE categorias_id = 4;

