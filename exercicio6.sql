use fatec;

delimiter //

create or replace procedure temp(
	in a double,
	out b double
)
begin
	set b = 5 * ((a-32) /9);

end//

delimiter ;

#Faça um Programa que peça a temperatura em graus Fahrenheit, transforme e mostre a temperatura em graus Celsius.
#C = 5 * ((F-32) / 9).