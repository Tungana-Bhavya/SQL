## Find libraries who haven't provided the email address in circulation year 2016 but their notice preference definition is set to email
-------

select home_library_code from library_usage 
where notice_preference_definition='email' AND provided_email_address = false
AND circulation_active_year=2016 limit 4;