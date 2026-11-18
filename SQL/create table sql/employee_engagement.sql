use hr_analytics;

select count(*) from employee_engagement;

-- check null values-- 

SELECT *
FROM employee_engagement
WHERE employee_id IS NULL;

SELECT *
FROM employee_engagement
WHERE engagement_score IS NULL;

SELECT *
FROM employee_engagement
WHERE satisfaction_score IS NULL;

-- Check Duplicates-- 

SELECT employee_id, COUNT(*)
FROM employee_engagement
GROUP BY employee_id
HAVING COUNT(*) >1;

