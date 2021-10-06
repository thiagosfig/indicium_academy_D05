
    
    

select
    customer_id as unique_field,
    count(*) as n_records

from `indicium-academy-328121`.`elt_northwind`.`public_customers`
where customer_id is not null
group by customer_id
having count(*) > 1


