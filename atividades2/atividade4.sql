CREATE DATABASE db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;
CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nomeproduto VARCHAR(255) NOT NULL,
datadevalidade DATE NOT NULL,
preco DECIMAL (6,2) NOT NULL,
categoriaid BIGINT
);

#Adcionando a Chave estrangeira na tabela
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categoriaid
FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id);

#inserindo produtos na tabela categorias
INSERT INTO tb_categorias (categoria) 
VALUES ("Verdura"), ("Legumes"), ("Frutas"), ("Hortaliças"), ("Temperos");

UPDATE tb_categorias SET categoria = "Oleaginosas" WHERE id = 4;

SELECT * FROM tb_categorias;


#inserindo produtos na tabela produtos
INSERT INTO tb_produtos (nomeproduto, datadevalidade, preco, categoriaid) 
VALUES ("Alface", "2025-06-30", 3, 1), ("Espinafre", "2025-06-30", 5.00, 1),
("Cenoura", "2025-07-02", 7.00, 2), ("Batata", "2025-06-30", 10.00, 2),
("Manga", "2025-06-30", 12.00, 3), ("Maça", "2025-07-10", 25.00, 3),
("Amendoim", "2025-08-30", 18.50, 4), ("Pistache", "2025-10-30", 30.00, 4),
("Manjericão", "2025-06-30", 5.00, 5), ("Alecrim", "2025-06-30", 10.00, 5);


#Retornar valores maiores que R$50,00
SELECT * FROM tb_produtos WHERE preco > 50;

#retornar valores entre R$ 5,00 e R$ 150,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 150;

#Buscar produtos que possuam a letra C (o simbolo %% significa que é qualquer palavra que contenha essa letra
SELECT * FROM tb_produtos WHERE nomeproduto LIKE "%C%";

#Inner Join 
SELECT tb_produtos.nomeproduto, tb_produtos.preco, tb_categorias.categoria #colunas que quero que apareça
FROM tb_produtos INNER JOIN tb_categorias #de qual tabela sirá essa info
ON tb_produtos.categoriaid = tb_categorias.id;

#Select com Inner Join para apenas uma categoria
SELECT tb_produtos.id, tb_produtos.nomeproduto, tb_produtos.preco, tb_categorias.categoria
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id
WHERE tb_produtos.categoriaid = 3;