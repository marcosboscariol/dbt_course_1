WITH raw_hosts AS(
	SELECT *
	FROM 
		test.raw_hosts rh 
)
SELECT
	id AS review_id,
	name AS review_name,
	is_superhost,
	created_at,
	updated_at
FROM
	raw_hosts