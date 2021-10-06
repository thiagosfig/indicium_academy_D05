

  create or replace view `indicium-academy-328121`.`elt_northwind_staging`.`stg_suppliers`
  OPTIONS()
  as with source as (
    select *
    from `indicium-academy-328121`.`elt_northwind`.`public_suppliers`
)

select * from source;

