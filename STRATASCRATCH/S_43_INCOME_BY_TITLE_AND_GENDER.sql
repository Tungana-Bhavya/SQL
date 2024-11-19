## INCOME BY TITLE AND GENDER
-------
select 
e.employee_title, e.sex, avg(e.salary + b.bonus) avg_compensation 
from sf_employee e inner join (select b.worker_ref_id, sum(b.bonus) bonus from sf_bonus b group by worker_ref_id) b on e.id = b.worker_ref_id 
group by e.employee_title,e.sex;