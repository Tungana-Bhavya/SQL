Movie Rating
------
(SELECT u.name results 
FROM Users u JOIN MovieRating mr
ON u.user_id = mr.user_id
GROUP BY u.name
ORDER BY COUNT(mr.user_id) DESC, u.name ASC
LIMIT 1)

UNION ALL

(SELECT m.title results FROM movies m 
JOIN MovieRating mr
ON m.movie_id = mr.movie_id AND
EXTRACT(MONTH FROM created_at)=2 AND EXTRACT(YEAR FROM created_at)=2020
GROUP BY m.title
ORDER BY AVG(mr.rating) DESC, m.title ASC
LIMIT 1);