Voting System

Creation of Voter table

CREATE database voting_systems;
USE voting_systems;
CREATE table Voter (
    EPIC_NO INT PRIMARY KEY,
    NAME VARCHAR(20) NOT NULL,
    AGE INT CHECK (AGE >= 18),
    GENDER VARCHAR(10) NOT NULL CHECK (GENDER IN ('Male', 'Female', 'Other')),
    STATE VARCHAR(15) NOT NULL,
    LOCATION VARCHAR(20) NOT NULL,
    UNIQUE(NAME, LOCATION)
);

ALTER table Voter
DROP CONSTRAINT voter_chk_1;

ALTER table Voter
ADD CHECK (AGE >= 18);

Desc Voter;

Insert into Voter(EPIC_NO, NAME, AGE, GENDER, STATE, LOCATION) Values
(1011,'Bhavana k', 25,'Female','Telangana','Hyderabad'),
(1012,'Arjun kumar', 27,'Male','Telangana','Hyderabad'),
(1013,'Piyush J', 40,'Male','Telangana','Hyderabad'),
(1021,'R K Nanisha', 30,'Female','Telangana','Hyderabad'),
(1045,'Sanjay A', 18,'Male','Telangana','Hyderabad');

select * from Voter;

Insert into Voter(EPIC_NO, NAME, AGE, GENDER, STATE, LOCATION) Values
(1045,'Sam', 16,'Male','Telangana','Hyderabad');

Select * from Voter;

Creation of Candidate table

CREATE table Candidate(
    C_ID INT PRIMARY KEY,
    NAME VARCHAR(20) NOT NULL,
    PARTY VARCHAR(10) NOT NULL,
    POSITION VARCHAR(10) NOT NULL,
    UNIQUE(NAME, POSITION)
);
Insert into Candidate(C_ID, NAME, PARTY, POSITION) Values
(101,'Bajaj', 'ABC','MP'),
(102,'Milin', 'XYZ','MP'),
(103,'Melon', 'DEF','MP'),
(104,'Leechy', 'PQR','MP');

Select * from Candidate;

Desc Candidate;

