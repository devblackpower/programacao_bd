declare
  a number(3) := 100;
  c employees.first_name%type;
  d employees.department_id%type;
begin
  select first_name, department_id into c,d
  from employees where employee_id = a;
  dbms_output.put_line('O nome '|| c);
  dbms_output.put_line('Departamento '|| d);
end;
