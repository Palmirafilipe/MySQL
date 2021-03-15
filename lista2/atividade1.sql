CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classe(
 id bigint auto_increment,
 nome varchar(200),
 habilidade varchar(200),
 primary key (id)
);

insert into tb_classe (nome, habilidade) VALUES ("Guerreiro", "usa espada");
insert into tb_classe (nome, habilidade) VALUES ("Ninja", "usar dardos");
insert into tb_classe (nome, habilidade) VALUES ("Feiticeiro", "magia");
insert into tb_classe (nome, habilidade) VALUES ("Cavaleiro", "cavalgar");
insert into tb_classe (nome, habilidade) VALUES ("Arqueiro", "usar arco e flecha");

SELECT * FROM tb_classe;


CREATE TABLE tb_personagem(
 id bigint auto_increment,
 nome varchar(200),
 biografia varchar(200),
 defesa int,
 ataque int,
 classe_id bigint,
 primary key (id),
 foreign key (classe_id) references tb_classe(id)
);

insert into tb_personagem (nome, biografia, defesa, ataque, classe_id) VALUES ("Junmyeon", "líder", 3400, 2100, 5);
insert into tb_personagem (nome, biografia, defesa, ataque, classe_id) VALUES ("Baekhyun", "alegre", 90000, 1400, 1);
insert into tb_personagem (nome, biografia, defesa, ataque, classe_id) VALUES ("Sehun", "aprendiz", 2000, 960, 3);
insert into tb_personagem (nome, biografia, defesa, ataque, classe_id) VALUES ("Jongdae", "protetor", 1000, 2000, 4);
insert into tb_personagem (nome, biografia, defesa, ataque, classe_id) VALUES ("Minseok", "sábio", 4200, 5200, 3);
insert into tb_personagem (nome, biografia, defesa, ataque, classe_id) VALUES ("Chanyeol", "animado", 2300, 3000, 2);
insert into tb_personagem (nome, biografia, defesa, ataque, classe_id) VALUES ("Kyungsoo", "centrado", 1400, 20000, 3);
insert into tb_personagem (nome, biografia, defesa, ataque, classe_id) VALUES ("Jongin", "estrela", 1000, 1200, 5);

select * from tb_personagem;

select * from tb_personagem where ataque > 2000;
select * from tb_personagem where defesa between 1000 and 2000;
select * from tb_personagem where nome like "%C%";
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_categoria.id = 1; 