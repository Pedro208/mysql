create database if not exists prova1;

use prova1;
/*Q1 - Uma chave primaria e a coluna de referencia da tabela, tem que ser 
um valor unico, que não se repete para identificar a informação daquela linha.
A chave estrangeira pode ser a chave primaria de outra tabela, que é usada
para relacionar as duas tabelas.
*/
create table estudante(
   matricula int primary key,
   nome varchar(60),
   idade int,
   cidade varchar(70),
   curso varchar(5)
);
#Q2 - a
insert into estudante() values (1545, "Alessandro", 22, "Itajubá","GEC");
insert into estudante() values (25, "Bruno", 20, "Pouso Alegre","GES");
insert into estudante() values (9875, "Álvaro", 20, "Pouso Alegre","GET");
insert into estudante() values (1346, "Camila", 21, "Cachoeira de Minas","GEB");
insert into estudante() values (436, "Juliana", 23, "Belo Horizonte","GEP");
insert into estudante() values (9546, "Marcelo", 19, "Pouso Alegre","GET");

#Q2 - b
update estudante set idade = 22 where matricula = 1346;

#Q2 - c
delete from estudante where matricula = 9875;

#Q2 - d #
select min(idade), matricula, nome, cidade, curso from estudante;

#Q2 - e
select nome from estudante where nome like '%b%';

#Q2 - f
select * from estudante where curso = "GET";

#Q2 - g
select nome, cidade from estudante where cidade = "Pouso Alegre";

#Q2 - h
select distinct cidade from estudante;

#Q2 - i
select * from estudante limit 3;
