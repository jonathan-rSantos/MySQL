-- Crie um banco de dados para um serviço de um açougue, o nome do banco deverá ter o seguinte 
-- nome db_cidade_das_carnes, onde o sistema trabalhará com as informações dos produtos desta empresa. 
create database db_cidade_das_carnes;
use db_cidade_das_carnes;
-- O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
-- siga exatamente esse passo a passo:
-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do
-- tb_categoria para se trabalhar com o serviço desse açougue.
create table tb_categoria(
id bigint auto_increment,
tipo varchar (255) not null,
situacao varchar (255),
primary key (id)
);
-- Popule esta tabela Categoria com até 5 dados.
insert into tb_categoria (tipo,situacao) values ("Bovino", "Congelador");
insert into tb_categoria (tipo,situacao) values ("Bovino", "Frezzer");
insert into tb_categoria (tipo,situacao) values ("Aves", "Congelador");
insert into tb_categoria (tipo,situacao) values ("Aves", "Frezzer");
insert into tb_categoria (tipo,situacao) values ("Suino", "Congelador");
select * from tb_categoria;
-- Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos relevantes dos 
-- tb_produto para se trabalhar com o serviço desse açougue(não esqueça de criar a foreign key de tb_categoria nesta tabela).
create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal not null,
qtProduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);
-- Popule esta tabela Produto com até 8 dados.
insert tb_produto (nome, preco, qtProduto, categoria_id) values ("ASA",40.00,30,3);
insert tb_produto (nome, preco, qtProduto, categoria_id) values ("Picanha",20.00,30,1);
insert tb_produto (nome, preco, qtProduto, categoria_id) values ("coxa de frango",20.00,30,3);
insert tb_produto (nome, preco, qtProduto, categoria_id) values ("Bacon",30.00,30,5);
insert tb_produto (nome, preco, qtProduto, categoria_id) values ("hamburguer",60.00,30,2);
insert tb_produto (nome, preco, qtProduto, categoria_id) values ("Cupim",20.00,30,1);
insert tb_produto (nome, preco, qtProduto, categoria_id) values ("Chicken de frango",15.00,30,4);
insert tb_produto (nome, preco, qtProduto, categoria_id) values ("Orelha de porco",20.00,30,4);

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where preco > 50;
-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where preco between 3 and 60;
-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
select * from tb_produto where nome like 'C%';
-- Faça um um select com Inner join entre  tabela categoria e produto.
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.situacao = "Congelador";