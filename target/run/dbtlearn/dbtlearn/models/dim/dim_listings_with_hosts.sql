
  
    

  create  table "inttegra_stage"."test"."dim_listings_with_hosts__dbt_tmp"
  
  
    as
  
  (
    WITH l AS (
    SELECT
        *
    FROM
        "inttegra_stage"."test"."dim_listings_cleansed"
),
h AS (
    SELECT
        *
    FROM
        "inttegra_stage"."test"."dim_hosts_cleansed"
)

SELECT
    l.id_listings,
    l.listing_name,
    l.room_type,
    l.minimum_nights,
    l.price,
    l.host_id,
    h.host_name,
    h.is_superhost AS host_is_superhost,
    l.created_at,
    GREATEST(l.updated_at, h.updated_at) AS update_at
FROM
    l
LEFT JOIN
    h ON l.host_Id = h.host_id
  );
  