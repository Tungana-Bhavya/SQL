## Employee and Manager Salaries
-------

select first_name employee_name, salary employee_salary from employee
where employee_title = 'manager'
order by employee_salary desc limit 1;