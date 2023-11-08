## Activity Rank
-------

select from_user, 
count(*)as total_emails,
row_number() over(order by count(*) desc,
from_user asc)as ranking
from google_gmail_emails 
group by from_user
order by 'ranking' asc;