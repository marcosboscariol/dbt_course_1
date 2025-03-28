WITH raw_listings AS (
	SELECT 
        *
	FROM   
		{{ source('airbnb', 'listings') }}
)
SELECT 
	id AS id_listings,
    name AS listing_name,
    listing_url,
    room_type,
    minimum_nights,
    host_id,
    price AS price_str,
    created_at,
    updated_at
FROM
	raw_listings
