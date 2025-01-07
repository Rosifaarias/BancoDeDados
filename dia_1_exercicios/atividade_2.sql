CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY, 
    nome VARCHAR(100) NOT NULL,        
    quantidade INT,                  
    preco DECIMAL(10, 2) NOT NULL      
);


INSERT INTO produtos(nome, quantidade, preco) 
VALUES ('Notebook', 15, 3500.00);

INSERT INTO produtos(nome, quantidade, preco) 
VALUES ('Smartphone', 50, 1800.00);

INSERT INTO produtos(nome, quantidade, preco) 
VALUES ('Cadeira Escritório', 100, 500.00);

INSERT INTO produtos(nome, quantidade, preco) 
VALUES ('Mouse Gamer', 200, 400.00);

INSERT INTO produtos(nome, quantidade, preco) 
VALUES ('Monitor 4K', 20, 2500.00);

INSERT INTO produtos(nome, quantidade, preco) 
VALUES ('Fone Bluetooth', 300, 250.00);

INSERT INTO produtos(nome, quantidade, preco) 
VALUES ('Cadeira Gamer', 10, 1500.00);

INSERT INTO produtos(nome, quantidade, preco) 
VALUES ('Mop', 60, 120.00);

SELECT * FROM produtos WHERE preco > 500; -- PRODUTOS MAIOR QUE 500


SELECT * FROM produtos WHERE preco < 500; -- PRODUTOS MAIOR QUE 500