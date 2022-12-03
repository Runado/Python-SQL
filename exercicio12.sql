use fatec

delimiter //

create or replace procedure Umpy (
    in N float unsigned,
    out resultado float unsigned
)
begin
    declare contador int unsigned;

    set contador = 1;
    set resultado = 1;

    while contador <= N do
        set resultado = resultado + (1 / contador);
        set contador = contador + 1;
    end while;
end//

delimiter ;

#Sendo H = 1 + 1/2 + 1/3 + ... + 1/N, faça um programa para gerar o número H. O número N é informado pelo usuário.
