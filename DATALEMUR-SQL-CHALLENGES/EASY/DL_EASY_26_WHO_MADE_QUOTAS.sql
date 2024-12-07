WHO MADE QUOTA
------

SELECT d.employee_id,
CASE WHEN SUM(d.deal_size) > s.quota THEN "yes" ELSE "no" END made_quota
FROM deals d INNER JOIN sales_quotas s 
ON d.employee_id = s.employee_id
GROUP BY d.employee_id, s.quota
ORDER BY d.employee_id;