CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    quantidade INT  NOT NULL,
    preco DECIMAL (8,2) NOT NULL
);

INSERT INTO tb_produtos(nome, descricao, quantidade, preco) VALUES
('Macbook', 'm1', 3, 15500.00),
('Tenis', 'Nike', 10, 500.00),
('Celular', 'Iphone 15', 4, 11000.00),
('Celular', 'Samsung S23', 9, 4100.00),
('TV', '4K', 5, 2550.00),
('TV', 'FullHD', 10, 1100.00),
('Mochila', 'P/Notebook', 10, 550.00),
('KitTecladoMouse', 'LogitechMX', 11, 1500.00);

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;
UPDATE tb_produtos SET preco = 480 WHERE id = 5;