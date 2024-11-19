## SPAM POSTS
-------
with cte1 as( 
select * from facebook_posts fp natural join facebook_post_views fv
)

select post_date,
    (sum(case 
        when post_keywords like "%spam%" then 1 else 0 end)/count(*)) * 100 spam_share
from cte1
group by post_date