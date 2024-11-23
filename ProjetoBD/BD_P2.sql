

create table cliente (
	id_carteirinha int primary key,
	cpf varchar(20),
	endereco varchar(20),
	nome varchar(20)
);

create table locatario(
	id_funcionario int primary key,
	nome varchar(20),
	cpf varchar(20),
	endereco varchar(20)
);

create table produto( 
	id_produto int primary key,
	formato_de_midia varchar(20),
	titulo varchar(20)
	
);

create table fornecedor(
	id_fornecedor int primary key,
	empresa varchar(20),
	cpf varchar(20));

create table aluguel(
	id_aluguel SERIAL primary key,
	tempo_de_emprestimo int,
	id_carteira int references cliente(id_carteirinha) on delete cascade,
	id_funcionario int references locatario(id_funcionario) on delete cascade,
	id_produto int references produto(id_produto) on delete cascade
)

insert into cliente (id_carteirinha, cpf, endereco, nome) values 
(2, 222222, 'end2', 'nome2'),
(3, 33333, 'end3', 'nome3');

insert into locatario  (id_funcionario, cpf, endereco, nome) values 
(1, 111111, 'end1', 'nome1'),
(32, 32323233, 'end32', 'nome32');

insert into fornecedor (id_fornecedor, empresa, cpf) values
(1, 'Blockbuster', '0000000'),
(120, 'EmpresaReal', '23223232');

insert into produto (id_produto, formato_de_midia, titulo) values
(12, 'DVD', 'DEVEDE'),
(5, 'VHS', 'VE AGA ESSE');

insert into aluguel (tempo_de_emprestimo, id_carteira, id_funcionario, id_produto) values
(7, 2, 32, 12),
(3, 2, 1, 5)

select * from aluguel a 
select * from locatario l 
select * from produto p 
select * from cliente c 
select * from fornecedor f 

select 
	c.id_carteirinha,
	a.id_aluguel,
	a.id_funcionario,
	a.id_produto
from
	cliente c
join aluguel a on c.id_carteirinha = a.id_carteira 

select 
	l.id_funcionario,
	a.id_aluguel,
	a.id_funcionario,
	a.id_produto
from
	locatario l 
join aluguel a on l.id_funcionario = a.id_funcionario 


