CREATE DATABASE db_camisetaria;

USE db_camisetaria;

CREATE TABLE produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
tamanho VARCHAR(255),
cor VARCHAR(255),
quantidade DECIMAL,
PRIMARY KEY(id)
);

INSERT INTO produtos(nome, tamanho, cor, quantidade) VALUES
("Camiseta Lisa", "P", "azul","20"),
("Camiseta Lisa", "M", "amarela","25"),
("Camiseta Lisa", "G", "preta","30"),
("Camiseta Estampada", "P", "roxo","35"),
("Camiseta Estampada", "M", "rosa","25"),
("Camiseta Estampada", "G", "branca","15"),
("Regata", "P", "lilas","20"),
("Regata", "M", "Marrom","30");

ALTER TABLE produtos
ADD COLUMN valor DECIMAL;

SELECT * FROM produtos;

SELECT * FROM  produtos where valor >= 500.00;

SELECT * FROM  produtos where valor <= 500.00;

UPDATE produtos SET valor = 300.00 WHERE id = 4;