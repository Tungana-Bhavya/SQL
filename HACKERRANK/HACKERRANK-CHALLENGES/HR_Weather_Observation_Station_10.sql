- Weather Observation Station 10

SELECT DISTINCT CITY FROM STATION 
WHERE UPPER(SUBSTR(CITY, LENGTH(CITY), 1)) 
NOT IN ('A','E','I','O','U') 
AND LOWER(SUBSTR(CITY, LENGTH(CITY),1)) 
NOT IN ('a','e','i','o','u');    
