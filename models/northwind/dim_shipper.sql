with src as (

    select *
    from {{ source('northwind', 'Shippers') }}

)

select
    ShipperID as shipperid,
    CompanyName as companyname,
    Phone as phone
from src