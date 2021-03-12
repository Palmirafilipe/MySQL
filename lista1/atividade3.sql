create database db_escola;
use db_escola;

create table tb_alunos(
id bigint auto_increment,
nome varchar(200),
idade int,
ano int,
nota decimal,
primary key(id)
);

insert into tb_alunos(nome, idade, ano, nota) values("Marta", 18, 2, 6);
insert into tb_alunos(nome, idade, ano, nota) values("Debora", 23, 5, 8.5);
insert into tb_alunos(nome, idade, ano, nota) values("Pedro", 19, 1, 5.8);
insert into tb_alunos(nome, idade, ano, nota) values("Elsa", 21, 3, 10);
insert into tb_alunos(nome, idade, ano, nota) values("Carlos", 28, 4, 9);
insert into tb_alunos(nome, idade, ano, nota) values("Veronica", 25, 2, 7.9 );
insert into tb_alunos(nome, idade, ano, nota) values("João", 17, 1, 7);
insert into tb_alunos(nome, idade, ano, nota) values("Viviane", 20, 3, 10);

select * from tb_alunos;
select * from tb_alunos where nota <7;
select * from tb_alunos where nota >7;
