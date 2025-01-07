CREATE DATABASE rh;

USE rh;

CREATE TABLE colaboradores (
    id BIGINT AUTO_INCREMENT PRIMARY KEY, 
    nome VARCHAR(100) NOT NULL,      
    cargo VARCHAR(50) NOT NULL,      
    salario DECIMAL(10, 2) NOT NULL,   
    data_admissao DATE,      
    departamento VARCHAR(50) NOT NULL 
);

INSERT INTO colaboradores(nome, cargo, salario, data_admissao, departamento) 
VALUES ('João Silva', 'Analista de RH', 3000.00, '2023-01-15', 'Recursos Humanos');

INSERT INTO colaboradores(nome, cargo, salario, data_admissao, departamento) 
VALUES ('Maria Oliveira', 'Desenvolvedor', 4500.00, '2021-09-01', 'TI');

INSERT INTO colaboradores(nome, cargo, salario, data_admissao, departamento) 
VALUES ('Carlos Lima', 'Designer Gráfico', 2500.00, '2020-05-20', 'Marketing');

INSERT INTO colaboradores(nome, cargo, salario, data_admissao, departamento) 
VALUES ('Ana Souza', 'Assistente Administrativo', 1800.00, '2023-03-10', 'Financeiro');

INSERT INTO colaboradores(nome, cargo, salario, data_admissao, departamento) 
VALUES ('Rosilene Farias', 'Gerente de Projetos', 6000.00, '2019-07-25', 'Projetos')

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores WHERE salario < 2000;

SELECT * FROM colaboradores;