
  create view "inttegra_stage"."test"."src_reviews__dbt_tmp"
    
    
  as (
    WITH raw_reviews AS(
	SELECT *
	FROM
		test.raw_reviews rr 
)
SELECT
	listing_id,
	date AS review_date,
	reviewer_name,
	COMMENTS AS review_txt,
	sentiment AS review_sentiment 
FROM 
	raw_reviews
  );