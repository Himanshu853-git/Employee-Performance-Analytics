use hr_analytics;
select count(*) as survey_records from employee_engagement;

-- average engagement metrics-- 

select
      round(avg(engagement_score),2) as avg_engagement_score,
      round(avg(satisfaction_score),2) as avg_satisfaction_score,
      round(avg(work_life_balance_score),2) as avg_work_life_balance_score
from employee_engagement;

-- engagement score distribution-- 

select engagement_score,
       count(*) as total_employees
       from employee_engagement
       group by engagement_score
       order by engagement_score;
       
       
       