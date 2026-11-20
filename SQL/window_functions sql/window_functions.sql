use hr_analytics;

-- Rank Employee within each department--  

SELECT
    emp_id,
    first_name,
    department_type,
    current_employee_rating,
    RANK() OVER (
        PARTITION BY department_type
        ORDER BY current_employee_rating DESC
    ) AS department_rank
FROM employees;

-- Row number by department-- 

select
      emp_id,
      first_name,
      job_function_description,
      department_type,
      row_number() over(
      partition by department_type
      order by current_employee_rating desc
      ) as row_num
      from employees;
      
-- Dense rank employees-- 

select
      emp_id,
      first_name,
      department_type,
      current_employee_rating,
      dense_rank () over (
      partition by department_type
      order by current_employee_rating desc
      ) as dense_rank_num
      from employees;
      
-- Engagement score Quartiles-- 

select
      employee_id,
      engagement_score,
      ntile(4) OVER (
      order by engagement_score desc
      ) as engagement_quartile
      from employee_engagement; 
      
-- Rank training cost-- 

select 
      employee_id,
      training_program_name,
      training_cost,
      rank () over (
      order by training_cost desc )
      as cost_rank
      from training_and_development;
      
-- previous training cost (LAG)-- 
	
    select
    employee_id,
    training_program_name,
    training_cost,
    lag(training_cost) over (
	order by training_cost)
	as previous_cost
	from training_and_development;

-- next training cost (LEAD)--

select
    employee_id,
    training_program_name,
    training_cost,
    lead(training_cost) over (
    order by training_cost) as next_cost
    from training_and_development;

-- highest rated employees company-wide-- 

select
    emp_id,
    first_name,
    current_employee_rating,
    rank() over (
    order by current_employee_rating desc
    ) as company_rank
    from employees;