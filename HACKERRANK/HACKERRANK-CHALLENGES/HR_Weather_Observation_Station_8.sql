- Weather Observation Station 8

SELECT DISTINCT CITY 
FROM STATION WHERE 
LEFT(CITY,1) IN ('A','E','I','O','U','a','e','i','o','u') 
AND RIGHT(CITY,1) IN ('A','E','I','O','U','a','e','i','o','u');