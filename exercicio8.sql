charset utf8
use fatec

delimiter //

create or replace procedure maior(
    in num1 double,
    in num2 double,
    out msg text
)
begin
    if num1 > num2 then
        set msg = 'primeiro valor eh o maior';
    else
        set msg = 'segundo valor eh o maior';
    end if;
end//
##Faça um Programa que peça dois números e imprima o maior deles.