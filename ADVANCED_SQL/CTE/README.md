## Common Table Expression(CTE)
### About CTE

* The temporary table which is used to refer to the original table is called Common Table Expression.
  
* A temporary table called a CTE that can be created with only the required columns, if the original table has too many columns and we only need a small number of them.

* Also, complex queries and sub-queries are easier to write and maintain with the help of CTE.

* CTE can be defined by adding a <b>WITH</b> clause before <b>SELECT, INSERT, UPDATE, DELETE</b> and <b>MERGE</b> statement.

* CTE is consider as one of the most important concept of Structured Query Language(SQL).

* Useful for the developers, data analysts, data scientists and others for extracting data effectively and efficiently from tables containing big data. 


### Syntax: 
<b>-- CTE query<br></b>

WITH cte_name AS(<br>
SELECT col1, col2, col3,...,coln<br>
from table_name WHERE Condition
)<br>

<b>-- Main query</B><br>
SELECT col1, col2,...,coln from cte_name;<br>

* Multiple CTE can also be included in WITH clause and separated with comma.

### Syntax for Multiple CTE

<b>-- CTE query</B>

WITH <br>
	cte_name1 AS(SELECT col1, col2, col3,...,coln<br>
from table_name WHERE Condition,<br>
	cte_name2 AS (SELECT col1, col2, col3,...,coln<br>
from cte_name1 WHERE Condition<br>
)<br>

<b>-- Main query<br></b>
Select col1, col2,...,coln from cte_name2;<br>

* CTE is also used to write recursive functions. 

### Types of cte:

1. Recursive CTE
2. Non-Recursive CTE

### Recursive CTE

* A Recursive cte is a cte that references itself. The CTE repeatedly executes, returns subsets of data, until it returns the complete result set.

* Include 'RECURSIVE' keyword after 'WITH' clause then 'AS' is followed by the parenthesis with the CTE query definiton.

* use UNION, UNION ALL, INTERSECT or EXCEPT to connect more than one individual SELECT statements(recursive part and non-recursive part) in cte body.

### Syntax:

WITH RECURSIVE cte_name AS (<Br>
-- cte_query_definition<br>
UNION ALL<br>
-- cte_query_definition<br>
)<br>
SELECT * from cte_name;<br>

### Non-Recursive CTE

Non-Recursive CTE does not have any reference to itself in the CTE definition.

