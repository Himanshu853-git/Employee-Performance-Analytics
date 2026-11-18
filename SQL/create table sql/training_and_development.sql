
use hr_analytics;

CREATE TABLE training_and_development (
    employee_id INT,
    training_date VARCHAR(20),
    training_program_name VARCHAR(100),
    training_type VARCHAR(50),
    training_outcome VARCHAR(50),
    location VARCHAR(100),
    trainer VARCHAR(100),
    training_duration_days INT,
    training_cost DECIMAL(10,2)
);