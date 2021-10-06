with source as (
    select *
    from {{ source('elt_northwind','public_region') }}
)

select * from source