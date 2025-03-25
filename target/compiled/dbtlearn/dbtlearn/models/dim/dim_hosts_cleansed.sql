WITH dim_hosts_cleansed AS(
    SELECT
        *
    FROM
        "inttegra_stage"."test"."src_hosts"
)
SELECT
    review_id,
	CASE 
        WHEN review_name = '' THEN 'Anonymous' 
        ELSE  review_name
    END AS review_name,
	is_superhost,
	created_at,
	updated_at
FROM
    dim_hosts_cleansed