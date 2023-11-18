## Second Highest Salary
-------
 ## offset is used to skip the n first rows in the output result.

select salary from employee where ( select salary < max(salary) from employee)
order by salary desc limit 1 offset 1;
