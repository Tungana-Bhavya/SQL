IBM DB2 PRODUCT ANALYSIS
------

WITH tmp AS (
SELECT e.employee_id, 
COALESCE(COUNT(DISTINCT q.query_id),0) unique_queries,
COUNT(e.employee_id) employee_count
FROM employees e LEFT JOIN queries q
ON e.employee_id = q.employee_id
AND EXTRACT(YEAR FROM query_starttime) =2023 
AND EXTRACT(MONTH FROM query_starttime) IN (7,8,9)
GROUP BY e.employee_id
)

SELECT unique_queries, COUNT(employee_id) employee_count 
FROM tmp GROUP BY unique_queries ORDER BY unique_queries;

