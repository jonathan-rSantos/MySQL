create database db_cursoDaMinhaVida; 
use db_cursoDaMinhaVida;

-- 3 atributos relevantes
create table tb_categoria(
id bigint auto_increment,
duracao int (2) not null,
professor varchar(255) not null,
tipo varchar(255) not null,
primary key (id)
); 
-- Popule esta tabela Categoria com até 5 dados.
insert into tb_categoria (duracao, professor, tipo) values (60, "Jonathan santos", "Java");
insert into tb_categoria (duracao, professor, tipo) values (40, "lucas", "MySQL");
insert into tb_categoria (duracao, professor, tipo) values (60, "Geandro", "Angular");
insert into tb_categoria (duracao, professor, tipo) values (40, "Ed", "HTML");
insert into tb_categoria (duracao, professor, tipo) values (30, "Garibalda", "Excel");
-- 5 atributos relevantes foreign key de tb_categoria 
create table tb_produto (
id bigint auto_increment,
nomeCurso varchar(255) not null,
nivel varchar(255) not null,
diasDasemana varchar(255) not null,
sala int (3) not null,
foreign_id bigint,
primary key(id),
foreign key(foreign_id) references tb_categoria(id)
);
-- Popule esta tabela Produto com até 8 dados.
select * from tb_categoria;
insert into tb_produto (nomeCurso, nivel, diasDaSemana, sala, foreign_id)
values ("Curso de HTML", "Basico", "Seg. a Sex.", 4, 4);
insert into tb_produto (nomeCurso, nivel, diasDaSemana, sala, foreign_id)
values ("Curso de JAVA", "Basico", "Seg. a Sex.", 3, 1);
insert into tb_produto (nomeCurso, nivel, diasDaSemana, sala, foreign_id)
values ("Curso de EXCEL", "Basico", "Seg. a Sex.", 2, 5);
insert into tb_produto (nomeCurso, nivel, diasDaSemana, sala, foreign_id)
values ("Curso de ANGULAR", "Basico", "Seg. a Sex.", 1, 3);
insert into tb_produto (nomeCurso, nivel, diasDaSemana, sala, foreign_id)
values ("Curso de MYSQL", "Basico", "Seg. a Sex.", 2, 2);
insert into tb_produto (nomeCurso, nivel, diasDaSemana, sala, foreign_id)
values ("Curso de HTML", "avançado", "Seg. a Sex.", 4, 4);
insert into tb_produto (nomeCurso, nivel, diasDaSemana, sala, foreign_id)
values ("Curso de JAVA", "avançado", "Seg. a Sex.", 3, 1);
insert into tb_produto (nomeCurso, nivel, diasDaSemana, sala, foreign_id)
values ("Curso de HTML", "Basico", "Seg. a Sex.", 4, 4);
alter table tb_produto add valorCurso double;
select * from tb_produto;
update tb_produto set valorCurso = 40.00 where id = 8;
-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where valorCurso > 50;
-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where valorCurso between 3 and 60;
-- Faça um select  utilizando LIKE buscando os Produtos com a letra J.
select * FROM tb_produto where nomeCurso like '%JA%';
-- Faça um um select com Inner join entre  tabela categoria e produto.
select * from tb_produto inner join tb_categoria on tb_produto.foreign_id = tb_categoria.id;
-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria Java).
select * from tb_produto inner join tb_categoria on tb_produto.foreign_id = tb_categoria.id where tb_categoria.tipo like '%Ht%';