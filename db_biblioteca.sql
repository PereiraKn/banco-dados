create database db_biblioteca;

use db_biblioteca;

create table livros(
	id int auto_increment primary key,
    titulo varchar(100),
    autor varchar(100),
    ano_publicacao int
);

insert into livros (id, titulo, autor, ano_publicacao) values
(1, "Dom Casmurro", "Machado de Assis", "1899"),
(2, "O Alienista", "Machado de Assis", "1882"),
(3, "Memórias Póstumas de Brás Cubas", "Machado de Assis", "1881"),
(4, "Capitães de Areia", "Jorge Amado", "1937");

select * from livros;

select titulo, autor from livros;

select * from livros where autor = "Machado de Assis";

update livros set ano_publicacao = 1938 where titulo = "Capitães de Areia";
