begin for rs in(select employee_id as codigo, first_name, salary
    from employees
    where department_id = 90 order by first_name desc)
loop
    x := rs.salary * (pdix/100);
    if x > 10000 then
    --condição
    else
    -condição
    end if;
    --condição
    dbms_output.put_line('Nome: '||rs.first_name);
    dbms_output.put_line('ID: '||rs.codigo);
  end loop;
end;
    
