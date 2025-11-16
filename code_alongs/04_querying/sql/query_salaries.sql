SELECT
    *
FROM
    data_jobs;

-- Schema namespace
SELECT
    *
FROM
    main.data_jobs;

-- fully qualified namn
SELECT
    *
FROM
    data_jobs.main.data_jobs;

-- limit clause choosed how many rows to return
SELECT
    *
FROM
    data_jobs
LIMIT
    5;

-- offset
SELECT
    *
FROM
    data_jobs
OFFSET
    2;

-- good for checking ex. diferent column_name
desc data_jobs;

-- select specified columns
SELECT
    work_year,
    job_title,
    salary_in_usd,
    company_location
FROM
    data_jobs;

--select all columns except those specified in exlude
SELECT
    * EXCLUDE (salary, work_year)
FROM
    data_jobs;

SELECT DISTINCT
    empllyment_type
FROM
    data_jobs;