with src as (

    select *
    from {{ source('northwind', 'Products') }}

)

select
    ProductID as productid,
    ProductName as productname,
    SupplierID as supplierid,
    CategoryID as categoryid,
    QuantityPerUnit as quantityperunit,
    UnitPrice as unitprice,
    UnitsInStock as unitsinstock,
    UnitsOnOrder as unitsonorder,
    ReorderLevel as reorderlevel,
    Discontinued as discontinued
from src