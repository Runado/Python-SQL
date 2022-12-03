use fatec;

delimiter //

create or replace procedure fahrenheit(
	in a double,
	out b double
)
begin
	set b = ((a * 9) / 5) + 32;

end//

delimiter ;
#Faça um Programa que peça a temperatura em graus Celsius, transforme e mostre em graus Fahrenheit.