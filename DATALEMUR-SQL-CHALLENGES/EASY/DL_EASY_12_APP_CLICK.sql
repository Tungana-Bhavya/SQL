App Click-through Rate (CTR)
------

SELECT app_id,round(100.0 *
count(CASE WHEN event_type='click' then 1 else null end) 
/count(CASE WHEN event_type='impression' then 1 else null end),2) as ctr 
FROM events WHERE timestamp>='01/01/2022' AND
timestamp<'01/01/2023' GROUP BY app_id;