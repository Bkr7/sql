create database autor_editora_109;
use autor_editora_109;

create table autor(
idautor int primary key auto_increment, 
NOME varchar (50) not null, 
EMAIL varchar (50) not null, 
CPF varchar (15) not null, 
SEXO char (1) not null
); 

create table editora(
ideditora int primary key auto_increment, 
NOMEEDITORA varchar (50) not null, 
TELEFONE varchar (20) not null, 
EMAIL varchar (50) not null, 
CNPJ varchar (30) not null
);

create table categoria(
idcategoria int primary key auto_increment, 
TIPOCATEGORIA varchar (50) not null
);

create table livro(
idlivro int primary key auto_increment, 
ISBN varchar (20) not null, 
TITULO varchar (50) not null, 
DATALANCAMENTO date not null, 
NUMEROPAGINA int not null, 
VALOR decimal (7,2) not null, 
idautor int not null, 
ideditora int not null,     
idcategoria int not null, 
foreign key (idautor) references autor (idautor),
foreign key (ideditora) references editora (ideditora), 
foreign key (idcategoria) references categoria (idcategoria)
);

INSERT INTO autor (NOME, EMAIL, CPF, SEXO) 
VALUES ("guilherme", "gui23@gmail.com", "000.000.000-01", "M"),
("fernanda", "fefe@gmail.com", "000.000.000-02", "F"),
("erick", "erick14@gmail.com" , "000.000.000-03", "M"),
("maria", "mama34@gmail", "000.000.000-04", "F"),
("alexandre", "xandy23@gmail.com", "000.000.000-05", "M");

insert into editora (NOMEEDITORA, TELEFONE, EMAIL, CNPJ )
values ("Alvo Literário", "(61) 9822-2324", "alvo@gmail.com", "XX.XXX.XXX/0001-XX"),
("Horizonte Literário", "(68) 7263-78623", "hoho@gmail.com", "XX.XXX.XXX/0002-XX"),
("Ponto de Vista Editora", "(21) 8623-0912", "ponto@gmail.com", "XX.XXX.XXX/0003-XX"),
("Essencia Editorial", "(11) 8623-0912", "essen@gmail.com", "XX.XXX.XXX/0004-XX"), 
("Trilha Literaria", "(48) 65123-8213", "trilha@gmail.com", "XX.XXX.XXX/0005-XX");

insert into categoria (TIPOCATEGORIA)
values ("romance"),
("ação"), 
("terror"),
("aventura"), 
("comedia");  

INSERT INTO livro (ISBN, TITULO, DATALANCAMENTO, NUMEROPAGINA, VALOR, idautor, ideditora, idcategoria)
values ("978-85-1234-567-1", "A jornada de uma alma perdida", "2024-01-12", 244, 1.239,1,1,1)
("976-85-5234-537-1", "ben 10", "2024-05-18", 222, "1.234",1), 
("108-65-1834-567-1", "cachorrinho e o dono", "2024-03-22", 244, "1.239",1),
("971-12-7845-567-5", "rapazinho", "2024-08-01", 99, "1.239",1),
("022-62-0812-567-4", "laoak", "2024-12-12", 244, "3.827",1),
("927-72-0916-453-2", "caça fantasma", "2024-02-09", 281, "2.539",2),
("978-85-1234-567-2", "cururu", "2024-02-19", 180, "1.225",2), 
("348-44-1234-567-2", "www.com", "2024-01-12", 54, "1.875",2), 
("862-74-7514-567-2", "faca e assa", "2024-01-12", 300, "1.239",2),
("198-62-0182-567-4", "kahu", "2024-01-12", 244, "1.239",2),
("874-82-1628-0914-3", "tiro a tiro", "2024-03-13", 87, "3.839",3),
("776-95-1234-567-3", "chichizin", "2024-08-02", 23, "1.452",3), 
("123-05-1194-567-3", "lio e rui", "2024-08-27", 244, "1.762",3),
("926-51-1014-587-3", "clash piry", "2024-06-27", 509, "1.349",3),
("875-62-9274-567-4", "hero el", "2024-01-12", 863, "1.539",3),
("015-13-1093-7158-4", "urso mal", "2024-04-17", 109, "4.139",4),
("982-77-1254-567-4", "blabla", "2024-04-24", 333, "1.987",4),
("092-62-1014-567-4", "romance", "2024-01-12", 214, "1.239",4), 
("982-62-2938-567-4", "of keyr", "2024-01-12", 244, "1.239",4), 
("082-62-9274-567-4", "puab", "2024-11-02", 244, "1.239",4),
("015-13-1093-7158-4", "turma da monica", "2024-05-23", 298, "5.639",5),
("858-55-1324-567-5", "pipio", "2024-12-12", 244, "1.386",5),
("614-09-1014-927-5", "la casa de papel", "2024-23-11", 2443, "1.826",5),
("923-99-9273-567-4", "kstya", "2024-07-13", 666, "2.093",5),
("082-64-9373-567-5", "rei leao", "2024-04-30", 364, "1.209",5);




