ELECTION RESULTS
-------

-- fractional vote per candidate = 1 / number of candidates this voter voted for	
-- Numerator = 1 → each voter has exactly 1 vote.
-- Denominator = count of candidates the voter selected → ensures the vote is split equally.


WITH voting_results AS (
SELECT candidate, 
ROUND(1/COUNT(*) OVER (PARTITION BY voter),3) number_of_votes
FROM voting_results
WHERE candidate IS NOT NULL
)
SELECT candidate FROM voting_results
HAVING MAX(number_of_votes)