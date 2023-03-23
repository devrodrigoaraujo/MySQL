CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
estilo VARCHAR(255) NOT NULL,
nivel VARCHAR(255) NOT NULL
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
defesa BIGINT NOT NULL,
ataque BIGINT NOT NULL,
classe_id BIGINT NOT NULL,
FOREIGN KEY (classe_id) REFERENCES tb_classes(id));

INSERT INTO tb_classes(estilo, nivel) VALUES
("Mago", 1),
("Arqueira", 2),
("Espadachim", 3),
("Fada", 4),
("Bruxo", 5);

INSERT INTO tb_personagens(nome, defesa, ataque, classe_id) VALUES
("Veigar", 5000, 5000, 1),
("Sova", 5600, 2500, 2),
("Sieghart", 6000, 4500, 3),
("Lulu", 850, 6000, 4),
("Harry", 5000, 3000, 5),
("Ragnar", 8540, 4500, 3),
("Loki", 3850, 3000, 1),
("Tom", 5000, 5000, 5);

SELECT * FROM tb_personagens WHERE ataque BETWEEN 2000 AND 3000;

SELECT * FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id WHERE tb_classes.id = 3;

UPDATE tb_personagens SET nome = "Multiversus" WHERE id = 3;