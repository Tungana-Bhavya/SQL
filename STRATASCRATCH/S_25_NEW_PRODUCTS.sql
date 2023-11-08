## New Products
-------

Select company_name,
count(case when year = 2020 then 1 end) - count(case when year = 2019 then 1 end) 
as total_launch 
from car_launches 
group by company_name;