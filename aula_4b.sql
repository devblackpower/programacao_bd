create or replace
    function func_incores(p_name in varchar2)
    return number
is
    ret number(3) :=0;
    v_cod cores.id%type;
    vqtde number(1);
begin
    if p_name is not null then
        if length(p_name) <= 120 then
            select count(*) into vqtde from cores where upper(name) = upper(p_name);
                if vqtde = 0 then
                    select max(id)+1 into v_cod from cores;
                    insert into cores (id, name) values (v_cod, p_name);
                    commit;
                 else
                    ret := -997;
                 end if;
         else
             ret := -998;
         end if;
     else
         ret:= -999;
    end if;
    return ret;
end;
