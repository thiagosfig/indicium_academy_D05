
    
    

select
    employee_id as unique_field,
    count(*) as n_records

from `indicium-academy-328121`.`elt_northwind`.`public_employees`
where employee_id is not null
group by employee_id
having count(*) > 1


