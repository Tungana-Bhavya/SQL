----- PREMIUM ACCOUNTS ----- 

WITH initial_seven_days AS (
SELECT DISTINCT entry_date 
FROM premium_accounts_by_day
ORDER BY entry_date 
LIMIT 7
),

initial_active_accounts AS (
SELECT account_id, entry_date AS initial_date
FROM premium_accounts_by_day
WHERE final_price > 0 
AND entry_date IN (SELECT entry_date FROM initial_seven_days)
),

initial_plus_target_dates AS (
SELECT account_id, initial_date,
DATE_ADD(initial_date, INTERVAL 7 DAY) AS target_date
FROM initial_active_accounts
),

still_paying_after_7_days AS (
SELECT DISTINCT account_id, entry_date AS target_date
FROM premium_accounts_by_day
WHERE final_price > 0
)

SELECT a1.initial_date AS entry_date,
COUNT(DISTINCT a1.account_id) AS premium_paid_accounts,
COUNT(DISTINCT a2.account_id) AS premium_paid_accounts_after_7d
FROM initial_plus_target_dates a1
JOIN still_paying_after_7_days a2
ON a1.account_id = a2.account_id
AND a1.target_date = a2.target_date
GROUP BY a1.initial_date
ORDER BY a1.initial_date;