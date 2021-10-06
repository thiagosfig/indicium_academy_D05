

  create or replace view `indicium-academy-328121`.`elt_northwind_staging`.`stg_categories`
  OPTIONS()
  as with source as (
    select *
    from `indicium-academy-328121`.`elt_northwind`.`public_categories`
)

select * from source;

