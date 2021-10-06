select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from `indicium-academy-328121`.`elt_northwind`.`public_products`
where product_id is null



      
    ) dbt_internal_test