with source as (
    select *
    from {{ source('elt_northwind','public_shippers') }}
)

select * from source