Product Price at Given Date
-------------

WITH tmp AS (
SELECT DISTINCT product_id, 
new_price price, RANK() OVER(PARTITION BY product_id ORDER BY change_date DESC) rk 
FROM Products WHERE change_date <= '2019-08-16'
)
SELECT product_id, price 
FROM tmp WHERE rk = 1 UNION
SELECT DISTINCT product_id, 10 AS price 
FROM products
WHERE product_id NOT IN 
(SELECT product_id FROM products
products WHERE change_date <='2019-08-16'
);

