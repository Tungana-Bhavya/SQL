product Sales Analysis III
------

select product_id, year first_year, quantity, price
from sales where (product_id, year) in (
    select product_id,MIN(year) first_year from sales
    group by product_id
);