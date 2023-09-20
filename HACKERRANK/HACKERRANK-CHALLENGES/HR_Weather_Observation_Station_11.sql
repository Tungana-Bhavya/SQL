- Weather Observation Station 11

Select DISTINCT city from STATION 
WHERE  (CITY NOT LIKE 'a%'
        AND CITY  NOT LIKE 'e%'
        AND CITY NOT LIKE 'i%' 
        AND CITY NOT LIKE 'o%'
        AND CITY NOT LIKE 'u%')
OR (CITY NOT LIKE '%a' AND
    CITY  NOT LIKE '%e' AND
    CITY NOT LIKE '%i' AND 
    CITY NOT LIKE '%o' AND 
    CITY NOT LIKE '%u');