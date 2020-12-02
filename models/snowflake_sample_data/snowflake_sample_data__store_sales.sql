-- Creating a table from a source (a source is pointing to a database/table)
-- SQL compiled in target
with source_store_sales as (
    SELECT * FROM {{ source('snowflake_sample_data', 'store_sales') }}
), 

final as (
    select * from source_store_sales
)
select * from final