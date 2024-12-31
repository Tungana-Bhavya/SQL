Last Person To Fit In Bus
------

SELECT person_name FROM (SELECT person_name,turn,
SUM(weight) OVER (ORDER BY turn) a FROM queue) p1
WHERE a<=1000 ORDER BY turn DESC LIMIT 1;