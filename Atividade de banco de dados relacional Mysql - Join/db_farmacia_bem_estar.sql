CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
	id int auto_increment,
    tipo varchar(255) not null,
    descrição varchar(255) not null,
    PRIMARY KEY(id)
);

INSERT INTO tb_categorias(tipo, descrição)
VALUE('Cosméticos', 'Produtos para maquiagem e beleza');
INSERT INTO tb_categorias(tipo, descrição)
VALUES('Remédios', 'Produtos para tratamento de saúde');
INSERT INTO tb_categorias(tipo, descrição)
VALUES('Suplemento', 'Produtos para suplementação alimentar');

CREATE TABLE tb_produtos(
	id int auto_increment,
    produto varchar(255) not null,
    preço decimal(10, 2) not null,
    descrição varchar(255) not null,
    estoque int not null,
    categoria_id int,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id), 
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(produto, preço, descrição, estoque, categoria_id)
VALUES('Pó Compacto', 29.90, 'Cobertura natural para pele', 50, 1);
INSERT INTO tb_produtos(produto, preço, descrição, estoque, categoria_id)
VALUES('Shampoo', 9.90, 'Cabelos Hidratados e emolientes', 30, 1);
INSERT INTO tb_produtos(produto, preço, descrição, estoque, categoria_id)
VALUES('Dipirona', 5.50, 'Analgésico e antitérmico', 100, 2);
INSERT INTO tb_produtos(produto, preço, descrição, estoque, categoria_id)
VALUES('Dorflex', 8.90, 'Analgésico e relaxante muscular', 80, 2);
INSERT INTO tb_produtos(produto, preço, descrição, estoque, categoria_id)
VALUES('Multivitamínico', 29.90, 'Complemento nutricional', 60, 3);
INSERT INTO tb_produtos(produto, preço, descrição, estoque, categoria_id)
VALUES('Whey Protein', 79.90, 'Suplemento proteico para atletas', 20, 3);
INSERT INTO tb_produtos(produto, preço, descrição, estoque, categoria_id)
VALUES('Protetor Solar Premium', 75.90, 'Tratamento contra manchas e proteção do sol', 70, 1);
INSERT INTO tb_produtos(produto, preço, descrição, estoque, categoria_id)
VALUES('Allegra', 40.90, 'Anti-Histaminico', 40, 2);

SELECT*FROM tb_produtos WHERE preço > 50.00;
SELECT*FROM tb_produtos WHERE preço BETWEEN 5.00 and 60.00;
SELECT*FROM tb_produtos WHERE produto LIKE "c%";

SELECT*FROM tb_produtos
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;
SELECT*FROM tb_produtos
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id WHERE tb_categorias.tipo = 'Cosméticos';