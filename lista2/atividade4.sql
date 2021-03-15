create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(200) not null,
ativo boolean not null,
primary key(id)
);

insert into tb_categoria (descricao,ativo) values ("Bovino",true);
insert into tb_categoria (descricao,ativo) values ("Suino",true);
insert into tb_categoria (descricao,ativo) values ("Aves",true);
insert into tb_categoria (descricao,ativo) values ("pertence feijoada",true);
insert into tb_categoria (descricao,ativo) values ("imbutidos",true);

select descricao,ativo from tb_categoria;

create table tb_produtos(
id bigint auto_increment,
nome varchar(200),
preco decimal,
quantidade int,
categoria_id bigint,
primary key(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

insert into tb_produtos (nome, preco, quantidade, categoria_id) values  ("ASA", 40, 30, 3);
insert into tb_produtos (nome, preco, quantidade, categoria_id) values  ("Picanha", 700, 30, 1);
insert into tb_produtos (nome, preco, quantidade, categoria_id) values  ("Coxa de Frango", 55, 30, 3);
insert into tb_produtos (nome, preco, quantidade, categoria_id) values  ("Bacon", 30, 30, 3);
insert into tb_produtos (nome, preco, quantidade, categoria_id) values  ("Peito de Frango", 25, 30, 3);
insert into tb_produtos (nome, preco, quantidade, categoria_id) values  ("Orelha de Porco", 50, 30, 4);
insert into tb_produtos (nome, preco, quantidade, categoria_id) values  ("Salame", 2.89, 1, 5);
insert into tb_produtos (nome, preco, quantidade, categoria_id) values  ("Mocoto", 60, 30, 2);


select * from tb_produtos;

SELECT * from tb_produtos where preco >50;
SELECT * from tb_produtos where preco between 3 and 60;
select * from tb_produtos where nome like "%C%";
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_categoria.id = 1; 