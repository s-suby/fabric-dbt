
{{ config(materialized='view') }}

select
    CustomerID,
    PersonID,
    StoreID,
    TerritoryID,
    AccountNumber,
    ModifiedDate

from {{ source('retail', 'bronze_customer') }}
