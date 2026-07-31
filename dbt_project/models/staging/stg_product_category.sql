

{{ config(materialized='view') }}

select
    ProductCategoryID,
    Name,
    ModifiedDate

from {{ source('retail', 'bronze_product_category') }}