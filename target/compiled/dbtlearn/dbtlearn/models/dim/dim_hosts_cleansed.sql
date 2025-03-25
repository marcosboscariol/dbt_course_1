WITH dim_hosts_cleansed AS(
    SELECT
        *
    FROM
        "inttegra_stage"."test"."src_hosts"
)
SELECT
    host_id,
	CASE 
        WHEN host_name = '' THEN 'Anonymous' 
        ELSE  host_name
    END AS host_name,
	is_superhost,
	created_at,
	updated_at
FROM
    dim_hosts_cleansed