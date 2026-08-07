{{ config(materialized='view') }}

select
    cast(SalesOrderID as int) as SalesOrderID,
    cast(SalesOrderDetailID as int) as SalesOrderDetailID,
    cast(OrderQty as int) as OrderQty,
    cast(ProductID as int) as ProductID,

    cast(UnitPrice as decimal(18,4)) as UnitPrice,
    cast(UnitPriceDiscount as decimal(18,4)) as UnitPriceDiscount,
    cast(LineTotal as decimal(18,4)) as LineTotal,

    cast(ModifiedDate as datetime2) as ModifiedDate

from {{ source('retail', 'bronze_sales_order_detail') }}