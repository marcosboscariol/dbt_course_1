{{ 
    config(
        materialized = 'table',
    )
 }}

WITH fact_reviews AS (
    SELECT
        *
    FROM
        {{ ref('fact_reviews') }}
),
full_moon_dates AS (
    SELECT
        *
    FROM
        {{ ref('seed_full_moon_dates') }}
)

SELECT
    r.*,
    CASE 
        WHEN fm.full_moon_date IS NULL THEN 'not full moon'  
        ELSE 'full moon'
    END AS is_full_moon
FROM
    fact_reviews r
LEFT JOIN
    full_moon_dates fm ON r.review_date = fm.full_moon_date + INTERVAL '1 day'