USE BHA;
## Extract function
SELECT EXTRACT(DAY FROM CURRENT_DATE) DAY,
EXTRACT(MONTH FROM CURRENT_DATE) MONTH,
EXTRACT(YEAR FROM CURRENT_DATE) YEAR,
EXTRACT(QUARTER FROM '2023-12-31') QUARTER,
EXTRACT(WEEK FROM '2023-12-31') WEEK,
EXTRACT(HOUR FROM CURTIME()) HOUR,
EXTRACT(MINUTE FROM CURTIME()) MINUTE,
EXTRACT(SECOND FROM '2023-12-31 11:10:44') SECOND;