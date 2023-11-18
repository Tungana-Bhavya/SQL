## Customer Revenue In March
-------

select cust_id, sum(total_order_cost) revenue from orders
where order_date like '%2019-03-__'
group by cust_id
order by revenue desc;
