use hr_analytics;

select count(*) from training_and_development;

 -- check null values -- 

SELECT *
FROM training_and_development
WHERE employee_id IS NULL;

SELECT *
FROM training_and_development
WHERE training_outcome IS NULL;

-- Check Distinct Categories-- 

SELECT DISTINCT training_outcome
FROM training_and_development;


