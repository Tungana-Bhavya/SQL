TOP FIVE ARTISTS
------


select artist_name, dense_rank() over(order by count(*) desc) 
artist_rank from artists a 
join songs s
on a.artist_id = s.artist_id join global_song_rank g
on s.song_id = g.song_id
where g.rank <=10
group by a.artist_name
limit 7;
