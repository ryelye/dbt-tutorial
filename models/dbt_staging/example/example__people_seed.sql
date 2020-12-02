with people_seed as (
    select * from {{ ref('people_seed') }}
)

select * from people_seed