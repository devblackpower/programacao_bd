create or replace
    function func_retnamecargo(p_id in number)
return varchar2
is
    retorno jobs.job_title%type;
    qtde number(1);
begin
    if p_id > 0 and p_id <= 999 then
        select count(*) into qtde from jobs where job_id = p_id;
        if qtde = 1 then
            select job_title into retorno from jobs j inner join employees e
              on j.job_id = e.job_id where employee_id = p_id;
         else
            retorno := 'não existe cargo';
         end if;
    else
        retorno := 'Id fora de faixa';
    end if;
    return retorno;
end;
