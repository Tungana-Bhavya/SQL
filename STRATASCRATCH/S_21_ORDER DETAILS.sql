## Order Details
-------

select order_date, order_details, total_order_Cost, first_name
from orders o
LEFT JOIN customers c ON o.cust_id = c.id
where c.first_name in ('jill', 'eva')
order by c.id;