use hr_analytics;


CREATE TABLE recruitment (
    applicant_id INT,
    application_date VARCHAR(20),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(20),
    date_of_birth VARCHAR(20),
    phone_number VARCHAR(100),
    email VARCHAR(150),
    address VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(50),
    zip_code VARCHAR(20),
    country VARCHAR(100),
    education_level VARCHAR(100),
    years_of_experience INT,
    desired_salary DECIMAL(12,2),
    job_title VARCHAR(150),
    status VARCHAR(50)
    );