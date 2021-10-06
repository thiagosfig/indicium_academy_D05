select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    shipper_id as unique_field,
    count(*) as n_records

from `indicium-academy-328121`.`elt_northwind`.`public_shippers`
where shipper_id is not null
group by shipper_id
having count(*) > 1



      
    ) dbt_internal_test