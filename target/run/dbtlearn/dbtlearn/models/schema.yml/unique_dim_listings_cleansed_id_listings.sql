select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    id_listings as unique_field,
    count(*) as n_records

from "inttegra_stage"."test"."dim_listings_cleansed"
where id_listings is not null
group by id_listings
having count(*) > 1



      
    ) dbt_internal_test