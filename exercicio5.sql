use fatec;

delimiter //

create or replace procedure salario(
	in a double,
	in b double,
	out c double
)
begin
	set c = (a * b);

end//

delimiter ;

##Faça um Programa que pergunte quanto você ganha por hora e o número de horas trabalhadas no mês. Calcule e mostre o total do seu salário no referido mês.