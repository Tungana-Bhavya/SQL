## Number of violations
-------

select Extract(year from inspection_date) year, 
count(violation_id) n_inspections from sf_restaurant_health_violations
where business_name = 'Roxanne Cafe'
group by year
order by year asc;