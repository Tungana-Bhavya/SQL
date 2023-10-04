## Popularity of Hack

-------

select a.location,AVG(b.popularity)as avg_popularity 
from facebook_employees a join facebook_hack_survey b 
on a.id=b.employee_id group by a.location order by b.popularity;