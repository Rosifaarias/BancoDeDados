
CREATE DATABASE db_pizzaria_legal;

-- usar o banco de dados
USE db_pizzaria_legal;

-- tabela de categorias
CREATE TABLE tb_categorias (
    id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY, 
    descricao VARCHAR(100) NOT NULL                
);

-- tabela de pizzas
CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,          
    nome VARCHAR(100) NOT NULL,                     
    preco DECIMAL(10, 2) NOT NULL,                
    id_categoria BIGINT NOT NULL,                 
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria) 
);

-- categorias das pizzas
INSERT INTO tb_categorias (descricao)
VALUES ("Pizzas Grandes");

INSERT INTO tb_categorias (descricao)
VALUES ("Pizzas Brotos");

INSERT INTO tb_categorias (descricao)
VALUES ("Pasteis");

--  dados das pizzas
INSERT INTO tb_pizzas (nome, preco, id_categoria)
VALUES ("Pizza Margherita", 40.00, 1); -- Categoria: Pizzas Grandes

INSERT INTO tb_pizzas (nome, preco, id_categoria)
VALUES ("Pizza Pepperoni", 42.50, 1); -- Categoria: Pizzas Grandes

INSERT INTO tb_pizzas (nome, preco, id_categoria)
VALUES ("Pizza Quatro Queijos", 25.00, 2); -- Categoria: Pizzas Brotos

INSERT INTO tb_pizzas (nome, preco, id_categoria)
VALUES ("Pastel de Carne", 8.50, 3); -- Categoria: Pasteis

INSERT INTO tb_pizzas (nome, preco, id_categoria)
VALUES ("Pastel de Queijo", 9.00, 3); -- Categoria: Pasteis

INSERT INTO tb_pizzas (nome, preco, id_categoria)
VALUES ("Pizza Veggie Delight", 38.00, 1); -- Categoria: Pizzas Grandes

-- Visualizar os dados da tabela pizzas
SELECT * FROM tb_pizzas;

-- Visualizar os dados da tabela categorias
SELECT * FROM tb_categorias;

SELECT * FROM tb_pizzas WHERE preco > 41.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 9.00 AND 25.00; 

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%"; -- tipo/parecido


select nome, preco, tb_categorias.descricao
from tb_pizzas join tb_categorias 
on tb_pizzas.id_categoria = tb_categorias.id_categoria;

SELECT nome, preco, tb_categorias.descricao
FROM tb_pizzas
LEFT JOIN tb_categorias 
ON tb_pizzas.id_categoria = tb_categorias.id_categoria;


SELECT nome, preco, tb_categorias.descricao
FROM tb_pizzas
INNER JOIN tb_categorias 
ON tb_pizzas.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.descricao = 'Pizzas Grandes';