## S 45 PREMIUM VS FREEMIUM
-------

select df.date, 
sum(case when ad.paying_customer = 'yes' then df.downloads else null end) 
paying_downloads, 
sum(case when ad.paying_customer = 'no' then df.downloads else null end) non_paying_downloads
from ms_user_dimension ud join ms_acc_dimension ad 
on ud.acc_id = ad.acc_id
join ms_download_facts df on df.user_id=ud.user_id
group by df.date having non_paying_downloads > paying_downloads
order by df.date asc;