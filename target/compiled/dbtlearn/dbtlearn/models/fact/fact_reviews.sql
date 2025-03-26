
WITH src_reviews AS (
    SELECT
        *
    FROM
        "inttegra_stage"."test"."src_reviews"
)
SELECT
    md5(cast(coalesce(cast(listing_id as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(review_date as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(reviewer_name as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(review_txt as TEXT), '_dbt_utils_surrogate_key_null_') as TEXT)) as review_id,
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
