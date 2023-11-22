-- New Companies

select c.company_code, c.founder, 
count(distinct e.lead_manager_code) lmc,
count(distinct e.senior_manager_code) smc, 
count(distinct e.manager_code) mc, 
count(distinct e.employee_code) ec 
from company c join employee e
on c.company_code = e.company_code
group by c.company_code, founder
order by c.company_code asc;