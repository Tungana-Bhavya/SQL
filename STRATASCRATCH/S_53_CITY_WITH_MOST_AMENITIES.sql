City With Most Amenities
-------

WITH tmp AS (
SELECT *, COUNT(*) count
FROM airbnb_search_details 
GROUP BY id,city
ORDER BY count DESC
LIMIT 1)

SELECT city FROM tmp;

(or)

SELECT city, COUNT(*) cnt 
FROM airbnb_search_details
GROUP By city
ORDER BY COUNT(*) DESC
LIMIT 1;