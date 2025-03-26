select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    SELECT
        *
    FROM
        "inttegra_stage"."test"."dim_listings_cleansed"
    WHERE
        id_listings IS NULL OR
        listing_name IS NULL OR
        room_type IS NULL OR
        minimum_nights IS NULL OR
        host_id IS NULL OR
        price IS NULL OR
        created_at IS NULL OR
        updated_at IS NULL OR
        
    FALSE

      
    ) dbt_internal_test