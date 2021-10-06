

  create or replace view `indicium-academy-328121`.`elt_northwind_staging`.`stg_customers`
  OPTIONS()
  as with source as (
    select *
    from `indicium-academy-328121`.`elt_northwind`.`public_customers`
)

select * from source;

