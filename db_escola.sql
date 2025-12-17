create database escola;

create table alunos (
	id int auto_increment primary key,
    nome varchar(50),
    idade int,
    serie varchar(50)
    );
    
    insert into alunos (nome, idade, serie) values
    ("João", 16, "8° Ano"),
    ("Maria", 17, "9° Ano"),
    ("José", 12, "2° Ano"),
    ("Paulo", 15, "5° Ano"),
    ("Fátima", 11, "1° Ano");
    
    select * from alunos;
    select nome, idade from alunos;
    select * from alunos where serie = "8° Ano";
    
    set sql_safe_updates = 0; 
    update alunos set idade = 17 where nome = "João";
    delete from alunos where id = 2;
    
    create table Professor (
    id int auto_increment primary key,
    nome varchar(50),
    serie varchar(50),
    idade int,
    matéria varchar(50)
);

insert into Professor (nome, serie, idade, matéria) values
("Mário", "8° Ano", 45, "Matemática"),
("Ana Cristina", "9° Ano", 38, "Português"),
("Rodolfo", "2° Ano", 43, "Educação Física");

select * from Professor;
    
