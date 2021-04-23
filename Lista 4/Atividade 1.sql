create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
categoria varchar(255) not null,
censura varchar(3) not null,
descricao varchar(255) not null,
primary key (id)
);

insert into tb_classe (categoria, censura, descricao) values ("Terror", "+18","Terror e muitos misterios");
select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar (255),
ataque bigint not null,
caracteristica varchar(255) not null,
acessorio varchar (255) not null,
personagem_id bigint,
foreign key (personagem_id) references tb_classe (id),
primary key (id) 
);
alter table tb_personagem add defesa bigint not null;
update tb_personagem set defesa = 1000.00 where id =  8;
insert into tb_personagem (nome, ataque , caracteristica , acessorio, personagem_id) values ("Alan wake", 1000.00, "Rapido", "Barra", 6);
select * from tb_personagem;
-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
select * from tb_personagem where ataque > 2000;
-- Faça um select trazendo  os personagens com poder de defesa entre 1000 e 2000
select * from tb_personagem where defesa between 1000 and 2000;
-- Faça um select  utilizando LIKE buscando os personagens com a letra C 
select * from tb_personagem where nome like 'C%';
-- Faça um um select com Inner join entre  tabela classe e personagem
select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.personagem_id;
-- Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).
select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.personagem_id where tb_classe.categoria = "Ação"; 


