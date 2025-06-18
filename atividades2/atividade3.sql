CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;
CREATE TABLE tb_categoria (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nomeproduto VARCHAR(255) NOT NULL,
datadevalidade DATE NOT NULL,
preco DECIMAL (6,2) NOT NULL,
categoria BIGINT
);

#Adcionando a Chave estrangeira na tabela
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categoria
FOREIGN KEY (categoria) REFERENCES tb_categoria(id);

#inserindo produtos na tabela  categoria
INSERT INTO tb_categoria (categoria) 
VALUES ("Produtos de cabelo"), ("Vitaminas"), ("Saúde intima"), ("Cuidados com a pele"), ("Remedios controlados");

SELECT * FROM tb_categoria;

#inserindo produtos na tabela produtos
INSERT INTO tb_produtos (nomeproduto, datadevalidade, preco, categoria) 
VALUES ("Shampoo", "2027-06-20", 40.20, 1), ("Condicionador", "2028-02-10", 46.50, 1),
("Vitamina C", "2026-07-03", 50.25, 2), ("Vitamina D", "2026-05-02", 30.40, 2),
("Absorvente", "2029-04-05", 25.30, 3), ("Sabonete intimo", "2027-02-05", 25.10, 3),
("Sabonete facial", "2025-10-30", 47.10, 4), ("demaquilante", "2028-03-04", 15, 4),
("Pregabalina", "2029-02-10", 50.60, 5), ("Rivotril", "2027-02-01", 50.70, 5);

#Retornar valores maiores que R$50,00
SELECT * FROM tb_produtos WHERE preco > 50;

#retornar valores menores que R$50,00
SELECT * FROM tb_produtos WHERE preco < 50;

#retornar valores entre R$ 5,00 e R$ 60,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;

#Buscar produtos que possuam a letra C (o simbolo %% significa que é qualquer palavra que contenha essa letra
SELECT * FROM tb_produtos WHERE nomeproduto LIKE "%C%";

#Inner Join 
SELECT tb_produtos.nomeproduto, tb_produtos.preco, tb_categoria.categoria #colunas que quero que apareça
FROM tb_produtos INNER JOIN tb_categoria #de qual tabela sirá essa info
ON tb_produtos.id = tb_categoria.id;

#Select com Inner Join para apenas uma categoria
SELECT tb_produtos.id, tb_produtos.nomeproduto, tb_produtos.preco, tb_categoria.categoria
FROM tb_produtos INNER JOIN tb_categoria 
ON tb_produtos.categoria = tb_categoria.id
WHERE tb_produtos.categoria = 1;


