Consecutive Numbers
------

SELECT num ConsecutiveNums FROM Logs
WHERE (ID + 1, Num) IN (SELECT * FROM Logs) 
AND (ID +2,Num) IN (SELECT * FROM Logs) 
GROUP BY num;