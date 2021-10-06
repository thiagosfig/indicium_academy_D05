with source as (
    select *
    from {{ source('elt_northwind','public_products') }}
)

select * from source