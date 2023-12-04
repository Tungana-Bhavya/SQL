### SQL CASE STATEMENT

- CASE statement is similar to IF-ELSE statement in other programming lanuages.
- The INSERT & UPDATE statements as well as the ORDER BY and GROUP BY clause, can also be used with case statement.
- At least one set of WHEN and THEN statements always follow a SQL CASE statement, and the END keyword always completes the query.
- Syntax:
<br>CASE
     <br>WHEN CONDITION_1 THEN STATEMENT_1,
     <br>WHEN CONDITION_2 THEN STATEMENT_2,
     <br>WHEN CONDITION THEN STATEMENT_N,
     <br>ELSE result
<br>END;
- If the condition evaluates to true then the statement returns value, otherwise returns the value of ELSE portion.
- Once the condition is met, the CASE statement will stop verifying further and it will return the result.
- A NULL value is returned in the absence of an ELSE part(optional) and when none of the conditions evaluates to True.
- Example:

  SELECT *, <br>
CASE<br>
	WHEN s1.age >= 18 THEN 'Eligible for Vote'<br>
    WHEN s1.age < 18 THEN 'Not Eligible for Vote'<br>
    ELSE "Invalid input for age"<br>
END AS vote<br>
FROM sampledata s1;<br>
- Output: [👆](https://github.com/Tungana-Bhavya/SQL/blob/main/DATA%20TRANSFORMATION/CASE/CASE%20STATEMENT.jpg)


