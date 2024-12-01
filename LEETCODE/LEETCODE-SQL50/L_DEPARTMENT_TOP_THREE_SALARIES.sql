DEPARTMENT TOP THREE SALARIES
------

WITH tmp AS (
    SELECT e.name Employee, 
           d.name Department, 
           e.salary Salary, DENSE_RANK() OVER(PARTITION BY d.name 
    ORDER BY e.salary DESC) rnk
FROM Employee e JOIN Department d
ON e.departmentid = d.id
)

SELECT Department, Employee, Salary FROM tmp WHERE rnk <=3
ORDER BY Salary DESC;
