CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias(
	id bigint auto_increment,
    tipo varchar(255) NOT null,
    tamanho varchar(255) NOT null,
    primary key(id)
);

INSERT INTO tb_categorias(tipo, tamanho)
values('Industrial', 'Grande');
INSERT INTO tb_categorias(tipo, tamanho)
values("Elétrica", "Média");
INSERT INTO tb_categorias(tipo, tamanho)
values('Alvenaria', "Pequena");
INSERT INTO tb_categorias(tipo, tamanho)
values("Pintura", "GRANDE");
INSERT INTO tb_categorias(tipo, tamanho)
values("Carpintaria", "Média");
INSERT INTO tb_categorias(tipo, tamanho)
values("Serralharia", "Pequena");


CREATE TABLE tb_produtos(
	id bigint auto_increment NOT null,
    nome varchar(255) NOT null,
    preco decimal(6,2) NOT null,
    quantidade varchar(255) NOT null,
    categoria_id bigint NOT null,
    PRIMARY KEY(id),
    FOREIGN KEY(categoria_id) references tb_categorias(id)
);

INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id)
values("Betoneira", 2500.00, 1, 1);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id)
values("Lima", 10.0, 10, 6);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id)
values("Maquina de Pintura", 300.90, 5, 4);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id)
values("Furadeira Industrial", 2300, 2, 1);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id)
values("Martelete", 400.0, 2, 2);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id)
values("Maleta de Ferramenta profissional", 300.00, 10, 1);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id)
values("Lixadeira", 180.20, 2, 4);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id)
values("Pá", 50.00, 2, 3);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id)
values("Wattímetro", 150.00, 10, 2);

SELECT nome, preco, quantidade FROM tb_produtos WHERE preco > 100.00;
SELECT * FROM tb_produtos WHERE preco >= 70.00 AND preco <= 150.00;
SELECT * FROM tb_produtos WHERE nome like "%c%";

SELECT * FROM tb_produtos 
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos 
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id
where tb_produtos.categoria_id = 1;