use hr_analytics;

-- Row Count
SELECT COUNT(*) FROM employees;

-- Null Checks
SELECT *
FROM employees
WHERE emp_id IS NULL;

SELECT *
FROM employees
WHERE performance_score IS NULL;

SELECT *
FROM employees
WHERE current_employee_rating IS NULL;

-- Duplicate Check
SELECT emp_id, COUNT(*)
FROM employees
GROUP BY emp_id
HAVING COUNT(*) > 1;

-- check distinct category-- 

SELECT DISTINCT gender_code
FROM employees;

SELECT DISTINCT employee_status
FROM employees;

SELECT DISTINCT performance_score
FROM employees;
