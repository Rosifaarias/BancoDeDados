
CREATE DATABASE escola;
USE escola;

CREATE TABLE estudantes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY, 
    nome VARCHAR(100) NOT NULL,        
    turma VARCHAR(10) NOT NULL,       
    nota DECIMAL(5, 2) NOT NULL,       
    situacao VARCHAR(20) NOT NULL    
);


INSERT INTO estudantes(nome, turma, nota, situacao) 
VALUES ('Ana Silva', '7A', 8.5, 'Aprovado');

INSERT INTO estudantes(nome, turma, nota, situacao) 
VALUES ('Lucas Souza', '8B', 6.8, 'Reprovado');

INSERT INTO estudantes(nome, turma, nota, situacao) 
VALUES ('Mariana Lima', '7A', 7.2, 'Aprovado');

INSERT INTO estudantes(nome, turma, nota, situacao) 
VALUES ('João Oliveira', '8B', 5.4, 'Reprovado');

INSERT INTO estudantes(nome, turma, nota, situacao) 
VALUES ('Beatriz Santos', '7A', 9.0, 'Aprovado');

INSERT INTO estudantes(nome, turma, nota, situacao) 
VALUES ('Gabriel Almeida', '9C', 7.5, 'Aprovado');

INSERT INTO estudantes(nome, turma, nota, situacao) 
VALUES ('Isabela Pereira', '6D', 6.2, 'Reprovado');

INSERT INTO estudantes(nome, turma, nota, situacao) 
VALUES ('Rafael Costa', '8B', 8.0, 'Aprovado');


SELECT * FROM estudantes WHERE nota > 7.0;


SELECT * FROM estudantes WHERE nota < 7.0;