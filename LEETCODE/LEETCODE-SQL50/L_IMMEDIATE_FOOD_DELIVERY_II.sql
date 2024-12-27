Immediate Food Delivery II
-----------------------

SELECT ROUND(COUNT(CASE WHEN a.customer_pref_delivery_date = a.order_date THEN 1 ELSE NULL END) * 100 / COUNT(*),2) immediate_percentage FROM delivery a 
WHERE a.order_date =
(SELECT MIN(order_date) FROM delivery b WHERE
a.customer_id = b.customer_id)