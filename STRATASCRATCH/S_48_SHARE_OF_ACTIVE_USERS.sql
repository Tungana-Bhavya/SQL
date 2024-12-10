Share of Active Users
-------

WITH tmp AS (
SELECT COUNT(user_id) active_users, country, status FROM fb_active_users
WHERE country='USA' AND status='open'),
tmp2 AS (
SELECT COUNT(user_id) total_users FROM fb_active_users WHERE country='USA')

SELECT active_users/CAST(total_users AS FLOAT) active_users_share FROM tmp,tmp2;

or

WITH tmp AS (
SELECT COUNT(user_id) total_users, 
COUNT(CASE WHEN status = 'open' THEN 1 ELSE NULL END) active_users 
FROM fb_active_users 
WHERE country = 'USA'
)