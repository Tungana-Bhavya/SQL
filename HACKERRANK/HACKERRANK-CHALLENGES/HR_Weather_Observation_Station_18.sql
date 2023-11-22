-- Weather Observation Station 18

-- Manhattan Distance Formula for two points (x1,y1) and (x2,y2) is

-- |x1-x2| + |y1-y2| 

-- |(a-c)|+|(b-d)|

select abs(round(min(LAT_N)-max(LAT_N) + min(LONG_W)-max(LONG_W),4)) 
from STATION;

