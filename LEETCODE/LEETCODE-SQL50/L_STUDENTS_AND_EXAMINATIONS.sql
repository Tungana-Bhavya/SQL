STUDENTS AND EXAMINATIONS
------

SELECT s.student_id, s.student_name, u.subject_name, 
COUNT(e.student_id) attended_exams
FROM Students s CROSS JOIN subjects u
LEFT JOIN Examinations e
ON s.student_id = e.student_id
AND e.subject_name = u.subject_name
GROUP BY s.student_id,u.subject_name
ORDER BY s.student_id,u.subject_name;