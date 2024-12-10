FIND THE RATE OF PROCESSED TICKET FOR EACH TYPE
-------

WITH tmp AS (
SELECT type,
COUNT(CASE WHEN processed = 'TRUE' THEN 1 ELSE 0 END) a,
COUNT(complaint_id) b
FROM facebook_complaints
GROUP BY type)

SELECT type, (a/b) processed_rate FROM tmp

(OR)

SELECT type, SUM(IF(processed, 1, 0))/COUNT(*)
FROM facebook_complaints
GROUP BY type