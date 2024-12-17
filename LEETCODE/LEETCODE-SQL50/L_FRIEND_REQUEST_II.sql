Friend Request II
------
SELECT id, COUNT(*) num FROM
(
    SELECT requester_id id FROM RequestAccepted
    UNION ALL
    SELECT accepter_id id FROM RequestAccepted
) t GROUP BY id
ORDER BY COUNT(*) DESC LIMIT 1;