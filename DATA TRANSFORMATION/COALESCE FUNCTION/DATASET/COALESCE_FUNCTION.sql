-- COALESCE FUNCTION

--CREATION OF STUDENT TABLE

create table student_data
(
id int,
title varchar(5),
first_name varchar(10),
last_name varchar(10),
department varchar(10),
personal_mobile numeric(10),
parent_mobile numeric(10),
address varchar(10)
);

Insert into student_data values(1,'Miss','Shivani', 'K', 'cse', 8986667810, 7064285856, 'Delhi'),
(2,'Mr','Mahesh', 'G', 'cse', NULL, 8014225895,'Mumbai'),
(3,'Miss','Durga', NULL, 'cse',9290217985,NULL,'Hyderabad'),
(4,'Miss',NULL, 'Kavyasree', 'cse', NULL, 7889521704,'Chennai'),
(5,'Mr','Ajay', 'kumar', 'cse', NULL, NULL,'Pune');


-- APPLYING COALESCE FUNCTION ON PERSONAL_MOBILE & PARENT_MOBILE

SELECT *,COALESCE(personal_mobile, parent_mobile) mobile 
FROM student_data;

