SECOND HIGHEST SALARY
------


SELECT max(salary) second_highest_salary from employee 
where salary < (select max(salary) from employee);