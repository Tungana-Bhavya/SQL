SPOTIFY STREAMING HISTORY
------

WITH history_cte1 AS (
SELECT user_id, song_id, song_plays
FROM songs_history
),

weekly_cte2 AS (
SELECT user_id, song_id, COUNT(*) song_plays
FROM songs_weekly
WHERE listen_time <= '2022-08-04 23:59:59'
GROUP BY user_id, song_id
),

merged_cte3 AS (
SELECT * FROM history_cte1
UNION ALL
SELECT * FROM weekly_cte2
)

SELECT user_id, song_id, SUM(song_plays) song_count
FROM merged_cte3 
GROUP BY user_id, song_id
ORDER BY song_count DESC;
