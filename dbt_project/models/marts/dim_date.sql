{{ config(materialized='table') }}

select
    DateKey,
    Date,

    -- Year
    Year,

    -- Quarter
    Quarter,

    -- Month
    MonthNumber,
    MonthName,

    -- Month abbreviation (Jan, Feb, Mar...)
    left(MonthName, 3) as MonthShort,

    -- Month-Year (Jan 2011)
    concat(left(MonthName, 3), ' ', cast(Year as varchar(4))) as MonthYear,

    -- Quarter-Year (Q1 2011)
    concat('Q', Quarter, ' ', cast(Year as varchar(4))) as QuarterYear,

    -- Sort key (201101, 201102...)
    (Year * 100) + MonthNumber as YearMonthKey,

    -- Day
    DayNumber,
    DayName,

    -- Week
    WeekNumber,

    -- Weekend flag
    IsWeekend

from dbo.dim_date