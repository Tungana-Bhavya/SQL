### Coalesce Function

Coalesce function returns the first non-null value in a list. If all the values in the list are NULL, then the function returns null.

<b>SYNTAX:</b><br> COALESCE(value_1, value_2, ...., value_n)

<b>EXAMPLES:</b>

|ID| QUERY               | RESULT              |IMAGE
|--|------------------------ |--------------------|----:|
|EXAMPLE 1|SELECT COALESCE (NULL,'SQL','NO_SQL') res1 |SQL |[OUTPUT](https://github.com/Tungana-Bhavya/SQL/blob/main/DATA%20TRANSFORMATION/COALESCE%20FUNCTION/IMAGES/C_1.jpg)|
|EXAMPLE 2|SELECT COALESCE (NULL,'SQL', 150, 'NO_SQL') res2|SQL|[OUTPUT](https://github.com/Tungana-Bhavya/SQL/blob/main/DATA%20TRANSFORMATION/COALESCE%20FUNCTION/IMAGES/C_2.jpg)|
|EXAMPLE 3|SELECT COALESCE (NULL, 150, 'SQL', 'NO_SQL') res3|150|[OUTPUT](https://github.com/Tungana-Bhavya/SQL/blob/main/DATA%20TRANSFORMATION/COALESCE%20FUNCTION/IMAGES/C_3.jpg)|
|EXAMPLE 4|SELECT COALESCE (NULL, 100, 110, 150) res4|100|[OUTPUT](https://github.com/Tungana-Bhavya/SQL/blob/main/DATA%20TRANSFORMATION/COALESCE%20FUNCTION/IMAGES/C_4.jpg)|
|EXAMPLE 5|SELECT COALESCE (NULL, 150, NULL) res5|150|[OUTPUT](https://github.com/Tungana-Bhavya/SQL/blob/main/DATA%20TRANSFORMATION/COALESCE%20FUNCTION/IMAGES/C_5.jpg)|
|EXAMPLE 6|SELECT COALESCE(NULL, NULL, NULL, 'www.google.com', NULL, 'www.github.com') res6|www.github.com|[OUTPUT](https://github.com/Tungana-Bhavya/SQL/blob/main/DATA%20TRANSFORMATION/COALESCE%20FUNCTION/IMAGES/C_6.jpg)|
|EXAMPLE 7|SELECT COALESCE(NULL, 100, 200, 'www.google.com') as res7|100|[OUTPUT](https://github.com/Tungana-Bhavya/SQL/blob/main/DATA%20TRANSFORMATION/COALESCE%20FUNCTION/IMAGES/C_7.jpg)|

<b>EXAMPLE 8:</b> <br>

SELECT * FROM student_data;

<b>OUTPUT:</b><br>
|id| title              | first_name             |last_name|department|personal_mobile|parent_mobile|address|
|--|--------------------|------------------------|---------|----------|---------------|-------------|-------:|
|1|Miss|Shivani|K|cse|8986667810|7064285856|Delhi|
|2|	Mr|Mahesh|G|cse|NULL|8014225895|Mumbai|
|3|Miss|Durga|NULL|cse|9290217985|NULL|Hyderabad|
|4|Miss|NULL|Kavyasree|cse|NULL|7889521704|Chennai|
|5|Mr|Ajay|kumar|cse|NULL|NULL|Pune|

SELECT *,COALESCE(personal_mobile, parent_mobile) mobile FROM student_data; [CLICK HERE](https://github.com/Tungana-Bhavya/SQL/blob/main/DATA%20TRANSFORMATION/COALESCE%20FUNCTION/IMAGES/COALESCE_EXAMPLE.jpg)

<b>OUTPUT:</b>
|id| title              | first_name             |last_name|department|personal_mobile|parent_mobile|address|mobile|
|--|--------------------|------------------------|---------|----------|---------------|-------------|-------|------:|
|1|Miss|Shivani|K|cse|8986667810|7064285856|Delhi|8986667810|
|2|	Mr|Mahesh|G|cse|NULL|8014225895|Mumbai|8014225895|
|3|Miss|Durga|NULL|cse|9290217985|NULL|Hyderabad|9290217985|
|4|Miss|NULL|Kavyasree|cse|NULL|7889521704|Chennai|7889521704|
|5|Mr|Ajay|kumar|cse|NULL|NULL|Pune|NULL|





