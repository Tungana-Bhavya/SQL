## Customer Details
-------

Select 
    first_name, 
    last_name,
    city,
    order_details
From 
    customers
LEFT JOIN orders ON customers.id = orders.cust_id
Order by first_name, order_details;