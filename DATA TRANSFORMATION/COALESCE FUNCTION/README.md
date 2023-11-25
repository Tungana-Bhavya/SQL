### Coalesce Function

Coalesce function returns the first non-null value in a list. If all the values in the list are NULL, then the function returns null.

<b>Syntax:</b><br> COALESCE(value_1, value_2, ...., value_n)

<b>Examples:</b>

|ID| QUERY               | RESULT              |IMAGE
|--|------------------------ |--------------------|----:|
|EXAMPLE 1|SELECT COALESCE (NULL,'SQL','NO_SQL') res1 |SQL |[OUTPUT](https://github.com/Tungana-Bhavya/SQL/blob/main/DATA%20TRANSFORMATION/COALESCE%20FUNCTION/IMAGES/C_1.jpg)|
|EXAMPLE 2|SELECT COALESCE (NULL,'SQL', 150, 'NO_SQL') res2|SQL|[OUTPUT](https://github.com/Tungana-Bhavya/SQL/blob/main/DATA%20TRANSFORMATION/COALESCE%20FUNCTION/IMAGES/C_2.jpg)|
|EXAMPLE 3|SELECT COALESCE (NULL, 150, 'SQL', 'NO_SQL') res3|150|[OUTPUT](https://github.com/Tungana-Bhavya/SQL/blob/main/DATA%20TRANSFORMATION/COALESCE%20FUNCTION/IMAGES/C_3.jpg)|
|EXAMPLE 4|SELECT COALESCE (NULL, 100, 110, 150) res4|100|[OUTPUT](https://github.com/Tungana-Bhavya/SQL/blob/main/DATA%20TRANSFORMATION/COALESCE%20FUNCTION/IMAGES/C_4.jpg)|
|EXAMPLE 5|SELECT COALESCE (NULL, 150, NULL) res5|150|[OUTPUT](https://github.com/Tungana-Bhavya/SQL/blob/main/DATA%20TRANSFORMATION/COALESCE%20FUNCTION/IMAGES/C_5.jpg)|
|EXAMPLE 6|SELECT COALESCE(NULL, NULL, NULL, 'www.google.com', NULL, 'www.github.com') res6|www.github.com|[OUTPUT](https://github.com/Tungana-Bhavya/SQL/blob/main/DATA%20TRANSFORMATION/COALESCE%20FUNCTION/IMAGES/C_6.jpg)|
|EXAMPLE 7|SELECT COALESCE(NULL, 100, 200, 'www.google.com') as res7|100|[OUTPUT](https://github.com/Tungana-Bhavya/SQL/blob/main/DATA%20TRANSFORMATION/COALESCE%20FUNCTION/IMAGES/C_7.jpg)|




