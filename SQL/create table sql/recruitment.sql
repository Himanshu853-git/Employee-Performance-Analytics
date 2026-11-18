use hr_analytics;

-- check null values--  

SELECT *
FROM recruitment
WHERE applicant_id IS NULL;

SELECT *
FROM recruitment
WHERE status IS NULL;

-- Check Duplicates--

SELECT applicant_id, COUNT(*)
FROM recruitment
GROUP BY applicant_id
HAVING COUNT(*) > 1;

-- Check Distinct Categories-- 
SELECT DISTINCT status
FROM recruitment;




