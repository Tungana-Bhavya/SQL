PATIENT SUPPORT ANALYSIS
------

-- WITH CTE's

WITH uncategorised_calls_cte AS (
SELECT SUM(CASE WHEN call_category IS NULL 
OR call_category = 'n/a' THEN 1 ELSE 0 END) AS uncategorised_calls,
COUNT(case_id) AS total_calls
FROM callers
)

SELECT Round(100.0 * uncategorised_calls / total_calls,1) AS uncategorised_call_pct
FROM uncategorised_calls_cte


-- WITHOUT CTE's

SELECT ROUND(100.0 * 
SUM(CASE WHEN call_category IS NULL OR call_category = 'n/a' THEN 1 ELSE 0
END)/COUNT(*), 1) AS uncategorised_call_pct
FROM callers;


