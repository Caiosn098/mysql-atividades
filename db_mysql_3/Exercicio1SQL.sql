CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios(
 id BIGINT AUTO_INCREMENT,
 nome VARCHAR(255) NOT NULL,
 cargo VARCHAR (255),
 turno VARCHAR (255),
 data_admissao DATE,
 salario DECIMAL (7,2) NOT NULL,
 PRIMARY KEY (id)
);
ALTER TABLE tb_funcionarios ADD idade INT;

INSERT INTO tb_funcionarios(nome, cargo, turno, data_admissao, salario, idade) 
VALUE ("Samantha Rodrigues", "Vendedora", "Integral", "2021-08-17", 1545.00, 26),
("Mariana Lima da Silva", "Vendedora", "Integral", "2023-10-02", 1545.00, 22),
("Mateus de Souza", "Vendedor", "Integral", "2018-01-15", 1545.00, 27),
("Bruna Araujo Medeiros", "Supervisora", "Integral", "2019-07-15", 3557.00, 31),
("Gustavo Barbosa", "Diretor de RH" , "Manhã", "2021-05-24", 12350.87, 31),
("Nelson da Costa", "Gerente", "Manhã", "2018-04-16", 6000.49, 38);

SELECT * FROM tb_funcionarios WHERE salario > 2000;

SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios SET salario = 3757.00 WHERE id = 4;

SELECT * FROM tb_funcionarios;