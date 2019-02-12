declare
  v_perc number(8,2) := 0.10;--varia começando com v(variavel)
  v_new_salary number(9,2) := 0;--posso fazer como employees.salary%type
  v_salary employees.salary%type;
  a employees.first_name%type;
  v_calc number(8,2) :=0;
  b number(3) := 110;
 
begin
  select first_name, salary into a, v_salary
  from employees where employee_id = b;
  
  v_calc := v_salary * v_perc; --v_new_salary = v_salary + (v_salary * v_perc);
  v_new_salary := v_salary + v_calc;
  
  dbms_output.put_line('O nome '|| a);
  dbms_output.put_line('Salario: '|| v_salary);
  dbms_output.put_line('Novo salario: '|| v_new_salary);
end;
