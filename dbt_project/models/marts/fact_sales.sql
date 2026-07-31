{{ config(materialized='table') }}

select

    dc.CustomerKey,
    dp.ProductKey,
    dd.DateKey as OrderDateKey,

    s.SalesOrderID,
    s.SalesOrderDetailID,

    s.OrderDate,
    s.DueDate,
    s.ShipDate,

    s.OrderQty,
    s.UnitPrice,
    s.UnitPriceDiscount,
    s.LineTotal,

    s.SubTotal,
    s.TaxAmt,
    s.Freight,
    s.TotalDue,

    s.OnlineOrderFlag,
    s.Status

from {{ ref('int_sales') }} s

inner join {{ ref('dim_customer') }} dc
    on s.CustomerID = dc.CustomerID

inner join {{ ref('dim_product') }} dp
    on s.ProductID = dp.ProductID

left join {{ ref('dim_date') }} dd
    on cast(format(cast(s.OrderDate as date),'yyyyMMdd') as int)
       = dd.DateKey