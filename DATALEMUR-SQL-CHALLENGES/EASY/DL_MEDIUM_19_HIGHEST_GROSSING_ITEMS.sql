HIGHEST GROSSING ITEMS 
------

with tmp as (
select category, product, sum(spend) total_spend, 
rank() over(partition by category order by sum(spend) desc) as rk
from product_spend 
where extract(year from transaction_date) = 2022
group by product, category
)
select category, product,total_spend from tmp
where rk<3 order by category,rk;