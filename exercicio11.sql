charset utf8
use fatec

delimiter //

create or replace procedure notas(
    in nota float,
    out resp text
)
begin
    if nota < 6 then
        set resp = "F";
    elseif nota >= 6 and nota <= 7 then
        set resp = "D";
    elseif nota >= 7 and nota <= 8 then
        set resp = "C";
    elseif nota >= 8 and nota <= 9 then
        set resp = "B";
    else
        set resp = "A";
    end if;
end//

delimiter ;

#Crie um programa em que peça a nota do aluno, que deve ser um float entre 0.00 e 10.0
#Se a nota for menor que 6.0, deve exibir a nota F.
#Se a nota for de 6.0 até 7.0, deve exibir a nota D.
#Se a nota for entre 7.0 e 8.0, deve exibir a nota C.
#Se a nota for entre 8.0 e 9.0, deve exibir a nota B.
#Por fim, se for entre 9.0 e 10.0, deve exibir um belo de um A.