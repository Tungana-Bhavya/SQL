## WORKERS WITH THE HIGHEST SALARY
-------
with wt as 
(select t.*,w.* from title t join worker w
on w.worker_id=t.worker_ref_id)


select worker_title best_paid_title 
from wt where salary in (select max(salary) from wt)