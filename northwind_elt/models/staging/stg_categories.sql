with source as (
    select *
    from {{ source('elt_northwind','public_categories') }}
)

select * from source