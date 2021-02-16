create table contactos(
	id_contacto int identity primary key,
	nome varchar(50) check (len(nome)>3),
	telefone varchar(20) not null,
	email varchar(100) check (email like '%@%.%'),
	data_nascimento date,
	genero varchar(1) check (genero in ('m','f'))
)