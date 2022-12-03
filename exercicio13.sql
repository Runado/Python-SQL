use fatec

delimiter //

create or replace procedure Doispy (
    in N int unsigned,
    out resultado int unsigned
)
begin
    declare contador int unsigned;

    set contador = 1;
    set resultado = 1;

    while contador <= N do
        set resultado = resultado * contador;
        set contador = contador + 1;
    end while;
end//

delimiter ;

/* resultado 1 1
/* contador 1 2

/* Faça um programa que calcule o fatorial de um número inteiro fornecido pelo usuário. Ex.: 5!=5.4.3.2.1=120
