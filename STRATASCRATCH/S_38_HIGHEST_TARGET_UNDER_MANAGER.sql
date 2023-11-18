## Highest Target Under Manager
-------

select first_name, target from salesforce_employees 
group by first_name, manager_id having manager_id=13
order by max(target) desc limit 3;