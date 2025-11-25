with src as (
    select OrderID, OrderDate
    from {{ source('northwind', 'Orders') }}
)

select
    OrderID as orderid,
    OrderDate as orderdate
from src