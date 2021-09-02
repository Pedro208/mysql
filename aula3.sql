create database if not exists aula3;
 
 USE aula3;
 
 create table usuario(
	id int primary key auto_increment,
    nome varchar(45),
    email varchar(45),
    senha varchar(45)
 );
 
 INSERT INTO usuario(nome, email, senha)
 values("Alexandre", "alexandre@email.com", "12345");
 
 INSERT INTO usuario(nome, email, senha)
 values("Natanael", "natanael12@email.com", "ABCDE");
 
 INSERT INTO usuario(nome, email, senha)
 values("Júlia", "julia_09@email.com", "98765");
 
 INSERT INTO usuario(nome, email, senha)
 values("Fernanda", "fenanda@email.com", "EFGHI");
 
 update usuario set senha = "54321" where id = 1;
 
 delete from usuario where id = 4;
 
 select * from usuario;
 
 select * from usuario where nome like '%n%';