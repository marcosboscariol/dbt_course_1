
  
    

  create  table "inttegra_stage"."test"."dim_listings_cleansed__dbt_tmp"
  
  
    as
  
  (
    WITH src_listings AS (
    SELECT 
        *
    FROM
        "inttegra_stage"."test"."src_listings"
)

SELECT
    id_listings,
    listing_name,
    room_type,
    CASE 
        WHEN  minimum_nights = 0 THEN  1
        ELSE  minimum_nights
    END AS minimum_nights,
    host_id,
    CAST(REPLACE(price_str, '$', '') AS NUMERIC(10,2)) AS price,
    created_at,
    updated_at
FROM
    src_listings
  );
  