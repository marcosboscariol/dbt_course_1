select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      




    with grouped_expression as (
    select
        
        
    
  


    

coalesce(array_length((select regexp_matches(price, '^\$\d{1,3}\.\d{2}$', '')), 1), 0)


 > 0
 as expression


    from "inttegra_stage"."test"."raw_listings"
    

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