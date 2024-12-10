Flags Per Video
-------

SELECT video_id,
COUNT(DISTINCT CONCAT(COALESCE(user_firstname,''),COALESCE(user_lastname,''))) num_unique_users
FROM user_flags
WHERE flag_id IS NOT NULL
GROUP BY video_id;