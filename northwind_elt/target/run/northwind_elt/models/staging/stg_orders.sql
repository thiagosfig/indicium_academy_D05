

  create or replace view `indicium-academy-328121`.`elt_northwind_staging`.`stg_orders`
  OPTIONS()
  as with source as (
    select *
    from `indicium-academy-328121`.`elt_northwind`.`public_orders`
)

select * from source;

