-- SQL CONCAT

------
-- SQL CONCAT ON TABLE DATA

SELECT id, title, first_name, 
last_name, CONCAT(title, " ", first_name, " ", last_name) full_name
FROM student_data;

-----
-- SQL CONCAT ON STRING AND NUMBER

SELECT CONCAT('string concat','without_space') String_Concat,
CONCAT('string', ' ','concat', ' ','with',' ','space') String_Concat,
CONCAT(10,10) Number_Concat,
CONCAT(10,' ',10) Number_Concat,
CONCAT('SQL',10) String_and_Num,
CONCAT(10,'SQL') Num_and_String,
CONCAT('SQL PRACTICE', 10, NULL) String_and_Num_with_Null;
