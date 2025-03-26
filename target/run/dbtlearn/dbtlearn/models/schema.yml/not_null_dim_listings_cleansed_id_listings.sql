select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id_listings
from "inttegra_stage"."test"."dim_listings_cleansed"
where id_listings is null



      
    ) dbt_internal_test