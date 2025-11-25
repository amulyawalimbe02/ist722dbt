with src as (

    select *
    from {{ source('northwind', 'Categories') }}

)

select
    CategoryID as categoryid,
    CategoryName as categoryname,
    Description as description
from src