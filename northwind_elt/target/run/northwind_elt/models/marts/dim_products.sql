

  create or replace view `indicium-academy-328121`.`elt_northwind_marts`.`dim_products`
  OPTIONS()
  as with
     __dbt__cte__stg_products as (
with source as (
    select *
    from `indicium-academy-328121`.`elt_northwind`.`public_products`
)

select * from source
),selected as (
        select
            product_id
            , supplier_id			
            , category_id
            , product_name	
            , unit_price	
            , quantity_per_unit	
            , units_in_stock	
            , units_on_order	
            , reorder_level
            , discontinued

        from __dbt__cte__stg_products
    )
    , transformed as (
        select
            row_number() over (order by product_id) as product_sk
            , *
            from selected
    )

select * from transformed;

