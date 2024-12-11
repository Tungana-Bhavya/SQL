Top Five States With Five Star Business
-------

WITH tmp AS (
SELECT state, COUNT(stars) top,
DENSE_RANK() OVER (ORDER BY COUNT(stars) DESC) rk
FROM yelp_business
WHERE stars = 5
GROUP BY state
ORDER BY top DESC, state
)

SELECT state, top FROM tmp WHERE rk <5;