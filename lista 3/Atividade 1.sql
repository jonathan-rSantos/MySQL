create database e_commerce;

-- Popule esta tabela com até 5 dados
create table produtos(
id bigint auto_increment,
nome varchar(10) not null,
rg bigint not null,
salario double not null,
profissao varchar(20) not null,
primary key (id)
);
alter table funcionario add ferias varchar(3);

insert into produtos (nome, rg, salario, profissao) values ("Dolores da silva", 574274832,2.400,"Op. maq industriais");

-- Faça um select que retorne os produtos com o valor maior do que 2000.
select * from funcionario where salario > 2000;

-- Faça um select que retorne os produtos com o valor menor do que 200.
select * from funcionario where salario < 2000;

-- Ao término atualize um dado desta tabela através de uma query de atualização.
update funcionario set salario = 1850.00 where id =5;

select * from funcionario;