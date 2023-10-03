Pharmacy Analytics ii

------

SELECT manufacturer,
count(drug)as drug_count,
sum(cogs-total_sales) as total_loss
FROM pharmacy_sales
where cogs>total_sales
group by manufacturer
ORDER BY total_loss DESC;