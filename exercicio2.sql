#Faça um Programa que converta metros para centímetros.
use fatec;

delimiter //

create or replace procedure convertendo(
	in a double,
	out b double
)
begin
	set b = (a * 100);
end//
delimiter ;