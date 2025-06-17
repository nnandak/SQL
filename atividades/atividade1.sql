CREATE DATABASE rh_generation;

USE rh_generation;

CREATE TABLE colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
cargo VARCHAR(255),
salario DECIMAL,
setor VARCHAR(255),
PRIMARY KEY(id)
);

INSERT INTO colaboradores(nome, cargo, salario, setor) VALUES
("Ana", "estagiaria", "1500.00","Vendas"),
("Mariana", "analista", "2000.00","Marketing"),
("Giovanna", "especialista", "3000.00","Marketing"),
("Caio", "arquiteto", "5000.00", "tecnologia"),
("Rafael", "desenvolvedor", "4000.00", "tecnologia");

SELECT * FROM colaboradores;

SELECT * FROM  COLABORADORES where SALARIO >= 2000.00;

SELECT * FROM  COLABORADORES where SALARIO <= 2000.00;

UPDATE colaboradores SET salario = 2000.00 WHERE id = 1;