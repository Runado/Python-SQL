use fatec;

delimiter //

create or replace procedure raio(
	in a double,
	out b double
)
begin
	declare c double;
	set c = (pi * a);
	set b = power (c, 2);

end//

delimiter ;
#Faça um Programa que peça o raio de um círculo, calcule e mostre sua área.