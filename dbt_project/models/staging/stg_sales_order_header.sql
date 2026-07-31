

{{ config(materialized='view') }}

select
    SalesOrderID,
    OrderDate,
    DueDate,
    ShipDate,
    Status,
    OnlineOrderFlag,
    SalesOrderNumber,
    CustomerID,
    TerritoryID,
    BillToAddressID,
    ShipToAddressID,
    SubTotal,
    TaxAmt,
    Freight,
    TotalDue,
    ModifiedDate

from {{ source('retail', 'bronze_sales_order_header') }}