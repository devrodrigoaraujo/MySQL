CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    matricula VARCHAR(255) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    nota DECIMAL(4,2) NOT NULL
);

INSERT INTO tb_estudantes(matricula, nome, idade, nota) VALUES
('000000000001', 'Rodrigo', 18, 9.2), 
('000000000002', 'Catiane', 15, 10),
('000000000003', 'Daniel', 16, 7.4),
('000000000004', 'Samuel', 17, 9.8),
('000000000005', 'Fabio', 17, 6),
('000000000006', 'Jainna', 16, 5.4),
('000000000007', 'Taymara', 18, 4.8),
('000000000008', 'Joana', 17, 3.9);

SELECT * FROM tb_estudantes;
SELECT * FROM tb_estudantes WHERE nota > 7.0;
SELECT * FROM tb_estudantes WHERE nota < 7.0;
UPDATE tb_estudantes SET matricula = 99999999999 WHERE id = 8;