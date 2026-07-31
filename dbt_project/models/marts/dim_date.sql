{{ config(materialized='table') }}

select
    DateKey,
    Date,
    Year,
    Quarter,
    MonthNumber,
    MonthName,
    DayNumber,
    DayName,
    WeekNumber,
    IsWeekend

from dbo.dim_date