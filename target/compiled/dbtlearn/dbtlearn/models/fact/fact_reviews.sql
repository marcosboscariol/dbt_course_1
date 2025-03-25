
WITH src_reviews AS (
    SELECT
        *
    FROM
        "inttegra_stage"."test"."src_reviews"
)
SELECT
    *
FROM
    src_reviews
WHERE
    review_txt IS NOT NULL

    AND review_date > (SELECT 
                           MAX(review_date)
                       FROM
                           "inttegra_stage"."test"."fact_reviews"        
    )
