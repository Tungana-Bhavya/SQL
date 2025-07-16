----- FINDING USER PURCHASES ----- 

WITH purchase AS (
SELECT user_id, MIN(DATE(created_at)) first_purchase_date 
FROM amazon_transactions
GROUP BY user_id
)
SELECT DISTINCT a2.user_id 
FROM amazon_transactions a1 JOIN purchase a2 
ON a1.user_id = a2.user_id
WHERE DATE(a1.created_at) > a2.first_purchase_date
AND ABS(DATEDIFF(a2.first_purchase_date, a1.created_at)) <= 7
ORDER BY a2.user_id