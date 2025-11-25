with dates as (
    select 
        dateadd(day, seq4(), '1990-01-01') as date_value
    from table(generator(rowcount => 15000))  -- generate 15k days (~40 years)
)

select
    date_value as date,
    to_varchar(date_value, 'YYYYMMDD')::int as datekey,
    year(date_value) as year,
    month(date_value) as month,
    day(date_value) as day,
    dayofweek(date_value) as weekday
from dates