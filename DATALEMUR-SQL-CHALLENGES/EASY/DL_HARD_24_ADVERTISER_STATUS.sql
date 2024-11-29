Advertiser Status
------

SELECT COALESCE(a.user_id,d.user_id) user_id,
CASE WHEN paid IS NULL THEN 'CHURN'
WHEN paid IS NOT NULL AND status in ('NEW','EXISTING','RESURRECT') THEN 'EXISTING'  WHEN paid IS NOT NULL AND status = 'CHURN' THEN 'RESURRECT'
WHEN paid IS NOT NULL AND status IS NULL THEN 'NEW'
END new_status
FROM advertiser a FULL OUTER JOIN daily_pay d 
ON a.user_id = d.user_id
ORDER BY user_id;