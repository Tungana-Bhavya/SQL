## Highest Cost Orders
-------

select c.first_name, o.order_date, sum(o.total_order_cost) as  total_cost
from customers c join orders o on c.id = o.cust_id
where o.order_date between '2019-02-01' and '2019-05-01'
group by c.first_name, o.order_date
order by total_cost desc
limit 1;