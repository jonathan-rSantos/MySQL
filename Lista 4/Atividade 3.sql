
-- Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco deverá ter o seguinte 
-- nome db_farmacia_do_bem, onde o sistema trabalhará com as informações dos produtos desta empresa. 
create database db_farmacia_do_bem;
use db_farmacia_do_bem;
-- O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
-- siga  exatamente esse passo a passo:

-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria
-- para se trabalhar com o serviço desta farmacia.
create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null, 
sessao varchar(255) not null,
corredor int not null,
primary key(id)
);
-- Popule esta tabela Categoria com até 5 dados.
insert into tb_categoria (tipo, sessao, corredor) values ("Cosméticos" , "Higiene pessoal", 1);
insert into tb_categoria (tipo, sessao, corredor) values ("Shampoos" , "Banho", 1);
insert into tb_categoria (tipo, sessao, corredor) values ("Suplementação" , "Esportes", 2);
insert into tb_categoria (tipo, sessao, corredor) values ("Vitaminas" , "Esportes", 2);
insert into tb_categoria (tipo, sessao, corredor) values ("Desodorante" , "Cuidados essenciais", 3);
insert into tb_categoria (tipo, sessao, corredor) values ("Barbeador" , "Cuidados essenciais", 3);
insert into tb_categoria (tipo, sessao, corredor) values ("Remedios" , "Saúde", 4);
insert into tb_categoria (tipo, sessao, corredor) values ("Generico" , "Saúde", 4);

-- Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto 
-- para se trabalhar com o serviço deste farmacia(não esqueça de criar a foreign key de tb_categoria nesta tabela).
create table tb_produto(
id bigint auto_increment,
nome varchar(255),
valor double,
generico boolean,
quantidade int(4),
produto_id bigint,
foreign key(produto_id) references tb_categoria(id),
primary key (id)
);
-- Popule esta tabela Produto com até 8 dados.
insert tb_produto (nome, valor, generico, quantidade, produto_id) values ("Malbec", 90.00, false, 10, 1);
insert tb_produto (nome, valor, generico, quantidade, produto_id) values ("Clear man", 27.00, false, 10, 2);
insert tb_produto (nome, valor, generico, quantidade, produto_id) values ("Whey protein", 100.00, false, 10, 3);
insert tb_produto (nome, valor, generico, quantidade, produto_id) values ("Calcio A a Z", 45.60, false, 10, 4);
insert tb_produto (nome, valor, generico, quantidade, produto_id) values ("Rexona", 9.00, false, 10, 5);
insert tb_produto (nome, valor, generico, quantidade, produto_id) values ("Gillete Maq3", 5.00, false, 10, 6);
insert tb_produto (nome, valor, generico, quantidade, produto_id) values ("Dipirona", 4.50, false, 10, 7);
insert tb_produto (nome, valor, generico, quantidade, produto_id) values ("Dipirona", 2.50, false, 10, 8);
-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where valor > 50;
-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where valor between 3 and 60;
-- Faça um select  utilizando LIKE buscando os Produtos com a letra B. alterado para D pois não adicionei com letra B *********
select * from tb_produto where nome like 'D%';
-- Faça um um select com Inner join entre  tabela categoria e produto.
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.produto_id;
-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.produto_id where tb_categoria.tipo = "Cosméticos";