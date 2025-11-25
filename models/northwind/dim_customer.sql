with src as (

    select * 
    from {{ source('northwind', 'Customers') }}

)

select
    customerid,
    companyname,
    contactname,
    contacttitle,
    country,
    city,
    region,
    postalcode,
    phone
from src