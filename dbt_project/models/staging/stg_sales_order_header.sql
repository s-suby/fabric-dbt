{{ config(materialized='view') }}

select
    cast(SalesOrderID as int) as SalesOrderID,

    cast(OrderDate as datetime2(6)) as OrderDate,
    cast(DueDate as datetime2(6)) as DueDate,
    cast(ShipDate as datetime2(6)) as ShipDate,

    cast(Status as int) as Status,
    cast(OnlineOrderFlag as bit) as OnlineOrderFlag,

    SalesOrderNumber,

    cast(CustomerID as int) as CustomerID,
    cast(TerritoryID as int) as TerritoryID,
    cast(BillToAddressID as int) as BillToAddressID,
    cast(ShipToAddressID as int) as ShipToAddressID,

    cast(SubTotal as decimal(18,4)) as SubTotal,
    cast(TaxAmt as decimal(18,4)) as TaxAmt,
    cast(Freight as decimal(18,4)) as Freight,
    cast(TotalDue as decimal(18,4)) as TotalDue,

    cast(ModifiedDate as datetime2(6)) as ModifiedDate

from {{ source('retail', 'bronze_sales_order_header') }}