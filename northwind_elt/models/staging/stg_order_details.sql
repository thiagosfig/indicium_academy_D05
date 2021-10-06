with source as (
    select *
    from {{ source('elt_northwind','public_order_details') }}
)

select * from source