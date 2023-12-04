SIMPLE PROGRAM ON VOTING USING CASE STATEMENT

------
create table sampledata
(
id int not null,
name varchar(25),
gender char(10),
age int,
PRIMARY KEY(id));

Insert into sampledata values(1,'Samyuktha', 'F',20),
(2,'Akhil', 'M', 18),
(3,'Piyush', 'M', 32),
(4,'Siddi', 'O', 34),
(5,'James', 'M', 17),
(6,'Amulya', 'F', 21),
(7,'Vijay', 'M', 23),
(8,'Avanti', 'O', 30),
(9,'Sami', 'F', 38),
(10,'Krutika', 'O',28);

------

SELECT *,
CASE
	WHEN s1.age >= 18 THEN 'Eligible for Vote'
    WHEN s1.age < 18 THEN 'Not Eligible for Vote'
    ELSE "Invalid input for age"
END AS vote
FROM sampledata s1;

