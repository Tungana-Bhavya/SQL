## Average Salaries
-------

select department,first_name,salary, avg(salary) over (partition by department)from employee;