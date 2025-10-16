USER_SHOPPING_SPREES
------


WITH consecutive_transactions AS (
SELECT user_id, transaction_date,
LEAD(transaction_date, 1) OVER (PARTITION BY user_id ORDER BY transaction_date) AS second_day,
LEAD(transaction_date, 2) OVER (PARTITION BY user_id ORDER BY transaction_date) AS third_day
FROM transactions
)


SELECT user_id FROM consecutive_transactions
WHERE second_day = transaction_date + INTERVAL '1 DAY'
AND third_day = transaction_date + INTERVAL '2 DAYS';