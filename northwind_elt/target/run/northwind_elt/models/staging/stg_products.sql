

  create or replace view `indicium-academy-328121`.`elt_northwind_staging`.`stg_products`
  OPTIONS()
  as with source as (
    select *
    from `indicium-academy-328121`.`elt_northwind`.`public_products`
)

select * from source;

