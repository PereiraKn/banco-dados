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

delete from livros where id = 2;

delete from livros;

set sql_safe_updates = 0;

drop table livros;

create table usuarios(
	id int auto_increment primary key,
    nome varchar(100),
    email varchar(100),
    idade int
);

insert into usuarios (nome, email, idade) values
("Maria Silva", "maria@gmail.com",  30),
("João Pereira", "joao@gmail.com", 25),
("Ana Costa", "ana@gmail.com", 22);

select * from usuarios
