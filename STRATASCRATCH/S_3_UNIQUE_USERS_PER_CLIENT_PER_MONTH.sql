## Unique Users Per Client Per Month

-------

select distinct(client_id),EXTRACT(month from time_id)as month,count(distinct user_id)as users_num 
from fact_events group by client_id,month;