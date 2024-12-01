LIST THE PRODUCTS ORDERED IN A PERIOD
------

SELECT p.product_name product_name, 
SUM(o.unit) unit FROM Products p JOIN Orders o
ON p.product_id = o.product_id
WHERE o.order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY product_name
HAVING unit >=100
ORDER BY unit DESC;