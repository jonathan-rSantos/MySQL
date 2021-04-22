create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tamanho varchar(255) not null,
categoria varchar(255) not null,
contem varchar (255) not null,
primary key (id)
);
-- Popule esta tabela Categoria com até 5 dados.
insert into tb_categoria ( tamanho, categoria , contem ) values ( "Pequena", "Salgada", "Não contem cebola");
insert into tb_categoria ( tamanho, categoria , contem ) values ( "Pequena", "Salgada", "cebola");
insert into tb_categoria ( tamanho, categoria , contem ) values ( "Média", "Salgada", "Não contem cebola");
insert into tb_categoria ( tamanho, categoria , contem ) values ( "Média", "Salgada", "cebola");
insert into tb_categoria ( tamanho, categoria , contem ) values ( "Grande", "Salgada", "Não contem cebola");
insert into tb_categoria ( tamanho, categoria , contem ) values ( "Grande", "Salgada", "cebola");
insert into tb_categoria ( tamanho, categoria , contem ) values ( "Padrão", "Salgada", "Não contem cebola");
insert into tb_categoria ( tamanho, categoria , contem ) values ( "Padrão", "Salgada", "Cebola");
insert into tb_categoria ( tamanho, categoria , contem ) values ( "Padrão", "Doce", "----");
select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
item varchar(255),
sabor varchar (255),
preco double,
ingredientes varchar (255),
pizza_id bigint,
foreign key (pizza_id) references tb_categoria (id),
primary key (id) 
);
-- Popule esta tabela pizza com até 8 dados.
insert into tb_pizza (item, sabor, preco, ingredientes, pizza_id) values ("Pizza", "Sertões", 32.50, "mussarela, carne seca, lascas de queijo coalho", 2);
insert into tb_pizza (item, sabor, preco, ingredientes, pizza_id) values ("Pizza", "Sertões", 27.00, "mussarela, carne seca, lascas de queijo coalho", 4);
insert into tb_pizza (item, sabor, preco, ingredientes, pizza_id) values ("Pizza", "Sertões", 30.00, "mussarela, carne seca, lascas de queijo coalho", 6);
insert into tb_pizza (item, sabor, preco, ingredientes, pizza_id) values ("Pizza", "Baiana", 22.90, "mussarela, calabresa salpicada com pimenta Calábria", 2);
insert into tb_pizza (item, sabor, preco, ingredientes, pizza_id) values ("Pizza", "Baiana", 26.30, "mussarela, calabresa salpicada com pimenta Calábria", 4);
insert into tb_pizza (item, sabor, preco, ingredientes, pizza_id) values ("Pizza", "Baiana", 29.00, "mussarela, calabresa salpicada com pimenta Calábria", 6);
insert into tb_pizza (item, sabor, preco, ingredientes, pizza_id) values ("Pizza", "Peperone", 23.00, "mussarela e peperone", 1);
insert into tb_pizza (item, sabor, preco, ingredientes, pizza_id) values ("Pizza", "Peperone", 25.00, "mussarela e peperone", 3);
insert into tb_pizza (item, sabor, preco, ingredientes, pizza_id) values ("Pizza", "Peperone", 27.00, "mussarela e peperone", 5);
insert into tb_pizza (item, sabor, preco, ingredientes, pizza_id) values ("Pizza", "Do Chef", 50.00, "messarela, pêra, presunto parma desfiado e gratinado com grana padano italiano", 5);
select * from tb_pizza;
-- Faça um select que retorne os Produtos com o valor maior do que 45 reais.
select * from tb_pizza where preco > 45;
-- Faça um select trazendo  os Produtos com valor entre 29 e 60 reais.
select * from tb_pizza where preco between 29 and 60; 
-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
select * from tb_pizza where sabor like 'B%';
-- Faça um um select com Inner join entre  tabela categoria e pizza.
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.pizza_id;
-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.pizza_id where tb_categoria.tamanho = "Média" ;
