create ou replace
    function func_trocadept(p_id i number, p_dept in number)
return number
is 
    ret number(3) := 0;
    vqtde number(1);
begin
    select count(*) into vqtde from funcionarios_las
        where employee_id = p_id;
    if vqtde = 1 then
        select count(*) into vqtde from departments
            where departments_id = p_dept;
        if vqtde = 1 then
            update funcionario_las set department_id = p_dept where employee_id = p_id;
            commit;
        else
            ret := -998;
        end if;
    else
        ret:= -999;
    end if;
    return ret;
end;
