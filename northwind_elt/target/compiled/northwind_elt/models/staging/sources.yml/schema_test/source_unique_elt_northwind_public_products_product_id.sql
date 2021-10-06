
    
    

select
    product_id as unique_field,
    count(*) as n_records

from `indicium-academy-328121`.`elt_northwind`.`public_products`
where product_id is not null
group by product_id
having count(*) > 1


