
    
    

with all_values as (

    select
        romm_type as value_field,
        count(*) as n_records

    from "inttegra_stage"."test"."dim_listings_cleansed"
    group by romm_type

)

select *
from all_values
where value_field not in (
    'Entire home/apt','Private room','Shared room','Hotel room'
)


