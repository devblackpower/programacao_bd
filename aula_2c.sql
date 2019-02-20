create or replace
    function func_retdept(p_id in number)
return varchar2
is
    retorno departments.department_name%type;
          
begin
    if p_id > 0 and p_id <999999 then
        select department_name into retorno
         from departments dept
         right join employees emp
         on dept.department_id = emp.department_id
         where employee_id = p_id;
     else
        retorno := 'Fora da faixa valida'; -- estava estourando o tamanho da variavel
    end if;
    return retorno;
end;



--para chamar a funcao e printar na tela
declare
  x varchar(4000);
begin
  x := func_retdept(100);
  dbms_output.put_line('x: ' || x);
  
end
