CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
 id BIGINT AUTO_INCREMENT,
 nome VARCHAR(255) NOT NULL,
 serie VARCHAR(255),
 turma VARCHAR (255),
 data_nascimento DATE,
 media_final DECIMAL (3,1) NOT NULL,
 PRIMARY KEY (id)
);

INSERT INTO tb_alunos(nome, serie, turma, data_nascimento, media_final) 
VALUE ("Amanda Ribeiro Silva", "8º", "TURMA B", "2010-03-12", 6.4),
("João Pedro Carvalho", "7º", "TURMA A", "2011-07-25", 7.9),
("Mariana Costa Alves", "9º", "TURMA C", "2009-04-11", 9.1),
("Lucas Fernandes Lima", "6º", "TURMA B", "2012-01-30", 6.8),
("Beatriz Souza Martins", "8º", "TURMA A", "2010-05-17", 8.7),
("Gabriel Rocha Mendes", "9º", "TURMA C", "2009-09-09", 7.5),
("Larissa Dias Oliveira", "7º", "TURMA B", "2011-06-22", 9.3),
("Rafael Nunes Pereira", "6º", "TURMA A", "2012-12-13", 5.2);

SELECT * FROM tb_alunos WHERE media_final > 7.0;

SELECT * FROM tb_alunos WHERE media_final < 7.0;

UPDATE tb_alunos SET media_final = 7.4 WHERE id = 1;

SELECT * FROM tb_alunos;