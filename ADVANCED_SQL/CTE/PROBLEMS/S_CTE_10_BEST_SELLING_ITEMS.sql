----- BEST SELLING ITEM ----- 

WITH best_selling_item AS(
SELECT EXTRACT(MONTH FROM invoicedate) month, description,
SUM(quantity * unitprice) total_invoice,
DENSE_RANK() OVER (PARTITION BY EXTRACT(MONTH FROM invoicedate) ORDER BY SUM(quantity * unitprice) DESC) rnk
FROM online_retail
GROUP BY EXTRACT(MONTH FROM invoicedate), description
)

SELECT month, description, total_invoice
FROM best_selling_item WHERE rnk = 1;