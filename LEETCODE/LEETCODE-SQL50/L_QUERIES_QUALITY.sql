Queries Quality and Percentage


------


SELECT QUERY_NAME,ROUND(AVG(RATING/POSITION),2)AS QUALITY,
round(sum(case when rating < 3 then 1 else 0 end) * 100 / count(*), 2) AS POOR_QUERY_PERCENTAGE FROM QUERIES 
GROUP BY QUERY_NAME;

