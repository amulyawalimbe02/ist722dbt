with src as (

    select *
    from {{ source('northwind', 'Suppliers') }}

)

select
    SupplierID as supplierid,
    CompanyName as companyname,
    ContactName as contactname,
    ContactTitle as contacttitle,
    Address as address,
    City as city,
    Region as region,
    PostalCode as postalcode,
    Country as country,
    Phone as phone
from src