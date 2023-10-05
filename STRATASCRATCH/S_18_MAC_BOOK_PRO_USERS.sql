## Count the number of user events performed by MacBookPro users
-------

select event_name,COUNT(*)as event_count from playbook_events where device='macbook pro' group by event_name order by event_count desc;