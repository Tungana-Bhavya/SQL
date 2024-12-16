The Number of Employee Report to Each Employee
------

SELECT 
m.employee_id, m.name,
COUNT(e.reports_to) reports_count, 
ROUND(AVG(e.age)) average_age
FROM Employees e JOIN Employees m
ON m.employee_id = e.reports_to
GROUP BY employee_id
ORDER BY employee_id;