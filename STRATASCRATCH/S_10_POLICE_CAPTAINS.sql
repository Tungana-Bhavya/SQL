## Find the base pay for Police Captains
-------

select employeename, basepay from sf_public_salaries 
where jobtitle='CAPTAIN III (POLICE DEPARTMENT)'
group by employeename,basepay;