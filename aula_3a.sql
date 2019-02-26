create or replace
    function func_retnamedept(p_id in number)
return varchar2
is
    retorno departments.department_name%type;
    qtde number(1);
begin
    if p_id > 0 and p_id <= 999999 then
        select count(*) into qtde from employees where employee_id = p_id;
        if qtde = 1 then
            select department_name into retorno from employees e left join departments d
                on e.department_id = d.department_id where employee_id = p_id;
        else
            retorno := 'Nao existe func';
        end if;
    else
        retorno :='Id fora da faixa';
    end if;
    return retorno;
end;
