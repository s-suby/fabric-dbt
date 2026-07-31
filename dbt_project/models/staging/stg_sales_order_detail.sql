

{{ config(materialized='view') }}

select
    SalesOrderID,
    SalesOrderDetailID,
    OrderQty,
    ProductID,
    UnitPrice,
    UnitPriceDiscount,
    LineTotal,
    ModifiedDate

from {{ source('retail', 'bronze_sales_order_detail') }}