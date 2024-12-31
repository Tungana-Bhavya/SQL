Game Play Analysis IV
------

WITH tmp AS
(
SELECT *, LAG(event_date) OVER(PARTITION BY player_id ORDER BY
event_date) player_date,
ROW_NUMBER() OVER(PARTITION BY player_id ORDER BY event_date) num FROM Activity), 
tmp1 AS (
SELECT * FROM tmp WHERE player_date = event_date -INTERVAL 1 DAY AND num = 2
)
SELECT ROUND((COUNT(DISTINCT player_id)/(SELECT COUNT(DISTINCT player_id) FROM Activity)),2) fraction FROM tmp1

OR

SELECT ROUND(COUNT(DISTINCT player_id) / (SELECT COUNT(DISTINCT player_id) 
FROM Activity), 2) fraction FROM Activity
WHERE (player_id, DATE_SUB(event_date, INTERVAL 1 DAY))
IN (SELECT player_id, MIN(event_date) first_login 
FROM ACTIVITY GROUP BY player_id)