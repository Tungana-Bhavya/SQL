### SQL CONCAT FUNCTION

- CONCAT() function is used to join two or more string values together to form single string.<br>
- CONCAT() function takes minimum of two input values & maximum of 255 values.<br>
- Before the concatenation, input values are implicitly converted to string types.<br>
- Syntax:<br>
  CONCAT(expression1, expression2, expression3,...)
- A NULL value is converted to an empty string when it is passed as an argument to the CONCAT() function.<br>

- Example:<br>
#### Concatenation on table data:<br>
SELECT id, title, first_name, <br>
last_name, CONCAT(title, " ", first_name, " ", last_name) full_name<br>
FROM student_data;<br>

<b>Output:</b> [👆](https://github.com/Tungana-Bhavya/SQL/blob/main/DATA%20TRANSFORMATION/CONCATENATE/SQL_CONCAT_2.jpg)

#### Concatenation on String and Numerical data:<br>
SELECT CONCAT('string concat','without_space') String_Concat,<br>
CONCAT('string', ' ','concat', ' ','with',' ','space') String_Concat,<br>
CONCAT(10,10) Number_Concat,<br>
CONCAT(10,' ',10) Number_Concat,<br>
CONCAT('SQL',10) String_and_Num,<br>
CONCAT(10,'SQL') Num_and_String,<br>
CONCAT('SQL PRACTICE', 10, NULL) String_and_Num_with_Null;<br>

<b>Output:</b> [👆](https://github.com/Tungana-Bhavya/SQL/blob/main/DATA%20TRANSFORMATION/CONCATENATE/SQL_CONCAT_1.jpg)

  


