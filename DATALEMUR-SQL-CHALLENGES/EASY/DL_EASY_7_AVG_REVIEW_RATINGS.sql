AVERAGE REVIEW RATINGS

------

SELECT EXTRACT(Month FROM submit_date)AS mth,
product_id as product,round(avg(stars),2)AS avg_stars 
FROM reviews 
GROUP BY mth,product 
ORDER BY mth,product;