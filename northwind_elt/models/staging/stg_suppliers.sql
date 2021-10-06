with source as (
    select *
    from {{ source('elt_northwind','public_suppliers') }}
)

select * from source