
    
    

select
    id_listings as unique_field,
    count(*) as n_records

from "inttegra_stage"."test"."dim_listings_cleansed"
where id_listings is not null
group by id_listings
having count(*) > 1


