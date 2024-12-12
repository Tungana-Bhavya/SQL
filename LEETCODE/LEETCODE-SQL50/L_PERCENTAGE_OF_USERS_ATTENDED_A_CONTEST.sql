Percentage of Users Attended a Contest
------

 
SELECT contest_id, 
ROUND(COUNT(DISTINCT user_id) * 100.0 / (SELECT COUNT(*) FROM Users),2) percentage
FROM register
GROUP BY contest_id
ORDER BY percentage DESC,contest_id ASC