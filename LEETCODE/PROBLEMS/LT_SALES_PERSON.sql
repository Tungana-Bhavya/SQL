Sales Person

------

SELECT s.name FROM SalesPerson s 
WHERE s.sales_id
NOT IN (
SELECT o.sales_id 
FROM Orders o JOIN Company c Using(com_id)
WHERE c.name = 'RED'); 