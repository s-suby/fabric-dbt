

{{ config(materialized='view') }}

select
    ProductSubcategoryID,
    ProductCategoryID,
    Name,
    ModifiedDate

from {{ source('retail', 'bronze_product_subcategory') }}