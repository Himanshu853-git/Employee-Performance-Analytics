use hr_analytics;

-- total training records-- 

select count(*) as total_training_records
from training_and_development;

-- training outcome distribution-- 

select training_outcome,
      count(*) as total_records
      from training_and_development
      group by training_outcome
      order by total_records ;
      
-- average training cost-- 

select
	  round(avg(training_cost),2) as avg_training_cost
      from training_and_development;
      
-- average training duration-- 

select
      round(avg(training_duration_days),2) as avg_training_duration
      from training_and_development;