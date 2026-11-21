use hr_analytics;

-- Which departments have the highest average employee ratings?-- 

select
      department_type,
      round(avg(current_employee_rating),2) as avg_rating
      from employees
      group by department_type
      order by avg_rating desc;
      
-- Which employee status group has the highest average rating?-- 
      
      select
            employee_status,
            round(avg(current_employee_rating),2) as avg_rating
            from employees
            group by employee_status
            order by avg_rating desc;
            
-- Which training outcomes occur most frequently?--      

   select
         training_outcome,
         count(*) as total_records
         from training_and_development
         group by training_outcome
         order by total_records desc;
         
-- What is the average engagement score by department?-- 

select
      e.department_type,
	  round(avg(g.engagement_score),2) as avg_engagement
	  from employees e
      join employee_engagement g
	  on e.emp_id = g.employee_id
      group by e.department_type
      order by avg_engagement desc;
      
-- Do highly rated employees have higher engagement scores?-- 

SELECT
    e.current_employee_rating,
    ROUND(AVG(g.engagement_score),2) AS avg_engagement
    FROM employees e
    JOIN employee_engagement g
	ON e.emp_id = g.employee_id
    GROUP BY e.current_employee_rating
    ORDER BY e.current_employee_rating DESC;
    
-- Which departments participate in the most training programs?--  

SELECT
     e.department_type,
     COUNT(*) AS training_records
     FROM employees e
     JOIN training_and_development t
     ON e.emp_id = t.employee_id
     GROUP BY e.department_type
     ORDER BY training_records DESC;
     
--  Which training programs are most popular?--

  SELECT
    training_program_name,
    COUNT(*) AS participants
    FROM training_and_development
    GROUP BY training_program_name
	ORDER BY participants DESC;   
    
--  Average training cost by training type?--  

  SELECT
    training_type,
    ROUND(AVG(training_cost),2) AS avg_cost
    FROM training_and_development
    GROUP BY training_type
    ORDER BY avg_cost DESC;
    
-- Which recruitment status appears most frequently? -- 

SELECT
    status,
    COUNT(*) AS applicant_count
    FROM recruitment
    GROUP BY status
    ORDER BY applicant_count DESC;
    
-- Average desired salary by education level?-- 

  SELECT
    education_level,
    ROUND(AVG(desired_salary),2) AS avg_salary
    FROM recruitment
	GROUP BY education_level
    ORDER BY avg_salary DESC;