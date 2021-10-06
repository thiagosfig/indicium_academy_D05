

  create or replace view `indicium-academy-328121`.`elt_northwind_marts`.`dim_customers`
  OPTIONS()
  as with
     __dbt__cte__stg_customers as (
with source as (
    select *
    from `indicium-academy-328121`.`elt_northwind`.`public_customers`
)

select * from source
),selected as (
        select
            customer_id	
            , country	
            , city	
            , fax	
            , postal_code	
            , address	
            , region	
            , contact_name	
            , phone	
            , company_name	
            , contact_title		

        from __dbt__cte__stg_customers
    )
    , transformed as (
        select
            row_number() over (order by customer_id) as customer_sk
            , *
            from selected
    )

select * from transformed;

