with src as (

    select *
    from {{ source('northwind', 'Employees') }}

)

select
    EmployeeID as employeeid,
    FirstName as firstname,
    LastName as lastname,
    Title as title,
    BirthDate as birthdate,
    HireDate as hiredate,
    Address as address,
    City as city,
    Region as region,
    PostalCode as postalcode,
    Country as country,
    HomePhone as homephone
from src