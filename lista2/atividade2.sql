create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key(id)
);


insert tb_categoria (descricao,ativo) values ("pizza doce",true);
insert tb_categoria (descricao,ativo) values ("pizza vegana",true);
insert tb_categoria (descricao,ativo) values ("pizza de mariscos",true);
insert tb_categoria (descricao,ativo) values ("pizza seca",true);
insert tb_categoria (descricao,ativo) values ("pizza de queijos",true);

select descricao,ativo from tb_categoria

Tabela de pizza
	
create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_pizza(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal not null,
quantidade int not null,
categoria_id bigint,
primary key(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

insert tb_pizza (nome,preco,quantidade,categoria_id) values  ("Chocolate", 23.00, 1, 1);
insert tb_pizza (nome,preco,quantidade,categoria_id) values  ("Vegetariana", 29.00, 1, 2);
insert tb_pizza (nome,preco,quantidade,categoria_id) values  ("Napolitana", 25.00, 1, 5);
insert tb_pizza (nome,preco,quantidade,categoria_id) values  ("Banana", 69.00, 3, 1);
insert tb_pizza (nome,preco,quantidade,categoria_id) values  ("Vero verde", 26.00, 1, 2);
insert tb_pizza (nome,preco,quantidade,categoria_id) values  ("Camarrao", 84.00, 2, 3);
insert tb_pizza (nome,preco,quantidade,categoria_id) values  ("Apereritivo", 28.00, 1, 4);
insert tb_pizza (nome,preco,quantidade,categoria_id) values  ("Três queijos", 60.00, 2, 5);


select * from tb_pizza;
SELECT * FROM tb_pizza WHERE preco >60;
SELECT * FROM tb_pizza WHERE preco BETWEEN 29 AND 60;
select * from tb_pizza where nome Like "%C%";



