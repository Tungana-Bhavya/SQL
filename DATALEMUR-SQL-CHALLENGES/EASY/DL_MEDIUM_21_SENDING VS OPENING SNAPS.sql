SENDING VS OPENING SNAPS
------
with cte as 
(
select age_bucket,
sum(case when activity_type = 'open' 
then time_spent else 0 end) time_spent_opening,
sum(case when activity_type = 'send' 
then time_spent else 0 end) time_spent_sending,
sum(time_spent) total_spent
from activities a inner join age_breakdown b
on a.user_id=b.user_id
where activity_type in ('send','open') group by age_bucket)

select age_bucket,
round((time_spent_opening/total_spent)*100.00,2) open_perc,
round((time_spent_sending/total_spent)*100.00,2) send_perc
from cte;