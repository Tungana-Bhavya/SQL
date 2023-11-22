-- Weather Observation Station 19

-- Euclidean Distance Formula for two points (x1,y1) and (x2,y2) is

-- sqrt((power(x2-x1),2)+ power(y2-y1),2))


select round(sqrt(power(max(LAT_N)-min(LAT_N),2) + power(max(LONG_W)-min(LONG_W),2)),4) from STATION;

