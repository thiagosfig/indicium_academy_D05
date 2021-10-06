
    
    

select
    supplier_id as unique_field,
    count(*) as n_records

from `indicium-academy-328121`.`elt_northwind`.`public_suppliers`
where supplier_id is not null
group by supplier_id
having count(*) > 1


