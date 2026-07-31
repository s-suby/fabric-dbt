

{{ config(materialized='table') }}

select

    ROW_NUMBER() OVER (ORDER BY ProductID) as ProductKey,

    ProductID,
    ProductName,
    ProductNumber,
    CategoryName,
    SubcategoryName,
    Color,
    Size,
    StandardCost,
    ListPrice,
    ProductLine,
    Class,
    Style,
    DaysToManufacture

from {{ ref('int_product_hierarchy') }}