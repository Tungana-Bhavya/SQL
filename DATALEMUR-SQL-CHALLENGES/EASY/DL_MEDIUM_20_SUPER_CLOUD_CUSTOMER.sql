SUPER CLOUD CUSTOMER 
------
with cte1 as (
select customer_id, 
count(distinct product_category) product_count
from customer_contracts c inner join products p 
on c.product_id = p.product_id
where product_category in ('Analytics','Containers', 'Compute')
group by customer_id
)

select customer_id from cte1 where 
product_count = (select count(distinct product_category) from products);
