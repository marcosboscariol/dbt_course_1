WITH raw_reviews AS(
	SELECT 
		*
	FROM
		"inttegra_stage"."test"."raw_reviews" rr 
)
SELECT
	listing_id,
	date AS review_date,
	reviewer_name,
	COMMENTS AS review_txt,
	sentiment AS review_sentiment 
FROM 
	raw_reviews