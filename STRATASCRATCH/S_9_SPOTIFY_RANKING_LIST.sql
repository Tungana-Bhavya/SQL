## Find how many times each artist appeared on the Spotify ranking list
-------

select artist,count(id)as n_occurences from spotify_worldwide_daily_song_ranking
group by artist
order by n_occurences desc;