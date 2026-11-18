CREATE DATABASE hr_analytics;
USE hr_analytics;

CREATE TABLE employees (
    emp_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    start_date VARCHAR(20),
    exit_date VARCHAR(20),
    title VARCHAR(100),
    supervisor VARCHAR(100),
    ad_email VARCHAR(150),
    business_unit VARCHAR(100),
    employee_status VARCHAR(50),
    employee_type VARCHAR(50),
    pay_zone VARCHAR(50),
    employee_classification_type VARCHAR(100),
    termination_type VARCHAR(100),
    termination_description VARCHAR(255),
    department_type VARCHAR(100),
    division VARCHAR(100),
    dob VARCHAR(20),
    state VARCHAR(50),
    job_function_description VARCHAR(100),
    gender_code VARCHAR(20),
    location_code INT,
    race_desc VARCHAR(50),
    marital_desc VARCHAR(50),
    performance_score VARCHAR(50),
    current_employee_rating INT
);
