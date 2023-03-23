CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
	id int auto_increment,
    tipo varchar(255) not null,
    descrição varchar(255) not null,
    PRIMARY KEY(id)
);

INSERT INTO tb_categorias(tipo, descrição) 
VALUES('Salgada', 'Pizza Legal Sempre Servindo Qualidade em Pizza Salgada');
INSERT INTO tb_categorias(tipo, descrição) 
VALUES('Doce', 'Pizza Legal Sempre Servindo Qualidade em Pizza Doce');
INSERT INTO tb_categorias(tipo, descrição) 
VALUES('Vegetariana', 'Pizza Legal Sempre Servindo Qualidade em Pizza Vegetariana');
INSERT INTO tb_categorias(tipo, descrição) 
VALUES('Vegana', 'Pizza Legal Sempre Servindo Qualidade em Pizza Vegana');
INSERT INTO tb_categorias(tipo, descrição) 
VALUES('Calzone', 'Pizza Legal Sempre Servindo Qualidade em Calzones');

CREATE TABLE tb_pizzas(
	id int auto_increment,
    sabor varchar(255) not null,
    ingredientes varchar(255) not null,
	tamanho varchar(255) not null,
	preço decimal(10, 2) not null,
    categoria_id int,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id), 
	PRIMARY KEY(id)
);

INSERT INTO tb_pizzas (sabor, ingredientes, tamanho, preço, categoria_id)
VALUES ('Mussarela', 'Molho de tomate, mussarela, orégano', 'Grande', 50, 1);
INSERT INTO tb_pizzas (sabor, ingredientes, tamanho, preço, categoria_id)
VALUES ('Calabresa', 'Molho de tomate, mussarela, calabresa, cebola, orégano', 'Grande', 50, 1);
INSERT INTO tb_pizzas (sabor, ingredientes, tamanho, preço, categoria_id)
VALUES ('Frango com Catupiry', 'Molho de tomate, mussarela, frango, catupiry, orégano', 'Grande', 65, 1);
INSERT INTO tb_pizzas (sabor, ingredientes, tamanho, preço, categoria_id)
VALUES ('Chocolate', 'Chocolate ao leite, leite condensado', 'Broto', 45, 2);
INSERT INTO tb_pizzas (sabor, ingredientes, tamanho, preço, categoria_id)
VALUES ('Banana com Canela', 'Banana, açúcar, canela', 'Grande', 45, 2);
INSERT INTO tb_pizzas (sabor, ingredientes, tamanho, preço, categoria_id)
VALUES ('Vegetariana', 'Molho de tomate, mussarela, tomate, cebola, pimentão, orégano', 'Grande', 75, 3);
INSERT INTO tb_pizzas (sabor, ingredientes, tamanho, preço, categoria_id)
VALUES ('Vegana', 'Molho de tomate, tofu, cebola, pimentão, orégano', 'Grande', 75, 4);
INSERT INTO tb_pizzas (sabor, ingredientes, tamanho, preço, categoria_id)
VALUES ('Calzone de Frango', 'Molho de tomate, mussarela, frango, catupiry, orégano', 'Único', 29.9, 5);

SELECT*FROM tb_pizzas WHERE preço > 45.00;
SELECT*FROM tb_pizzas WHERE preço BETWEEN 50.00 and 100.00;
SELECT*FROM tb_pizzas WHERE sabor LIKE "M%";

SELECT*FROM tb_pizzas
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;
SELECT*FROM tb_pizzas
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id WHERE tb_categorias.tipo = 'Doce'