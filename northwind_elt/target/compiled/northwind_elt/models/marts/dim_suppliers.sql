with
     __dbt__cte__stg_suppliers as (
with source as (
    select *
    from `indicium-academy-328121`.`elt_northwind`.`public_suppliers`
)

select * from source
),selected as (
        select
            supplier_id		
            , country	
            , city	
            , fax	
            , postal_code	
            , homepage		
            , address	
            , region		
            , contact_name	
            , phone	
            , company_name	
            , contact_title

        from __dbt__cte__stg_suppliers
    )
    , transformed as (
        select
            row_number() over (order by supplier_id) as supplier_sk
            , *
            from selected
    )

select * from transformed