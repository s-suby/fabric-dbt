

{{ config(materialized='table') }}

select

    ROW_NUMBER() OVER (ORDER BY CustomerID) as CustomerKey,

    CustomerID,
    PersonID,
    StoreID,
    TerritoryID,
    AccountNumber

from {{ ref('stg_customer') }}