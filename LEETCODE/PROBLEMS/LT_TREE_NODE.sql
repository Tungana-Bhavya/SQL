Tree Node

------

SELECT DISTINCT t1.id,
CASE WHEN t1.p_id IS NULL THEN 'Root'
     WHEN t1.p_id IS NOT NULL AND t2.p_id IS NOT NULL
     THEN 'Inner'
     WHEN t1.p_id IS NOT NULL AND t2.p_id IS NULL
     THEN 'Leaf' END Type
FROM Tree t1 LEFT JOIN Tree t2
ON t1.id = t2.p_id;
