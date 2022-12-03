use fatec;

delimiter //

create or replace procedure areaquadrado(
	in a double,
	out b double
)
begin
	set b = power (a, 2) * 2;

end//

delimiter ;
#Faça um Programa que calcule a área de um quadrado, em seguida mostre o dobro desta área para o usuário.