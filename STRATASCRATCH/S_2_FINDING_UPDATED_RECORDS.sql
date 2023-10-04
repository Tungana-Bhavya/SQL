## Finding Updated Records

-------

select id,first_name,last_name,department_id,
max(salary) from ms_employee_salary
group by id,first_name,last_name,department_id
order by id asc;