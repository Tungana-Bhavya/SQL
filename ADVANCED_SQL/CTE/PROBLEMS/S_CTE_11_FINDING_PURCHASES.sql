----- FINDING PURCHASES ----- 

WITH purchases AS (
SELECT *, LAG(created_at) 
OVER(PARTITION BY user_id ORDER BY created_at) previous_purchase
FROM amazon_transactions
)

SELECT DISTINCT user_id FROM purchases 
WHERE previous_purchase IS NOT NULL
AND DATEDIFF(created_at, previous_purchase) <= 7