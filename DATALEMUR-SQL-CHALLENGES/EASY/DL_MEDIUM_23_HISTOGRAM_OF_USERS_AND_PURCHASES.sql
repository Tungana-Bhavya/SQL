Histogram of Users and purchases
------

WITH tmp AS (
SELECT transaction_date,
user_id, product_id,
RANK() OVER (PARTITION BY user_id 
ORDER BY transaction_date desc) RNK
FROM user_transactions)


SELECT transaction_date, user_id, 
COUNT(product_id) purchase_count 
FROM tmp
WHERE RNK =1
GROUP BY user_id, transaction_dates
ORDER BY transaction_date;