## Number Of Units Per Nationality
-------

Select nationality, count(distinct unit_id) as apartment_count 
from airbnb_units u join airbnb_hosts h on u.host_id = h.host_id 
where h.age < 30 and u.unit_type = 'Apartment'
group by h.nationality 
order by apartment_count desc;