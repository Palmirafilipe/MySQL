create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(200) not null,
ativo boolean not null,
primary key(id)
);

insert tb_categoria (descricao,ativo) values ("Anti-inflamatorio", true);
insert tb_categoria (descricao,ativo) values ("Hidratante corporal", true);
insert tb_categoria (descricao,ativo) values ("Esmalte", true);
insert tb_categoria (descricao,ativo) values ("Pasta de dente", true);
insert tb_categoria (descricao,ativo) values ("Analgegico", true);

select descricao,ativo from tb_categoria;

create table tb_produto(
id bigint auto_increment,
 nome varchar (200) not null,
 preco decimal not null,
 quantidade int not null,
 validade date not null,
 categoria_id bigint,
primary key(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

insert into tb_produto(nome, preco, quantidade, validade, categoria_id) values("Imbuprofeno", 72.89, 8, "2023-01-12", 1);
insert into tb_produto(nome, preco, quantidade, validade, categoria_id) values("Paixão", 4, 1, "2021-12-19", 2);
insert into tb_produto(nome, preco, quantidade, validade, categoria_id) values("Sorrizo", 41, 2, "2022-06-17", 4);
insert into tb_produto(nome, preco, quantidade, validade, categoria_id) values("Dipirona", 2, 1, "2021-10-28", 5);
insert into tb_produto(nome, preco, quantidade, validade, categoria_id) values("Risque", 3, 1, "2023-14-06", 3);
insert into tb_produto(nome, preco, quantidade, validade, categoria_id) values("Biopsor", 37, 4, "2022-03-24", 2);
insert into tb_produto(nome, preco, quantidade, validade, categoria_id) values("Colgate", 36, 5, "2021-12-20", 4);
insert into tb_produto(nome, preco, quantidade, validade, categoria_id) values("Dicloenaco", 60, 8, "2021-12-30", 1);

select * from tb_produto;

select * from tb_produto where preco >50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%B%";
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_categoria.id = 1; 