SELECT
    job_title_short AS title,
    job_location AS location,
    job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' AS date,
    EXTRACT(MONTH FROM job_posted_date) AS month_column,
    EXTRACT(YEAR FROM job_posted_date) AS year_column
FROM
    job_postings_fact
LIMIT 5;


SELECT
    COUNT(job_id) AS job_count,
    EXTRACT(MONTH FROM job_posted_date) AS month
FROM
    job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY
    month
ORDER BY
    job_count DESC;


    SELECT
    COUNT(job_id) AS job_count
FROM
    job_postings_fact
WHERE 
    EXTRACT(MONTH FROM job_posted_date) = 1
