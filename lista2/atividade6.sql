create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(200),
ativo boolean,
primary key(id)
);

insert into tb_categoria(descricao,ativo) values("Saude", true);
insert into tb_categoria(descricao,ativo) values("Tecnologia", true);
insert into tb_categoria(descricao,ativo) values("Ciencias", true);
insert into tb_categoria(descricao,ativo) values("Financeira", true);
insert into tb_categoria(descricao,ativo) values("Beleza", true);

select descricao,ativo from tb_categoria;

create table tb_curso(
id bigint auto_increment,
nome varchar (200),
preco decimal,
duracao varchar(200),
hora int,
categoria_id bigint,
primary key(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
 );

insert into tb_curso(nome, preco, duracao, hora, categoria_id) values("Odontologia", 7600, "seis meses", 7, 1);
insert into tb_curso(nome, preco, duracao, hora, categoria_id) values("Sistemas de informacao", 3,  "um  dia", 6, 2);
insert into tb_curso(nome, preco, duracao, hora, categoria_id) values("Maquilhagem", 2050, "oito meses", 4, 5);
insert into tb_curso(nome, preco, duracao, hora, categoria_id) values("Genecologia", 5800, "cinco meses", 5, 1);
insert into tb_curso(nome, preco, duracao, hora, categoria_id) values("Contabilidade", 2700, "cico meses", 4, 3);
insert into tb_curso(nome, preco, duracao, hora, categoria_id) values("Manicure", 60, "um meses", 7, 5);
insert into tb_curso(nome, preco, duracao, hora, categoria_id) values("Jogos digitaais", 2800, " tres meses", 4, 2);
insert into tb_curso(nome, preco, duracao, hora, categoria_id) values("Gestao financeica", 1990, " quato meses ", 3, 4);

select * from tb_curso;

select * from tb_curso where preco >50;
select * from tb_curso where preco between 3 and 60;
select * from tb_curso where nome like "%J%";
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_categoria.id = 1; 