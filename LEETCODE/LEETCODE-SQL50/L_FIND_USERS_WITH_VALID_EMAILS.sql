FIND USERS WITH VALID EMAILS
------

select user_id,name,mail from Users where mail
REGEXP '^[a-zA-Z][A-Za-z0-9_.-]*@leetcode[.]com$';