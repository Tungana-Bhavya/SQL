## Find the top 10 ranked songs in 2010
-------

select distinct song_name, group_name, year_rank 
from billboard_top_100_year_end
where year = '2010' and year_rank<=10
order by year_rank asc;