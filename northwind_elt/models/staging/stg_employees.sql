with source as (
    select *
    from {{ source('elt_northwind','public_employees') }}
)

select * from source