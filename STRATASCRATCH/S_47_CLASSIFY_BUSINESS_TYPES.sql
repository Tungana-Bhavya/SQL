Classify Business Types
-------


SELECT distinct business_name,
CASE WHEN business_name LIKE '%restaurant%' THEN 'restaurant'
     WHEN (business_name LIKE '%cafe%' OR business_name LIKE '%coffee%' OR business_name LIKE '%café%') THEN 'cafe'
     WHEN business_name LIKE '%school%' THEN 'school'
     ELSE 'other' END business_type
FROM sf_restaurant_health_violations;
