use hr_analytics;
-- Total Employees

SELECT COUNT(*) AS total_employees
FROM employees;

-- Gender Distribution

SELECT
    gender_code,
    COUNT(*) AS employee_count
FROM employees
GROUP BY gender_code
ORDER BY employee_count DESC;

-- Employee Status Distribution

SELECT
    employee_status,
    COUNT(*) AS employee_count
FROM employees
GROUP BY employee_status
ORDER BY employee_count DESC;

-- Department Distribution

SELECT
    department_type,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department_type
ORDER BY employee_count DESC;

-- Division Distribution

SELECT
    division,
    COUNT(*) AS employee_count
FROM employees
GROUP BY division
ORDER BY employee_count DESC;

-- Performance Score Distribution

SELECT
    performance_score,
    COUNT(*) AS employee_count
FROM employees
GROUP BY performance_score
ORDER BY employee_count DESC;
