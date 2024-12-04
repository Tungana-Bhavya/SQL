Confirmation Rate
-------------------
SELECT s.user_id, ROUND(CAST(COUNT(CASE WHEN c.action='confirmed' 
THEN 1 END) AS FLOAT) / COUNT(s.user_id),2) confirmation_rate 
FROM Signups s LEFT JOIN Confirmations c 
ON s.user_id = c.user_id 
GROUP BY s.user_id;

OR

SELECT user_id, 
ROUND(COUNT(CASE WHEN action='confirmed' THEN 1 END) / COUNT(user_id),2) confirmation_rate FROM Confirmations GROUP BY user_id

UNION

SELECT user_id,0.00 confirmation_rate FROM Signups WHERE user_id 
NOT IN (SELECT user_id FROM Confirmations)