## Admin Department Employees Beginning in April or Later
-------

select count(distinct worker_id)as n_admins from worker where department='Admin' AND MONTH(joining_date)>=4;