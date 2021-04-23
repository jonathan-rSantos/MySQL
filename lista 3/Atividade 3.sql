create database escola;
use escola;

create table alunos_a(
id bigint auto_increment,
nome varchar(30),
matricula varchar(10),
idade date,
nota double,
ferias varchar(3),
primary key (id)
);
alter table alunos_a add idade integer;

insert into alunos_a (nome, idade, matricula, nota, ferias)values ("debora", 15, 41241208, 10.0, "não");

-- Faça um select que retorne o/as alunos/a com a nota maior do que 7.
select * from alunos_a where nota > 7.0;

-- Faça um select que retorne o/as alunos/a com a nota menor do que 7.
select * from alunos_a where nota < 7.0;

-- Ao término atualize um dado desta tabela através de uma query de atualização.
update alunos_a set ferias = "sim" where id= 3;

select * from alunos_a;