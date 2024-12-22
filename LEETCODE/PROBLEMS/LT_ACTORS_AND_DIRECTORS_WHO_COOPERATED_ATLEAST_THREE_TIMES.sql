Actor and Director who Cooperated atleast Three Times

------
SELECT actor_id, director_id FROM ActorDirector
GROUP BY actor_id, director_id
HAVING COUNT(*)>=3;
