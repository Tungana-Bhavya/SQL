### DATA SCIENCE SKILLS

SELECT CANDIDATE_ID FROM CANDIDATES 
WHERE SKILL IN('Python','Tableau','Postgresql') 
GROUP BY CANDIDATE_ID 
HAVING COUNT(SKILL)=3 
ORDER BY CANDIDATE_ID;
