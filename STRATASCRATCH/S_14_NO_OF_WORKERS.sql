## Number of Workers by Department Starting in April or Later
-------

Select department,count(worker_id)as num_workers from worker where MONTH(joining_date)>=4 
group by department
order by num_workers desc;