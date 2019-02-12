declare
  a number(3) := 100;
  c varchar2(120);
begin
  select first_name into c from employees where employee_id = a;--into só dentro da programação
  dbms_output.put_line('O nome'|| c);
end;
