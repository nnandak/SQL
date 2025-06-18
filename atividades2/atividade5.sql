CREATE DATABASE  db_construindo_vidas;

USE db_construindo_vidas;
CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nomeproduto VARCHAR(255) NOT NULL,
datadevalidade DATE,
preco DECIMAL (6,2) NOT NULL,
categoriaid BIGINT
);

#Adcionando a Chave estrangeira na tabela
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categoriaid
FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id);


INSERT INTO tb_categorias (categoria) 
VALUES ("Materiais básicos"), ("Estrutura"), ("Hidráulica"), ("Elétrica"), ("Acabamentos");

INSERT INTO tb_produtos (nomeproduto, datadevalidade, preco, categoriaid) 
VALUES ("Cimento", "2027-10-30", 50.70, 1), ("Tijolo", null, 100, 1),
("Vigas", null , 80.00, 2), ("Pilares", null, 77, 2),
("Caixa d'água", null, 500.00, 3), ("registro", null, 45, 3),
("Tomadas", null, 15, 4), ("Interruptores", null, 20.50, 4),
("Piso", null, 64.80, 5), ("tinta", "2027-10-30", 400, 4);

#Retornar valores maiores que R$100,00
SELECT * FROM tb_produtos WHERE preco > 100;

#retornar valores entre R$ 70,00 e R$ 150,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 70 AND 150;

#Buscar produtos que possuam a letra C (o simbolo %% significa que é qualquer palavra que contenha essa letra
SELECT * FROM tb_produtos WHERE nomeproduto LIKE "%C%";

SELECT * FROM tb_produtos;

#Inner Join 
SELECT tb_produtos.nomeproduto, tb_produtos.preco, tb_categorias.categoria #colunas que quero que apareça
FROM tb_produtos INNER JOIN tb_categorias #de qual tabela sirá essa info
ON tb_produtos.categoriaid = tb_categorias.id;

#Select com Inner Join para apenas uma categoria
SELECT tb_produtos.id, tb_produtos.nomeproduto, tb_produtos.preco, tb_categorias.categoria
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id
WHERE tb_produtos.categoriaid = 3;       