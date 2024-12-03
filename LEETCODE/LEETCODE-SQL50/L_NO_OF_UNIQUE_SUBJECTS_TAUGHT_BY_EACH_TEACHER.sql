NO OF UNIQUE SUBJECTS TAUGHT BY EACH TEACHER
------


SELECT DISTINCT teacher_id, 
COUNT(DISTINCT subject_id) cnt 
FROM Teacher GROUP BY teacher_id 
ORDER BY cnt;