create database db_rh;
use db_rh;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(200),
idade int,
salario decimal,
setor varchar(100),
primary key(id)
);

insert into tb_funcionarios(nome, idade, salario, setor) values("Palmira Filipe", 25, 1500, "TI");
insert into tb_funcionarios(nome, idade, salario, setor) values("Annny Jembelei", 24, 4000, "RH");
insert into tb_funcionarios(nome, idade, salario, setor) values("Marcelo", 29, 1900, " Protecao Fisica");
insert into tb_funcionarios(nome, idade, salario, setor) values("Paula", 22, 120, "Secreteria");
insert into tb_funcionarios(nome, idade, salario, setor) values("João Paulo", 30, 2300,"Tesouraria");
select * from tb_funcionarios;
select * from tb_funcionarios where salario <2000;
select * from tb_funcionarios where salario >2000;
update tb_funcionarios set salario = 3000 where id = 1;