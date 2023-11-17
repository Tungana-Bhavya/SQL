## Highest Salary In Department
-------

select department, first_name as employee_name, salary 
from employee where salary in 
(select max(salary) from employee group by department);