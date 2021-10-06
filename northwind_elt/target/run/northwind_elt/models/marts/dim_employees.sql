

  create or replace view `indicium-academy-328121`.`elt_northwind_marts`.`dim_employees`
  OPTIONS()
  as with
     __dbt__cte__stg_employees as (
with source as (
    select *
    from `indicium-academy-328121`.`elt_northwind`.`public_employees`
)

select * from source
),selected as (
        select
            employee_id	
            
            , country
            , city
            , postal_code
            , hire_date
            , extension
            , address
            , cast(birth_date as timestamp) as birth_date
            , region
            , photo_path
            , last_name
            , first_name
            , title
            , title_of_courtesy
            , notes
            , home_phone
            , reports_to	

        from __dbt__cte__stg_employees
    )
    , transformed as (
        select
            row_number() over (order by employee_id) as employee_sk
            , *
            from selected
    )

select * from transformed;

