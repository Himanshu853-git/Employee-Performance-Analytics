use hr_analytics;

-- total applicants-- 

select count(*) as applicant_count
from recruitment;

-- Recruitment Status Distribution

select
    status,
    count(*) as applicant_count
	from recruitment
    group by status
    order by applicant_count;
    
-- education level distribution-- 

select  
      education_level,
      count(*) as applicant_count
      from recruitment
      group by education_level
      order by applicant_count desc;
      
-- average experience-- 

select
round(avg(years_of_experience),2) as avg_year_experience
from recruitment;

-- average desired salary-- 

select
round(avg(desired_salary),2) as avg_desired_salary
from recruitment;