# Introduction
📊This project dives into the data job market, focusing on analyst roles, explores top paying roles and in-demand skills and where high demand meets high salary in data analysis

SQL queries? check them out here: [sql project folder](/project_sql/)
# Background

# Tools I used
- **SQL**
- **PostgresSQL**
- **isual Studio Code**
- **Git & Github**

# The Analysis
Each query for this project is aimed at investigating specific aspects of the data job market. Here's how I approach each question

### 1. Top Paying Data Analyst Roles
To identify the highest paying roles, filtered data analyst positions by average yearly salary and location, focusing on remote jobs. This query highlights the high paying opportunity in the field

```sql
SELECT 
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 10
```
Here's a breakdown of the top data analyst jobs in 2023:
-**Wide Salary Range** Top paying data analyst roles span ferom $180,000 indicating significant salary potential in the field.
-**Diverse Employers** Companies like SmartAsset, Meta, and AT&T are among those offering high salaries, showing a broad interest across different industries
-**Job Title Variety**






# What I learned

# Conclusions