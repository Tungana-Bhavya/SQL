SWAPPED FOOD DELIVERY
------

----- SOLUTION 1 : USING CASE,LEAD AND LAD -----
select order_id corrected_order_id,
coalesce(case when order_id % 2 != 0 
then lead(item) over(order by order_id)
when order_id % 2 = 0 
then lag(item) over(order by order_id)
end,item) item from orders

------ SOLUTION 2 : USING LAG, LEAD AND CTE -------
with cte as (
select *, lag(item,1) over(order by order_id) lag_value,
lead(item,1) over(order by order_id) lead_value
from orders)

select order_id, coalesce(case when order_id%2=0 then lag_value
when order_id%2 != 0 then lead_value end, item) item from cte


------ SOLUTION 3 : USING CTE AND CASE STATEMENT -------

with tmp as (
select count(order_id) total_orders from orders)

select case when order_id % 2 != 0 and 
order_id != total_orders then order_id + 1 
when order_id % 2 != 0 and 
order_id = total_orders then order_id
else order_id - 1 end as corrected_order_id, 
item from orders cross join tmp order by corrected_order_id;
