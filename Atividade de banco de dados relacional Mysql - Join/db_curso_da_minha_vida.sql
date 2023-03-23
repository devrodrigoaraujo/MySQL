CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
	id bigint auto_increment NOT null,
    nome varchar(255) NOT null,
    modalidade varchar(255) NOT null,
    duracao varchar(255),
    nivel varchar(255) NOT null,
    PRIMARY KEY(id)
);

INSERT INTO tb_categorias(nome, modalidade, nivel)
value("Java FullStack", "EAD AO VIVO", "Curso de Formação");
INSERT INTO tb_categorias(nome, modalidade, duracao, nivel)
value("Engenheiro de Software", "EAD", "8 SEMESTRES", "Bacharelado");
INSERT INTO tb_categorias(nome, modalidade, duracao, nivel)
value("Engenheiro de Software", "PRESENCIAL", "6 SEMESTRES","Curso de Formação");
INSERT INTO tb_categorias(nome, modalidade, nivel)
value("Rust", "ON-LINE", "Curso-Livre");
INSERT INTO tb_categorias(nome, modalidade, nivel)
value("C# e .NET", "ON-LINE", "Curso-Livre");

CREATE TABLE tb_cursos(
	id bigint auto_increment,
    professor varchar(255) NOT null,
    faculdade varchar(255),
    plataforma varchar(255),
    valor decimal(6,2),
    tipo varchar(255),
    primary key(id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);


INSERT INTO tb_cursos(professor, plataforma, tipo, categoria_id)
values("Geandro", "Generation", "GRÁTIS",1);
INSERT INTO tb_cursos(professor, plataforma, tipo, categoria_id)
values("Fabio", "42SP", "GRÁTIS",3);
INSERT INTO tb_cursos(professor, plataforma, tipo, categoria_id)
values("Flavio", "UNIP", "PRIVADO",5);
INSERT INTO tb_cursos(professor, faculdade, valor, tipo, categoria_id)
values("Filipe Deschamps", "Alura", "900.0", "PRIVADO",4);
INSERT INTO tb_cursos(professor, faculdade, valor, tipo, categoria_id)
values("Flavio", "UNIP", "700", "PRIVADO",2);
INSERT INTO tb_cursos(professor, faculdade, valor, tipo, categoria_id)
values("Gustavo Guanabara", "Estudonauta", "400.00", "PRIVADA",5);
INSERT INTO tb_cursos(professor, faculdade, valor, tipo, categoria_id)
values("Seth", "XP", "400.00", "PRIVADA",2);
INSERT INTO tb_cursos(professor, plataforma, tipo, categoria_id)
values("Nélio Alves", "YOUTUBE", "GRÁTIS",1);
INSERT INTO tb_cursos(professor, plataforma, tipo, categoria_id)
values("Victor Lima", "YOUTUBE", "GRÁTIS",5);

SELECT * FROM tb_cursos WHERE valor > 500.00;
SELECT * FROM tb_cursos WHERE valor between 600.00 and 1000;
SELECT * FROM tb_categorias WHERE nome like "%j%";
SELECT * FROM tb_cursos
INNER JOIN tb_categorias ON tb_categorias.id = tb_cursos.categoria_id;

SELECT * FROM tb_cursos
INNER JOIN tb_categorias ON tb_categorias.id = tb_cursos.categoria_id
WHERE plataforma = "YOUTUBE";