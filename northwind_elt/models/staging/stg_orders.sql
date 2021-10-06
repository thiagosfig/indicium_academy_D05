with source as (
    select *
    from {{ source('elt_northwind','public_orders') }}
)

select * from source