-- ascending order by default
SELECT
    *
FROM
    data_jobs
ORDER BY
    salary_in_usd;

-- decending order
SELECT
    *
FROM
    data_jobs
ORDER BY
    salary_in_usd DESC;

-- sort by selery_in_usd DESC and employee_residence ascen
SELECT
    *
FROM
    data_jobs
ORDER BY
    salary_in_usd DESC,
    employee_residence ASC;