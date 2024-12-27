Restaurant Growth
-----------------------

WITH sum_amt AS (
SELECT DISTINCT visited_on, SUM(amount) OVER(ORDER BY visited_on RANGE BETWEEN INTERVAL 6 DAY PRECEDING AND CURRENT ROW) amount
FROM Customer ORDER BY visited_on)


SELECT visited_on, amount, ROUND(amount/7,2) average_amount
FROM sum_amt WHERE DATE_ADD((SELECT MIN(visited_on) FROM Customer), INTERVAL 6 DAY) <= visited_on;
