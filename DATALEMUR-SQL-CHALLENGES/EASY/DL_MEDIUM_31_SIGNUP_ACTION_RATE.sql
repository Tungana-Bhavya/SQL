SIGNUP ACTION RATE
------

SELECT round(1.0* count(signup_action) / count(*), 2) 
FROM emails e LEFT JOIN texts t ON 
e.email_id = t.email_id 
AND signup_action = 'Confirmed'
