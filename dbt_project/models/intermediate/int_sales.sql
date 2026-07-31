

{{ config(materialized='view') }}

select
    d.SalesOrderDetailID,
    d.SalesOrderID,

    h.OrderDate,
    h.DueDate,
    h.ShipDate,

    h.CustomerID,
    h.TerritoryID,

    h.BillToAddressID,
    h.ShipToAddressID,

    d.ProductID,

    d.OrderQty,
    d.UnitPrice,
    d.UnitPriceDiscount,
    d.LineTotal,

    h.SubTotal,
    h.TaxAmt,
    h.Freight,
    h.TotalDue,

    h.OnlineOrderFlag,
    h.Status


    from {{ ref('stg_sales_order_detail') }} d
    inner join {{ ref('stg_sales_order_header') }} h
        on d.SalesOrderID = h.SalesOrderID