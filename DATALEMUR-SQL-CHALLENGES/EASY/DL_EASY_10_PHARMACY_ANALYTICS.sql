Pharmacy Analytics

------

SELECT drug,
(total_sales)-(cogs)
AS total_profit FROM pharmacy_sales
group by drug,cogs,total_sales 
ORDER BY total_profit DESC limit 3;