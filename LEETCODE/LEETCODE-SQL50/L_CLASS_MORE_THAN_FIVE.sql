  Classes More Than 5 Students


------


SELECT CLASS FROM COURSES 
GROUP BY CLASS HAVING COUNT(STUDENT)>=5;
