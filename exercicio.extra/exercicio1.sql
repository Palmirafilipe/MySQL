create database db_nome_minha_casa_mais_bonita;
use db_nome_minha_casa_mais_bonita;

create table tb_categoria(
id bigint auto_increment,
nome varchar (200),
descricao varchar(200),
ativo boolean,
primary key (id)
);

insert into tb_categoria(nome, descricao, ativo) values("Sofa", "sofa preto", true);
insert into tb_categoria(nome, descricao, ativo) values("Guarda roupa", "guarda branco", true);
insert into tb_categoria(nome, descricao, ativo) values("Fogao", " fogao preto", true);
insert into tb_categoria(nome, descricao, ativo) values("Tv", "smart", true);
insert into tb_categoria(nome, descricao, ativo) values("Talheres", "tamontina", true);

select *from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar (200),
descricao varchar(200),
preco decimal,
quantidade int,
categoria_id bigint,
 primary key (id),
 foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome, descricao, preco, quantidade, categoria_id) values("Omega", "quatro lugares", 900, 1, 1);
insert into tb_produto(nome, descricao, preco, quantidade, categoria_id) values("Samsung", "Dezoito polegadas", 60, 1, 4);
insert into tb_produto(nome, descricao, preco, quantidade, categoria_id) values("Bruce", "dua portas", 200, 1, 2);
insert into tb_produto(nome, descricao, preco, quantidade, categoria_id) values("Lg", "quatro bocas", 300, 1, 3);
insert into tb_produto(nome, descricao, preco, quantidade, categoria_id) values("Colhere", "colhere preta", 2.50, 4, 5);
insert into tb_produto(nome, descricao, preco, quantidade, categoria_id) values("Sony", "vinte e tres polegadas", 2400, 2, 4);
insert into tb_produto(nome, descricao, preco, quantidade, categoria_id) values("Garfo", "garfo azul", 3, 7, 5);
insert into tb_produto(nome, descricao, preco, quantidade, categoria_id) values("Madesa austin", "uma porta", 120, 1, 2);

select *from tb_produto;

create table tb_usuario(
id bigint auto_increment,
nome varchar(200),
idade int,
cpf varchar(200),
celular varchar(200),
ativo boolean,
 primary key (id)
 );


insert into tb_usuario(nome, idade, cpf, celular, ativo) values("Joao Pedro", 24, "111.111.111-11", "99999-888", true);
insert into tb_usuario(nome, idade, cpf, celular, ativo) values("Carla Mita", 36, "222.222.222-22", "77777-6666", true);
insert into tb_usuario(nome, idade, cpf, celular, ativo) values("Beto Jo", 57, "333.333.333-33", "55555-4444", true);
insert into tb_usuario(nome, idade, cpf, celular, ativo) values("Vita Branca", 30, "444.444.444-44", "33333-2222", true);
insert into tb_usuario(nome, idade, cpf, celular, ativo) values("Hugo Mario", 22, "555.555.555-55", "11111-0001", true);

select *from tb_usuario;

select *from tb_produto where preco > 300;
select *from tb_produto where preco between 300 and 410;
select *from tb_produto where nome like "%B%";

select *from tb_usuario where nome like "%C%";
select *from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select avg(preco) from tb_produto;
select sum(preco) from tb_produto;
select count(*) from tb_produto;

select tb_categoria.nome as 'Categoria', tb_produto.nome as 'Produto' 
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.id = 1;