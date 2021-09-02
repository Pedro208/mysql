/*
Questão 1: É uma chave que faz referência à chave primária de outra tabela,
podendo se repetir.
*/

create database if not exists exeFixacao;
use exeFixacao;

#Letra 'a'
create table funcionarios(
	
    cpf varchar(15) primary key,
    nome varchar(50),
    cargo varchar(50),
    idade int,
    salario double
);

insert into funcionarios() values ("123.456.789.10", "Alberto", "Gerente de projetos", 45, 10000);
insert into funcionarios() values ("456.789.101.12", "Juliana", "Executiva de Marketing", 32, 7500);
insert into funcionarios() values ("789.101.121-13", "João Carlos", "Consultor de vendas", 40, 4000);
insert into funcionarios() values ("765.234.890-14", "Benjamin", "Diretor Comercial", 46, 15000);

# Letra 'b'
update funcionarios set salario = 11000 where cpf = "123.456.789.10";

# Letra 'c'
delete from funcionarios where cpf = "789.101.121-13";

# Letra 'd'
select * from funcionarios where salario = (select max(salario) from funcionarios);

# Letra 'e'
select * from funcionarios where nome like '%n%' and nome like '%a%';

# Letra 'f'
select * from funcionarios where nome like 'j%' and nome like '%a';

# Letra 'g'
select * from funcionarios limit 2;

# Letra 'h'
select distinct idade, nome from funcionarios;
