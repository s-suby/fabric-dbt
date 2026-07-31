
{{ config(materialized='view') }}

select
    AddressID,
    AddressLine1,
    AddressLine2,
    City,
    StateProvinceID,
    PostalCode,
    ModifiedDate

from {{ source('retail', 'bronze_address') }}