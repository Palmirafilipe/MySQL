CREATE DATABASE db_construindo_a_nossa_vida;
USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
 id bigint auto_increment,
 nome varchar(200),
 ativo boolean,
 primary key (id)
);

insert into tb_categoria (nome, ativo) values ("Porta", true);
insert into tb_categoria (nome, ativo) values ("Ajulegio", true);
insert into tb_categoria (nome, ativo) values ("janela", true);
insert into tb_categoria (nome, ativo) values ("pisso", true);
insert into tb_categoria (nome, ativo) values ("Tinta", true);

select nome,ativo from tb_categoria;

create table tb_produto(
 id bigint auto_increment,
 nome varchar(200),
 descricao varchar(200),
 quantidade int,
 preco decimal,
 categoria_id bigint,
 primary key (id),
 foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto (nome, descricao, quantidade, preco, categoria_id) values ("Azulejo esmaltado", "grande qualidade", 331, 24, 2);
insert into tb_produto (nome, descricao, quantidade, preco, categoria_id) values ("Piso de madeira", "boa qualidade", 5, 3, 4);
insert into tb_produto (nome, descricao, quantidade, preco, categoria_id) values ("Tinta verniz", "extra brilho", 321, 33, 5);
insert into tb_produto (nome, descricao, quantidade, preco, categoria_id) values ("Porta de madeira", "porta entrada", 330, 450, 1);
insert into tb_produto (nome, descricao, quantidade, preco, categoria_id) values ("Tinta acrílica", "brilho", 25, 50, 5);
insert into tb_produto (nome, descricao, quantidade, preco, categoria_id) values ("Janela de madeira", "janela grande", 300, 333, 3);
insert into tb_produto (nome, descricao, quantidade, preco, categoria_id) values ("Piso de porcelanato", "resistente", 200, 60, 4);
insert into tb_produto (nome, descricao, quantidade, preco, categoria_id) values ("Porta de vidro", "de correr", 540, 233, 1);


select * from tb_produto;

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%C%";
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_categoria.id = 1; 