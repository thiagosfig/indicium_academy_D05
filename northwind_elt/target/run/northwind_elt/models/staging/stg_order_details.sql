

  create or replace view `indicium-academy-328121`.`elt_northwind_staging`.`stg_order_details`
  OPTIONS()
  as with source as (
    select *
    from `indicium-academy-328121`.`elt_northwind`.`public_order_details`
)

select * from source;

