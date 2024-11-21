TOP THREE SALARIES 
------

with tmp as (
select d.department_name,
e.name,e.salary, dense_rank() over(partition by d.department_name 
order by d.department_name asc, e.salary desc) rnk
from employee e join department d 
on e.department_id= d.department_id   
)

select department_name, name, salary from tmp where rnk <=3;