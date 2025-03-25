
  create view "inttegra_stage"."test"."src_hosts__dbt_tmp"
    
    
  as (
    WITH raw_hosts AS(
	SELECT *
	FROM 
		test.raw_hosts rh 
)
SELECT
	id AS host_id,
	name AS host_name,
	is_superhost,
	created_at,
	updated_at
FROM
	raw_hosts
  );