use hr_analytics;

-- employee and employee engagement join-- 
SELECT
    e.emp_id,
    e.department_type,
    e.performance_score,
    g.engagement_score
FROM employees e
INNER JOIN employee_engagement g
ON e.emp_id = g.employee_id;

-- employee and training join-- 
SELECT
    e.emp_id,
    e.department_type,
    t.training_program_name,
    t.training_outcome
FROM employees e
INNER JOIN training_and_development t
ON e.emp_id = t.employee_id;

-- emloyee - engagement- training join-- 
SELECT
    e.emp_id,
    g.engagement_score,
    t.training_program_name
FROM employees e
INNER JOIN employee_engagement g
    ON e.emp_id = g.employee_id
INNER JOIN training_and_development t
    ON e.emp_id = t.employee_id;
    
    
   