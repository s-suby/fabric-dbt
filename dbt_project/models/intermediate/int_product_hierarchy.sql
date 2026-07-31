
select
    p.ProductID,
    p.Name as ProductName,
    p.ProductNumber,
    p.Color,
    p.Size,
    p.StandardCost,
    p.ListPrice,
    p.ProductSubcategoryID,
    p.DaysToManufacture,
    p.ProductLine,
    p.Class,
    p.Style,

    sc.Name as SubcategoryName,
    sc.ProductCategoryID,

    c.Name as CategoryName

from {{ ref('stg_product') }} p

left join {{ ref('stg_product_subcategory') }} sc
    on p.ProductSubcategoryID = sc.ProductSubcategoryID

left join {{ ref('stg_product_category') }} c
    on sc.ProductCategoryID = c.ProductCategoryID