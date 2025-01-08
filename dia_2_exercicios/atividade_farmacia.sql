CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

-- || CATEGORIAS
CREATE TABLE tb_categorias (
    id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY, 
    descricao TEXT NOT NULL                       
);

-- || PRODUTOS
CREATE TABLE tb_produtos (
    id_produto BIGINT AUTO_INCREMENT PRIMARY KEY,  
    nome VARCHAR(100) NOT NULL,            
    preco DECIMAL(10, 2) NOT NULL,                 
    id_categoria BIGINT,                  
    validade DATE NOT NULL,                       
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)  
);

-- Inserindo categorias
INSERT INTO tb_categorias (descricao)
VALUES ("Cosméticos");

INSERT INTO tb_categorias (descricao)
VALUES ("Medicamentos");

INSERT INTO tb_categorias (descricao)
VALUES ("Outros");

-- Inserindo produtos
INSERT INTO tb_produtos (nome, preco, id_categoria, validade)
VALUES ("Shampoo", 25.90, 1, '2026-05-01');  

INSERT INTO tb_produtos (nome, preco, id_categoria, validade)
VALUES ("Batom", 5.00, 1, '2026-05-01');  

INSERT INTO tb_produtos (nome, preco, id_categoria, validade)
VALUES ("Protetor Solar", 50.00, 1, '2025-10-15');  

INSERT INTO tb_produtos (nome, preco, id_categoria, validade)
VALUES ("Dipirona", 15.50, 2, '2025-03-20');  

INSERT INTO tb_produtos (nome, preco, id_categoria, validade)
VALUES ("Paracetamol", 60.00, 2, '2025-07-10'); 

INSERT INTO tb_produtos (nome, preco, id_categoria, validade)
VALUES ("Ibuprofeno", 18.75, 2, '2025-09-25'); 


INSERT INTO tb_produtos (nome, preco, validade)
VALUES ('Xarope para Tosse', 15.00,  '2025-12-31');  


SELECT nome, preco 
FROM tb_produtos WHERE preco > 50.00;


SELECT nome, preco 
FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;


SELECT nome, preco 
FROM tb_produtos WHERE nome LIKE '%C%';


SELECT nome, preco, validade, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id_categoria;