USER WITH MOST APPROVED FLAGS
-------

WITH tmp AS (
SELECT CONCAT(COALESCE(user_firstname,''),' ', 
COALESCE(user_lastname,'')) username, 
DENSE_RANK() OVER (ORDER BY COUNT(DISTINCT video_id) DESC) rk
FROM user_flags u INNER JOIN flag_review r
ON u.flag_id = r.flag_id
WHERE reviewed_outcome = 'APPROVED'
GROUP BY username)

SELECT username FROM tmp where rk = 1;