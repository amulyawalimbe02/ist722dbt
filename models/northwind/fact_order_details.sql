with od as (
    select *
    from {{ source('northwind', 'Order_Details') }}
),

orders as (
    select *
    from {{ source('northwind', 'Orders') }}
)

select
    od.OrderID as orderid,
    od.ProductID as productid,
    od.UnitPrice as unitprice,
    od.Quantity as quantity,
    od.Discount as discount,
    (od.UnitPrice * od.Quantity) * (1 - od.Discount) as total_price,

    orders.CustomerID as customerid,
    orders.EmployeeID as employeeid,
    orders.ShipVia as shipperid,
    orders.OrderDate as orderdate

from od
left join orders
    on od.OrderID = orders.OrderID