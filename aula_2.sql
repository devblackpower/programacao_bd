select department_name
from departments dept
right join employees emp
on dept.department_id = emp.department_id
where employee_id = 100;
