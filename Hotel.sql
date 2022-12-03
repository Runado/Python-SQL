create or replace table cargo (
codigo smallint unsigned not null primary key,
nome varchar(100) not null unique key
);



create or replace table funcionario (
codigo smallint unsigned not null primary key,
nome varchar(100) not null,
CPF bigint not null unique key,
cargo_cod smallint unsigned not null,
foreign key (cargo_cod) references cargo (codigo)
);



create or replace table quarto (
codigo smallint unsigned not null primary key,
numero mediumint unsigned not null unique key
);


create or replace table hospede (
codigo smallint unsigned not null primary key,
nome varchar(100) not null,
cpf varchar(100) not null unique key,
celular int not null unique key,
email varchar(100) not null unique key,
endereco varchar(100) not null
);

create or replace table hospedagem (
codigo smallint unsigned not null primary key,
horario_de_entrada TIME not null,
horario_de_saida TIME not null,
funcionario_cod smallint unsigned not null,
foreign key (funcionario_cod) references funcionario (codigo),
hospede_cod smallint unsigned not null,
foreign key (hospede_cod) references hospede (codigo),
quarto_cod smallint unsigned not null,
foreign key (quarto_cod) references quarto (codigo)
);

insert into cargo
(codigo, nome) values (1, "Jardineiro");
insert into cargo
(codigo, nome) values (2, "Gerente");
insert into cargo
(codigo, nome) values (3, "Recepcionista");

insert into funcionario
(codigo, nome, CPF, cargo_cod) values (1,"jose lucas", 40992857821, 1);
insert into funcionario
(codigo, nome, CPF, cargo_cod) values (2,"jose ramos", 40992857822, 2);
insert into funcionario
(codigo, nome, CPF, cargo_cod) values (3,"jose lima", 40992857823, 3);

insert into quarto
(codigo, numero) values (1, 501);
insert into quarto
(codigo, numero) values (2, 502);
insert into quarto
(codigo, numero) values (3, 503);


insert into hospede
(codigo, nome, cpf, celular, email, endereco) values (1, "zezao", 40992857825,996521364, "jose@hotmail.com", "Rua Led Zeppelin, Bairro Pink Floyd, n° 505");
insert into hospede
(codigo, nome, cpf, celular, email, endereco) values (2, "lucas", 40992857826,996521365, "ze@hotmail.com", "Rua Nirvana, Bairro Charlie Brown Jr, n° 506");
insert into hospede
(codigo, nome, cpf, celular, email, endereco) values (3, "Tom morello", 40992857827,996521366, "tom@hotmail.com", "Rua Audioslave, Bairro The Doors, n° 507");

insert into hospedagem
(codigo, horario_de_entrada, horario_de_saida, funcionario_cod, hospede_cod, quarto_cod) values (1, '10:00:00', '22:00:00', 1, 2, 3);
insert into hospedagem
(codigo, horario_de_entrada, horario_de_saida, funcionario_cod, hospede_cod, quarto_cod) values (2, '15:30:00', '00:40:23', 2, 3, 1);
insert into hospedagem
(codigo, horario_de_entrada, horario_de_saida, funcionario_cod, hospede_cod, quarto_cod) values (3, '16:30:00', '20:00:23', 3, 1, 2);

SELECT * FROM cargo;
SELECT * FROM funcionario;
SELECT * from hospede;
SELECT * from hospedagem;
SELECT * FROM quarto;