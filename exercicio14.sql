charset utf8
use fatec

delimiter //

create or replace procedure Trespy(
    in N double,
    out resultado text
)
begin
    if N = 2 then
        set resultado = 'Primo';
    elseif N mod N = 0 and N mod 2 <> 0 then
        set resultado = 'Primo';
    else
        set resultado = 'Nao primo';
    end if;
end//

delimiter ;

