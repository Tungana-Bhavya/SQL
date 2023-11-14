Second Highest Salary
------
Select max(salary) as SecondHighestSalary 
from Employee where salary <(Select max(salary) 
from Employee);