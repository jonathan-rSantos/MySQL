-- Crie um banco de dados para um serviço de uma loja de produtos de construção
--  o nome do banco deverá ter o seguinte nome db_construindo_a_nossa_vida, onde o sistema trabalhará com as informações dos produtos desta empresa. 
create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;
-- O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

-- Siga  exatamente esse passo a passo:

-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do
-- tb_categoria para se trabalhar com o serviço deste ecommerce.
create table tb_categoria(
id bigint auto_increment,
categoria varchar(255) not null,
cor varchar (10) not null,
especificacao varchar(255) not null,
primary key (id)
);
-- Popule esta tabela Categoria com até 5 dados.
insert into tb_categoria(categoria, cor, especificacao) values ("Acessorios", "vermelho", "capinha para celular");
insert into tb_categoria(categoria, cor, especificacao) values ("Acessorios", "Preta", "capinha para celular");
insert into tb_categoria(categoria, cor, especificacao) values ("Acessorios", "branca", "capinha para celular");
insert into tb_categoria(categoria, cor, especificacao) values ("Acessorios", "Minney", "Capinha para celular colorida");
insert into tb_categoria(categoria, cor, especificacao) values ("Pelicula", "Preta", "Pelicula protetora escura");
insert into tb_categoria(categoria, cor, especificacao) values ("Pelicula", "transpa.", "Pelicula protetora");
insert into tb_categoria(categoria, cor, especificacao) values ("Fone", "Branca", "Fone de ouvido");
insert into tb_categoria(categoria, cor, especificacao) values ("Fone", "preta", "Fone de ouvido");
-- Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos relevantes dos 
-- tb_produto para se trabalhar com o serviço de uma loja de produtos (não esqueça de criar a foreign key de tb_categoria nesta tabela).
create table tb_produto (
id bigint auto_increment,
codigo varchar(255) not null,
valor double,
quantidade int(3),
foreign_id bigint,
foreign key (foreign_id) references tb_categoria(id),
primary key (id)
);
-- Popule esta tabela Produto com até 8 dados.
insert into tb_produto (codigo, valor, quantidade, foreign_id) values ("Cp-vm", 20.00, 18, 1);
insert into tb_produto(codigo, valor, quantidade, foreign_id) values ("Cp-pr", 20.00, 10, 2);
insert into tb_produto (codigo, valor, quantidade, foreign_id) values ("Cp-br", 20.00, 13, 3);
insert into tb_produto (codigo, valor, quantidade, foreign_id) values ("Cp-mi", 35.00, 30, 4);
insert into tb_produto (codigo, valor, quantidade, foreign_id) values ("Pl-pr", 15.00, 18, 5);
insert into tb_produto (codigo, valor, quantidade, foreign_id) values ("Pl-tr", 10.00, 18, 6);
insert into tb_produto (codigo, valor, quantidade, foreign_id) values ("fn-br", 10.00, 18, 7);
insert into tb_produto (codigo, valor, quantidade, foreign_id) values ("fn-pre", 10.00, 18, 8);
alter table tb_produto add nome varchar(255) not null;
select * from tb_produto;
update tb_produto set nome = "Fone" where id = 8;
-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.  alterado para 20***
select * from tb_produto where valor > 20;
-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where valor between 3 and 60;
-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
select * from tb_produto where codigo like 'C%';
-- Faça um um select com Inner join entre  tabela categoria e produto.
select * from tb_produto inner join tb_categoria on tb_produto.foreign_id = tb_categoria.id ;
-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria hidráulica).
select * from tb_produto inner join tb_categoria on tb_produto.foreign_id = tb_categoria.id where nome like 'c%';