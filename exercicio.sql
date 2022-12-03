#Código desenvolvido utilizando PL/SQL language

#Faça um Programa que peça as 4 notas bimestrais e mostre a média.

create database trabalho;
delimiter //
create or replace procedure mediaaluno(
	in a double,
	in b double,
	in c double,
	in d double,
	out media double
)
begin
	set media = ( a + b + c + d) / 4;
end//
delimiter ;