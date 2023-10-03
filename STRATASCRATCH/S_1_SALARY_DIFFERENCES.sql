## Salaries Differences

-------

Select ABS(MAX(a.salary)-MAX(b.salary))as salary_difference 
from db_employee a,db_employee b
where a.department_id=4 AND b.department_id=1;