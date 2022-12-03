charset utf9
use fatec

delimiter //

create or replace procedure consogal(
    in msg text,
    out resp text
)
begin
    if msg = "a" then
        set resp = "vogal";
    elseif msg = "e" then
        set resp = "vogal";
    elseif msg = "i" then
        set resp = "vogal";
    elseif msg = "o" then
        set resp = "vogal";
    elseif msg = "u" then
        set resp = "vogal";
    else
        set resp = "consoante";
    end if;
end//

delimiter ;