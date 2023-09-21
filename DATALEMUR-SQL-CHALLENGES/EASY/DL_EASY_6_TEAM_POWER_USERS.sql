Teams Power Users

------

SELECT sender_id,count(message_id) as message_count 
FROM messages where extract(MONTH from sent_date)='8'
AND extract(YEAR from sent_date)='2022' 
group by sender_id order by message_count desc limit 2;