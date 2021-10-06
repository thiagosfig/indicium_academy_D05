

  create or replace view `indicium-academy-328121`.`elt_northwind_staging`.`stg_shippers`
  OPTIONS()
  as with source as (
    select *
    from `indicium-academy-328121`.`elt_northwind`.`public_shippers`
)

select * from source;

