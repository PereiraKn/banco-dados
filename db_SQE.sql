create database sqe;

use sqe;

create table cursos (
    id_curso int auto_increment primary key,
    nome_curso varchar(100) not null,
    carga_horaria int not null
);

create table alunos (
    id_aluno int auto_increment primary key,
    nome_aluno varchar(100) not null,
    email varchar(100),
    id_curso int,
    foreign key (id_curso) references cursos(id_curso)
);

create table professores (
    id_professor int auto_increment primary key,
    nome_professor varchar(100) not null,
    especialidade varchar(100)
);

create table matriculas (
    id_matricula int auto_increment primary key,
    id_aluno int not null,
    id_curso int not null,
    id_professor int not null,
    data_matricula date,
    foreign key (id_aluno) references alunos(id_aluno),
    foreign key (id_curso) references cursos(id_curso),
    foreign key (id_professor) references professores(id_professor)
);

insert into cursos (nome_curso, carga_horaria) values
('Análise e desenvolvimento de sistemas', 2400),
('Administração', 2000),
('Ciências contábeis', 3000);

update cursos
set carga_horaria = 2800
where nome_curso = 'Administração';

insert into alunos (nome_aluno, email, id_curso) values
('Breno pereira', 'breno.pereira@email.com', 1),
('Maria oliveira', 'maria.oliveira@email.com', 2),
('Lucas silva', 'lucas.silva@email.com', 1),
('Diana costa', 'diana.costa@email.com', 3);

insert into professores (nome_professor, especialidade) values
('Carlos silva', 'programação'),
('Ana souza', 'gestão'),
('Roberto lima', 'custos');

insert into matriculas (id_aluno, id_curso, id_professor, data_matricula) values
(1, 1, 1, '2020-08-10'),
(2, 2, 2, '2019-02-12'),
(3, 1, 1, '2024-02-15'),
(4, 3, 3, '2023-08-20');

select alunos.nome_aluno, cursos.nome_curso
from alunos
inner join cursos on alunos.id_curso = cursos.id_curso;

select alunos.nome_aluno, cursos.nome_curso, professores.nome_professor, matriculas.data_matricula
from matriculas
inner join alunos on matriculas.id_aluno = alunos.id_aluno
inner join cursos on matriculas.id_curso = cursos.id_curso
inner join professores on matriculas.id_professor = professores.id_professor;
