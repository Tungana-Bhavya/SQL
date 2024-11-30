Repeated Transactions
------

SELECT COUNT(*) payment_count
FROM transactions t1 
INNER JOIN transactions t2
ON t1.transaction_id < t2.transaction_id
AND t1.merchant_id = t2.merchant_id
AND t1.credit_card_id = t2.credit_card_id
AND t1.amount = t2.amount
AND t2.transaction_timestamp <= t1.transaction_timestamp 
+ INTERVAL '10 minutes'