create database e_commerce;
-- Popule esta tabela com até 5 dados

create table produtos(
id bigint auto_increment,
nome varchar(10) not null,
descricao varchar(30) not null,
marca varchar(10) not null,
preco double not null,
quantidade int(3) not null,
primary key (id)
);
alter table produtos add nome varchar(20);

select * from produtos;

insert into produtos (nome, descricao, marca, preco, quantidade) values ("Redmi-Note9","Android 10" ,"Xaiomi", 1.398, 10);
insert into produtos (nome, descricao, marca, preco, quantidade)values ("LG-K52","Android 10" ,"LG", 8.99, 10);
insert into produtos  (nome, descricao, marca, preco, quantidade)values ("Galaxy-A21s","Android 10" ,"Samsung", 1.329, 10);
insert into produtos (nome, descricao, marca, preco, quantidade)values ("Galaxy-A12","Android 10" ,"Samsung", 1.070, 10);
insert into produtos (nome, descricao, marca, preco, quantidade)values ("Iphone-6","IOS 8" ,"Apple", 1.845, 10);
insert into produtos  (nome, descricao, marca, preco, quantidade)values ("iPhone-11","IOS 13" ,"Apple", 3.898, 10);
insert into produtos (nome, descricao, marca, preco, quantidade) values ("Moto G9-Power","Android 10" ,"Motorola", 1.394, 10);
insert into produtos (nome, descricao, marca, preco, quantidade)values ("MotoE7-Plus","Android 10" ,"Motorola", 989, 10);

-- Faça um select que retorne os produtos com o valor maior do que 500.
select * from produtos where preco > 500;

-- Faça um select que retorne os produtos com o valor menor do que 500.
select * from produtos where preco < 500.0;

-- Ao término atualize um dado desta tabela através de uma query de atualização.
update produtos set preco = 989.00 where id =8;