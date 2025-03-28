select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      





    with grouped_expression as (
    select
        
        
    
  
( 1=1 and percentile_cont(0.99) within group (order by price) >= 50 and percentile_cont(0.99) within group (order by price) <= 500
)
 as expression


    from "inttegra_stage"."test"."dim_listings_with_hosts"
    

),
validation_errors as (

    select
        *
    from
        grouped_expression
    where
        not(expression = true)

)

select *
from validation_errors






      
    ) dbt_internal_test