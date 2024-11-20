## APPLE PRODUCTS
-------
select 
u.language, 
count(distinct case when e.device in 
('iphone 5s','macbook pro','ipad air') 
then u.user_id else null end) n_apple_user, 
count(distinct u.user_id) n_total_users 
from playbook_events e join playbook_users u
on e.user_id = u.user_id
group by u.language;