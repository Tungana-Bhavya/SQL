## Count the number of movies that Abigail Breslin nominated for oscar

-------

select count(movie)as n_movies_by_abi from oscar_nominees 
where nominee='Abigail Breslin';