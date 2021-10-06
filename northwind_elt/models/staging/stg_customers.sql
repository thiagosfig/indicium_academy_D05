with source as (
    select *
    from {{ source('elt_northwind','public_customers') }}
)

select * from source