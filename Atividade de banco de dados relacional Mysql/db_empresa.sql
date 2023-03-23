CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    salario DECIMAL(8,2) NOT NULL
);
INSERT INTO tb_colaboradores(nome, cargo, idade, salario) VALUES
('Rodrigo', 'Dev Full Stack Senior', 33, 30000.0),
('Taymara', 'Dev Front-End Senior', 29, 15000.0),
('Daniel', 'Scrum Master', 26, 15000.0),
('Catiane', 'Dev Full Stack Senior', 23, 20000.0),
('Fabio', 'CEO', 50, 1000000.0);

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;
UPDATE tb_colaboradores SET salario = 1820.1 WHERE id = 1;