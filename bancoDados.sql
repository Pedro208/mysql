create database if not exists aulabd;
 
 USE aulabd;
 
 create table user(
 
	id int primary key auto_increment,
	nome varchar(50),
    idade int,
    endereco varchar(50)
);