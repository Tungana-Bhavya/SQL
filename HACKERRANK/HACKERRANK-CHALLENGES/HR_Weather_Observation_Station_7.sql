- Weather Observation Station 7

Select Distinct CITY 
from STATION 
WHERE right(city,1) 
IN('a', 'e', 'i', 'o', 'u');