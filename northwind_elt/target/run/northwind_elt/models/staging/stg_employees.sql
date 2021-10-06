

  create or replace view `indicium-academy-328121`.`elt_northwind_staging`.`stg_employees`
  OPTIONS()
  as with source as (
    select *
    from `indicium-academy-328121`.`elt_northwind`.`public_employees`
)

select * from source;

