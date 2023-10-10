## Most Lucrative Products
-------

select product_id,
Sum(cost_in_dollars * units_sold) as revenue from online_orders 
where MONTH(date)<=6
group by product_id
order by revenue desc limit 5;