Replace Employee ID With The Unique Identifier


------

SELECT unique_id, name FROM Employees 
LEFT JOIN EmployeeUNI
ON IF (Employees.id = EmployeeUNI.id, Employees.id, NULL)