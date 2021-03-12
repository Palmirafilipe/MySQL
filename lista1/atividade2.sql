create database db_commerce;
use db_commerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar(200),
validade date,
valor decimal,
quantidade int,
primary key(id)
);

insert into tb_produtos(nome, validade, valor, quantidade) values("Ervilia", "2021-08-15", 200, 100);
insert into tb_produtos(nome, validade, valor, quantidade) values("Trigo", "2022-10-24", 600, 80);
insert into tb_produtos(nome, validade, valor, quantidade) values("Toddy", "2021-11-16", 370, 60);
insert into tb_produtos(nome, validade, valor, quantidade) values("Sabor ami", "2021-11-30", 140, 30);
insert into tb_produtos(nome, validade, valor, quantidade) values("Tang", "2022-01-08", 60, 100);
insert into tb_produtos(nome, validade, valor, quantidade) values("Leite ", "2023-06-02", 1200, 56);
insert into tb_produtos(nome, validade, valor, quantidade) values("Mucilon", "2021-09-01", 700, 80);
insert into tb_produtos(nome, validade, valor, quantidade) values("Arroz", "2021-04-28",  800, 40);


select * from tb_produtos;
select * from tb_produtos where valor <500;
select * from tb_produtos where valor >500;



/*
"2022-06-02"
*/