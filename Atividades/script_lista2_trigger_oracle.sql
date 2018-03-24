-- Questão 1
drop table aluno cascade constraints;
create table aluno (cod_aluno number primary key,
nome_aluno varchar2(50),
media number(5,2),
total number(5,2));

drop table disciplina cascade constraints;
create table disciplina (cod_disciplina number primary key,
nome_disciplina varchar2(50));

drop table nota cascade constraints;
create table nota (cod_aluno number references aluno(cod_aluno),
cod_disciplina number references disciplina(cod_disciplina),
nota number(5,2),
primary key (cod_aluno, cod_disciplina));

insert into aluno (cod_aluno, nome_aluno, media, total) values (1, 'Fred Flintstone', 0, 0);
insert into aluno (cod_aluno, nome_aluno, media, total) values (2, 'Barney Rubble', 0, 0);
insert into aluno (cod_aluno, nome_aluno, media, total) values (3, 'Vilma Flintstone', 0, 0);
insert into aluno (cod_aluno, nome_aluno, media, total) values (4, 'Velma Rubble', 0, 0);
insert into aluno (cod_aluno, nome_aluno, media, total) values (5, 'Sr. Pedregulho', 0, 0);

insert into disciplina (cod_disciplina, nome_disciplina) values (1, 'Matemática');
insert into disciplina (cod_disciplina, nome_disciplina) values (2, 'Português');
insert into disciplina (cod_disciplina, nome_disciplina) values (3, 'Química');

-- Questão 2

drop table usuario cascade constraints;
create table usuario (cod_usuario number primary key,
nome_usuario varchar2(50),
saldo_usuario number(10,2)
);

drop table compra cascade constraints;
create table compra  (cod_compra number primary key,
data_compra date,
valor_compra number(5,2),
cod_usuario number references usuario(cod_usuario));

insert into usuario (cod_usuario, nome_usuario, saldo_usuario) values (1, 'Titio Avô', 500);
insert into usuario (cod_usuario, nome_usuario, saldo_usuario) values (2, 'Tigresa Voadora', 230);
insert into usuario (cod_usuario, nome_usuario, saldo_usuario) values (3, 'Steve Pizza', 100);
insert into usuario (cod_usuario, nome_usuario, saldo_usuario) values (4, 'Sr. Gus', 10);

-- Questão 3
drop table produto cascade constraints;

create table produto (cod_produto number primary key,
nome_produto varchar2(50),
valor_produto number(5,2)
);
drop table venda cascade constraints;
create table venda  (cod_venda number primary key,
cod_produto number references produto(cod_produto),
valor_venda number(6,2)
);

insert into produto (cod_produto, nome_produto, valor_produto) values (1, 'Régua', 5);
insert into produto (cod_produto, nome_produto, valor_produto) values (2, 'Lápis', 1);
insert into produto (cod_produto, nome_produto, valor_produto) values (3, 'Borracha', 1.5);
insert into produto (cod_produto, nome_produto, valor_produto) values (4, 'Cola', 2.30);
insert into produto (cod_produto, nome_produto, valor_produto) values (5, 'Caneta', 1.25);

commit;
